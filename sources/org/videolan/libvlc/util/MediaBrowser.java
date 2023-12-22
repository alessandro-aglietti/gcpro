package org.videolan.libvlc.util;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.MainThread;
import java.util.ArrayList;
import java.util.Iterator;
import org.videolan.libvlc.FactoryManager;
import org.videolan.libvlc.MediaDiscoverer;
import org.videolan.libvlc.MediaList;
import org.videolan.libvlc.interfaces.ILibVLC;
import org.videolan.libvlc.interfaces.IMedia;
import org.videolan.libvlc.interfaces.IMediaFactory;
import org.videolan.libvlc.interfaces.IMediaList;
/* loaded from: classes.dex */
public class MediaBrowser {
    private static final String IGNORE_LIST_OPTION = ":ignore-filetypes=";
    private static final String TAG = "MediaBrowser";
    private boolean mAlive;
    private IMediaList mBrowserMediaList;
    private final IMediaList.EventListener mBrowserMediaListEventListener;
    private final ArrayList<IMedia> mDiscovererMediaArray;
    private final IMediaList.EventListener mDiscovererMediaListEventListener;
    private EventListener mEventListener;
    private IMediaFactory mFactory;
    private Handler mHandler;
    private final ILibVLC mILibVlc;
    private String mIgnoreList;
    private IMedia mMedia;
    private final ArrayList<MediaDiscoverer> mMediaDiscoverers;

    /* loaded from: classes.dex */
    public interface EventListener {
        void onBrowseEnd();

        void onMediaAdded(int i, IMedia iMedia);

        void onMediaRemoved(int i, IMedia iMedia);
    }

    /* loaded from: classes.dex */
    public static class Flag {
        public static final int Interact = 1;
        public static final int NoSlavesAutodetect = 2;
        public static final int ShowHiddenFiles = 4;
    }

    public MediaBrowser(ILibVLC iLibVLC, EventListener eventListener) {
        this.mMediaDiscoverers = new ArrayList<>();
        this.mDiscovererMediaArray = new ArrayList<>();
        this.mIgnoreList = "db,nfo,ini,jpg,jpeg,ljpg,gif,png,pgm,pgmyuv,pbm,pam,tga,bmp,pnm,xpm,xcf,pcx,tif,tiff,lbm,sfv,txt,sub,idx,srt,ssa,ass,smi,utf,utf-8,rt,aqt,txt,usf,jss,cdg,psb,mpsub,mpl2,pjs,dks,stl,vtt,ttml";
        this.mBrowserMediaListEventListener = new IMediaList.EventListener() { // from class: org.videolan.libvlc.util.MediaBrowser.1
            @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
            public void onEvent(IMediaList.Event event) {
                if (MediaBrowser.this.mEventListener == null) {
                    return;
                }
                int i = event.type;
                if (i == 512) {
                    MediaBrowser.this.mEventListener.onMediaAdded(event.index, event.media);
                } else if (i == 514) {
                    MediaBrowser.this.mEventListener.onMediaRemoved(event.index, event.media);
                } else if (i != 516) {
                } else {
                    MediaBrowser.this.mEventListener.onBrowseEnd();
                }
            }
        };
        this.mDiscovererMediaListEventListener = new IMediaList.EventListener() { // from class: org.videolan.libvlc.util.MediaBrowser.2
            @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
            public void onEvent(IMediaList.Event event) {
                if (MediaBrowser.this.mEventListener == null) {
                    return;
                }
                int i = event.type;
                if (i == 512) {
                    MediaBrowser.this.mDiscovererMediaArray.add(event.media);
                    MediaBrowser.this.mEventListener.onMediaAdded(-1, event.media);
                } else if (i != 514) {
                    if (i != 516) {
                        return;
                    }
                    MediaBrowser.this.mEventListener.onBrowseEnd();
                } else {
                    int indexOf = MediaBrowser.this.mDiscovererMediaArray.indexOf(event.media);
                    if (indexOf != -1) {
                        MediaBrowser.this.mDiscovererMediaArray.remove(indexOf);
                    }
                    if (indexOf != -1) {
                        MediaBrowser.this.mEventListener.onMediaRemoved(indexOf, event.media);
                    }
                }
            }
        };
        this.mFactory = (IMediaFactory) FactoryManager.getFactory(IMediaFactory.factoryId);
        this.mILibVlc = iLibVLC;
        this.mILibVlc.retain();
        this.mEventListener = eventListener;
        this.mAlive = true;
    }

    public MediaBrowser(ILibVLC iLibVLC, EventListener eventListener, Handler handler) {
        this(iLibVLC, eventListener);
        this.mHandler = handler;
    }

    private void reset() {
        Iterator<MediaDiscoverer> it = this.mMediaDiscoverers.iterator();
        while (it.hasNext()) {
            it.next().release();
        }
        this.mMediaDiscoverers.clear();
        this.mDiscovererMediaArray.clear();
        if (this.mMedia != null) {
            this.mMedia.release();
            this.mMedia = null;
        }
        if (this.mBrowserMediaList != null) {
            this.mBrowserMediaList.release();
            this.mBrowserMediaList = null;
        }
    }

    @MainThread
    public void release() {
        reset();
        if (!this.mAlive) {
            throw new IllegalStateException("MediaBrowser released more than one time");
        }
        this.mILibVlc.release();
        this.mAlive = false;
    }

    @MainThread
    public void changeEventListener(EventListener eventListener) {
        reset();
        this.mEventListener = eventListener;
    }

    private void startMediaDiscoverer(String str) {
        MediaDiscoverer mediaDiscoverer = new MediaDiscoverer(this.mILibVlc, str);
        this.mMediaDiscoverers.add(mediaDiscoverer);
        MediaList mediaList = mediaDiscoverer.getMediaList();
        mediaList.setEventListener(this.mDiscovererMediaListEventListener, this.mHandler);
        mediaList.release();
        mediaDiscoverer.start();
    }

    @MainThread
    public void discoverNetworkShares() {
        reset();
        MediaDiscoverer.Description[] list = MediaDiscoverer.list(this.mILibVlc, 1);
        if (list == null) {
            return;
        }
        for (MediaDiscoverer.Description description : list) {
            Log.i(TAG, "starting " + description.name + " discover (" + description.longName + ")");
            startMediaDiscoverer(description.name);
        }
    }

    @MainThread
    public void discoverNetworkShares(String str) {
        reset();
        startMediaDiscoverer(str);
    }

    @MainThread
    public void browse(String str, int i) {
        IMedia fromLocalPath = this.mFactory.getFromLocalPath(this.mILibVlc, str);
        browse(fromLocalPath, i);
        fromLocalPath.release();
    }

    @MainThread
    public void browse(Uri uri, int i) {
        IMedia fromUri = this.mFactory.getFromUri(this.mILibVlc, uri);
        browse(fromUri, i);
        fromUri.release();
    }

    @MainThread
    public void browse(IMedia iMedia, int i) {
        iMedia.retain();
        iMedia.addOption(IGNORE_LIST_OPTION + this.mIgnoreList);
        if ((i & 2) != 0) {
            iMedia.addOption(":no-sub-autodetect-file");
        }
        if ((i & 4) != 0) {
            iMedia.addOption(":show-hiddenfiles");
        }
        int i2 = (i & 1) != 0 ? 9 : 1;
        reset();
        this.mBrowserMediaList = iMedia.subItems();
        this.mBrowserMediaList.setEventListener(this.mBrowserMediaListEventListener, this.mHandler);
        iMedia.parseAsync(i2, 0);
        this.mMedia = iMedia;
    }

    @MainThread
    public int getMediaCount() {
        return this.mBrowserMediaList != null ? this.mBrowserMediaList.getCount() : this.mDiscovererMediaArray.size();
    }

    @MainThread
    public IMedia getMediaAt(int i) {
        if (i < 0 || i >= getMediaCount()) {
            throw new IndexOutOfBoundsException();
        }
        IMedia mediaAt = this.mBrowserMediaList != null ? this.mBrowserMediaList.getMediaAt(i) : this.mDiscovererMediaArray.get(i);
        mediaAt.retain();
        return mediaAt;
    }

    @MainThread
    public void setIgnoreFileTypes(String str) {
        this.mIgnoreList = str;
    }
}
