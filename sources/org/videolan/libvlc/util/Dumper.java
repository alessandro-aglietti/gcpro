package org.videolan.libvlc.util;

import android.net.Uri;
import androidx.annotation.MainThread;
import java.util.ArrayList;
import org.videolan.libvlc.LibVLC;
import org.videolan.libvlc.Media;
import org.videolan.libvlc.MediaPlayer;
import org.videolan.libvlc.interfaces.ILibVLC;
/* loaded from: classes.dex */
public class Dumper {
    private final ILibVLC mILibVLC;
    private final Listener mListener;
    private final MediaPlayer mMediaPlayer;

    /* loaded from: classes.dex */
    public interface Listener {
        void onFinish(boolean z);

        void onProgress(float f);
    }

    @MainThread
    public Dumper(Uri uri, String str, Listener listener) {
        if (uri == null || str == null || listener == null) {
            throw new IllegalArgumentException("arguments shouldn't be null");
        }
        this.mListener = listener;
        ArrayList arrayList = new ArrayList(8);
        arrayList.add("--demux");
        arrayList.add("dump2,none");
        arrayList.add("--demuxdump-file");
        arrayList.add(str);
        arrayList.add("--no-video");
        arrayList.add("--no-audio");
        arrayList.add("--no-spu");
        arrayList.add("-vv");
        this.mILibVLC = new LibVLC(null, arrayList);
        Media media = new Media(this.mILibVLC, uri);
        this.mMediaPlayer = new MediaPlayer(media);
        this.mMediaPlayer.setEventListener(new MediaPlayer.EventListener() { // from class: org.videolan.libvlc.util.Dumper.1
            @Override // org.videolan.libvlc.interfaces.AbstractVLCEvent.Listener
            public void onEvent(MediaPlayer.Event event) {
                int i = event.type;
                if (i != 259) {
                    switch (i) {
                        case MediaPlayer.Event.EndReached /* 265 */:
                        case MediaPlayer.Event.EncounteredError /* 266 */:
                            Dumper.this.mListener.onFinish(event.type == 265);
                            Dumper.this.cancel();
                            return;
                        default:
                            return;
                    }
                }
                Dumper.this.mListener.onProgress(event.getBuffering());
            }
        });
        media.release();
    }

    @MainThread
    public void start() {
        this.mMediaPlayer.play();
    }

    @MainThread
    public void cancel() {
        this.mMediaPlayer.stop();
        this.mMediaPlayer.release();
        this.mILibVLC.release();
    }
}
