package com.ocean.playback;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.internal.view.SupportMenu;
import androidx.fragment.app.Fragment;
import com.liulishuo.filedownloader.BaseDownloadTask;
import com.liulishuo.filedownloader.FileDownloadLargeFileListener;
import com.liulishuo.filedownloader.FileDownloadQueueSet;
import com.liulishuo.filedownloader.FileDownloader;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.listener.ImageLoadingListener;
import com.ocean.cmdrequest.CameraRequest;
import com.ocean.gamecamerapro2.MyApplication;
import com.ocean.gamecamerapro2.R;
import com.ocean.obj.CameraFile;
import com.ocean.widget.AlertDialog;
import com.ocean.widget.CircleProgressView;
import com.ocean.widget.RotateLoading;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class DeviceFragment extends Fragment {
    private static final String BUNDLE_TITLE = "title";
    private static final int MAIN_NOTIFY_ADAPTER = 65537;
    private static final int MAIN_UPDATA_ITEM = 65538;
    private static final int MAIN_UPDATA_PICK_MARK = 65539;
    private static final String TAG = "[DeviceFragment]:";
    private static final int WORK_DELETE_PICK_FILE = 65537;
    private static boolean isDebugLog = false;
    private RotateLoading ablum_loading;
    private CameraRequest cameraRequest;
    private AlertDialog dlgDelete;
    private FileDownloadLargeFileListener downloadListener;
    public FileDownloadQueueSet downloadQueueSet;
    public List<BaseDownloadTask> downloadTask;
    private ImageLoader imageLoader;
    private TextView lab_loading;
    private GridView mGridView;
    public FragmentGridAdapter myGridAdapter;
    private MyMainHandler myMainHandler;
    private MyWorkHandler myWorkHandler;
    private ReflashListListener reflashListener;
    private BaseDownloadTask.FinishListener taskFinishListener;
    private HandlerThread wThread;
    public boolean isDownLoading = false;
    private boolean isUpdateThumb = false;
    private boolean isStopScrolling = true;
    public String sdPath = MyApplication._instance.strDownloadPath;
    public ArrayList<CameraFile> fileList = null;
    private boolean isSelectAll = false;
    public ArrayList<Integer> pickedList = new ArrayList<>();
    private OnScrollStopListener stopListener = null;
    private int nStartPosVisable = 0;
    private int nEndPosVisable = 0;
    private OnCamDeleteFileListener deleteListener = null;
    private OnCamDownloadFileListener downloadFileListener = null;
    private OnCamFilePlayListener filePlayListener = null;

    /* loaded from: classes.dex */
    public interface OnCamDeleteFileListener {
        void camDidDeleteAllSucc();

        void camDidDeleteFileSucc(int i);
    }

    /* loaded from: classes.dex */
    public interface OnCamDownloadFileListener {
        void camDidDownloadError();

        void camDidDownloadFileSucc(CameraFile cameraFile);

        void camDidDownloadFinished();
    }

    /* loaded from: classes.dex */
    public interface OnCamFilePlayListener {
        void camDidFilePlaySucc(int i);
    }

    /* loaded from: classes.dex */
    public interface OnScrollStopListener {
        void didStopScrolling(boolean z);
    }

    /* loaded from: classes.dex */
    public interface ReflashListListener {
        void Reflash();
    }

    public void doPlayClick() {
    }

    public void scroll2Top() {
    }

    public static DeviceFragment newInstance(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(BUNDLE_TITLE, str);
        DeviceFragment deviceFragment = new DeviceFragment();
        deviceFragment.setArguments(bundle);
        return deviceFragment;
    }

    public void setAlbumData(ArrayList<CameraFile> arrayList) {
        if (isDebugLog) {
            Log.e(TAG, "setAlbumData() - file size: " + arrayList.size());
        }
        if (!this.isDownLoading) {
            this.pickedList.clear();
            this.isSelectAll = false;
        }
        this.fileList = arrayList;
        MyApplication._instance.fileList = arrayList;
        try {
            if (this.myGridAdapter != null) {
                this.myGridAdapter.notifyDataSetChanged();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (this.ablum_loading == null || !this.ablum_loading.isStart()) {
            return;
        }
        this.ablum_loading.stop();
        this.lab_loading.setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.imageLoader = ImageLoader.getInstance();
        this.myMainHandler = new MyMainHandler(this);
        this.wThread = new HandlerThread("devicefragment");
        this.wThread.start();
        this.myWorkHandler = new MyWorkHandler(this.wThread.getLooper(), this);
        initCameraRequest();
        createDialog();
        this.downloadListener = new FileDownloadLargeFileListener() { // from class: com.ocean.playback.DeviceFragment.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadLargeFileListener
            public void paused(BaseDownloadTask baseDownloadTask, long j, long j2) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadListener
            public void warn(BaseDownloadTask baseDownloadTask) {
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadLargeFileListener
            public void pending(BaseDownloadTask baseDownloadTask, long j, long j2) {
                DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadLargeFileListener
            public void progress(BaseDownloadTask baseDownloadTask, long j, long j2) {
                int i = (int) ((((float) j) / ((float) j2)) * 100.0f);
                ((CameraFile) baseDownloadTask.getTag()).setDownloadProgress(i);
                if (DeviceFragment.this.isDownLoading) {
                    DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), i);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadListener
            public void completed(BaseDownloadTask baseDownloadTask) {
                if (DeviceFragment.isDebugLog) {
                    Log.e(DeviceFragment.TAG, "downloadListener() - completed - " + baseDownloadTask.getFilename() + ":" + baseDownloadTask.getLargeFileSoFarBytes() + " : " + baseDownloadTask.getLargeFileTotalBytes());
                }
                if (DeviceFragment.this.isDownLoading) {
                    if (baseDownloadTask.getLargeFileSoFarBytes() == baseDownloadTask.getLargeFileTotalBytes()) {
                        if (DeviceFragment.isDebugLog) {
                            Log.e(DeviceFragment.TAG, "downloadListener() - download finish");
                        }
                        ((CameraFile) baseDownloadTask.getTag()).setDownloadProgress(100);
                        DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), 100);
                        Integer num = new Integer(DeviceFragment.this.fileList.indexOf((CameraFile) baseDownloadTask.getTag()));
                        if (num.intValue() != -1) {
                            DeviceFragment.this.pickedList.remove(num);
                        }
                        if (DeviceFragment.this.downloadTask.contains(baseDownloadTask)) {
                            DeviceFragment.this.downloadTask.remove(baseDownloadTask);
                        }
                        if (DeviceFragment.this.downloadFileListener != null) {
                            DeviceFragment.this.downloadFileListener.camDidDownloadFileSucc((CameraFile) baseDownloadTask.getTag());
                        }
                    } else {
                        if (DeviceFragment.isDebugLog) {
                            Log.e(DeviceFragment.TAG, "downloadListener() - download error");
                        }
                        DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), true);
                    }
                }
                if (DeviceFragment.isDebugLog) {
                    Log.e(DeviceFragment.TAG, "downloadListener() -  check task.");
                }
                for (BaseDownloadTask baseDownloadTask2 : DeviceFragment.this.downloadTask) {
                    if (DeviceFragment.isDebugLog) {
                        Log.e(DeviceFragment.TAG, "downloadListener() - " + baseDownloadTask2.getFilename() + " : " + ((int) baseDownloadTask2.getStatus()));
                    }
                    if (baseDownloadTask2.getStatus() >= 0) {
                        DeviceFragment.this.isDownLoading = true;
                        DeviceFragment.this.mGridView.setEnabled(!DeviceFragment.this.isDownLoading);
                        if (DeviceFragment.isDebugLog) {
                            Log.e(DeviceFragment.TAG, "downloadListener() - task error.");
                            return;
                        }
                        return;
                    }
                }
                DeviceFragment.this.isDownLoading = false;
                DeviceFragment.this.mGridView.setEnabled(true ^ DeviceFragment.this.isDownLoading);
                DeviceFragment.this.pickedList.clear();
                DeviceFragment.this.downloadTask.clear();
                DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), 100);
                DeviceFragment.this.downloadFileListener.camDidDownloadFinished();
                if (DeviceFragment.this.reflashListener != null) {
                    DeviceFragment.this.reflashListener.Reflash();
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.liulishuo.filedownloader.FileDownloadListener
            public void error(BaseDownloadTask baseDownloadTask, Throwable th) {
                DeviceFragment.this.myGridAdapter.updataItem((CameraFile) baseDownloadTask.getTag(), true);
                Log.e(DeviceFragment.TAG, th.toString());
                Integer num = new Integer(DeviceFragment.this.fileList.indexOf((CameraFile) baseDownloadTask.getTag()));
                if (num.intValue() != -1) {
                    DeviceFragment.this.pickedList.remove(num);
                }
                if (DeviceFragment.this.downloadTask.contains(baseDownloadTask)) {
                    DeviceFragment.this.downloadTask.remove(baseDownloadTask);
                }
                if (DeviceFragment.this.downloadTask.size() == 0) {
                    DeviceFragment.this.isDownLoading = false;
                    DeviceFragment.this.mGridView.setEnabled(!DeviceFragment.this.isDownLoading);
                    DeviceFragment.this.pickedList.clear();
                    DeviceFragment.this.downloadTask.clear();
                    if (DeviceFragment.this.downloadFileListener != null) {
                        DeviceFragment.this.downloadFileListener.camDidDownloadError();
                    }
                }
            }
        };
        this.taskFinishListener = new BaseDownloadTask.FinishListener() { // from class: com.ocean.playback.DeviceFragment.2
            @Override // com.liulishuo.filedownloader.BaseDownloadTask.FinishListener
            public void over(BaseDownloadTask baseDownloadTask) {
            }
        };
        this.downloadQueueSet = new FileDownloadQueueSet(this.downloadListener);
        this.downloadTask = new ArrayList();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_local, viewGroup, false);
        ((TextView) inflate.findViewById(R.id.fragment_hello_text)).setText("hei hei.");
        this.ablum_loading = (RotateLoading) inflate.findViewById(R.id.ablum_loading);
        this.lab_loading = (TextView) inflate.findViewById(R.id.lab_loading);
        this.myGridAdapter = new FragmentGridAdapter();
        this.mGridView = (GridView) inflate.findViewById(R.id.main_gridView);
        this.mGridView.setAdapter((ListAdapter) this.myGridAdapter);
        this.mGridView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.ocean.playback.DeviceFragment.3
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                switch (i) {
                    case 0:
                        if (DeviceFragment.this.stopListener != null) {
                            DeviceFragment.this.isStopScrolling = true;
                            DeviceFragment.this.stopListener.didStopScrolling(true);
                            return;
                        }
                        return;
                    case 1:
                        if (DeviceFragment.this.stopListener != null) {
                            DeviceFragment.this.isStopScrolling = false;
                            DeviceFragment.this.stopListener.didStopScrolling(false);
                            return;
                        }
                        return;
                    case 2:
                    default:
                        return;
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                DeviceFragment.this.nStartPosVisable = i;
                DeviceFragment.this.nEndPosVisable = (i + i2) - 1;
            }
        });
        this.mGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ocean.playback.DeviceFragment.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (DeviceFragment.this.isDownLoading) {
                    return;
                }
                if (DeviceFragment.this.pickedList.size() != 0) {
                    DeviceFragment.this.doSelectOne(view, i);
                } else if (DeviceFragment.this.filePlayListener != null) {
                    DeviceFragment.this.filePlayListener.camDidFilePlaySucc(i);
                }
            }
        });
        this.mGridView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.ocean.playback.DeviceFragment.5
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (DeviceFragment.this.isDownLoading) {
                    return true;
                }
                DeviceFragment.this.doSelectOne(view, i);
                return true;
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (isDebugLog) {
            Log.e(TAG, "onResume ()");
        }
        if (this.fileList == null || this.fileList.size() == 0) {
            return;
        }
        this.myMainHandler.sendEmptyMessage(65537);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (isDebugLog) {
            Log.e(TAG, "onPause()");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        if (isDebugLog) {
            Log.e(TAG, "onStop()");
        }
        if (this.downloadTask != null && !this.downloadTask.isEmpty()) {
            for (BaseDownloadTask baseDownloadTask : this.downloadTask) {
                baseDownloadTask.pause();
            }
        }
        super.onStop();
    }

    private void createDialog() {
        this.dlgDelete = new AlertDialog(getActivity()).builder().setTitle(getActivity().getString(R.string.my_dialog_title)).setMsg(getActivity().getString(R.string.delete_dialog)).setCancelable(false).setNegativeButton(getActivity().getString(R.string.no), new View.OnClickListener() { // from class: com.ocean.playback.DeviceFragment.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }).setPositiveButton(getActivity().getString(R.string.yes), new View.OnClickListener() { // from class: com.ocean.playback.DeviceFragment.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DeviceFragment.this.myWorkHandler.sendEmptyMessage(65537);
            }
        });
    }

    /* loaded from: classes.dex */
    public static class MyMainHandler extends Handler {
        private WeakReference<DeviceFragment> mOwner;

        public MyMainHandler(DeviceFragment deviceFragment) {
            this.mOwner = new WeakReference<>(deviceFragment);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DeviceFragment deviceFragment = this.mOwner.get();
            switch (message.what) {
                case 65537:
                    deviceFragment.myGridAdapter.notifyDataSetChanged();
                    return;
                case DeviceFragment.MAIN_UPDATA_ITEM /* 65538 */:
                    if (message.obj == null || !(message.obj instanceof CameraFile)) {
                        return;
                    }
                    deviceFragment.myGridAdapter.updataItem((CameraFile) message.obj, message.arg1);
                    return;
                case DeviceFragment.MAIN_UPDATA_PICK_MARK /* 65539 */:
                    if (message.arg1 == 0) {
                        deviceFragment.myGridAdapter.updataPickMark(false);
                        return;
                    } else {
                        deviceFragment.myGridAdapter.updataPickMark(true);
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class MyWorkHandler extends Handler {
        private WeakReference<DeviceFragment> mOwner;

        public MyWorkHandler(Looper looper, DeviceFragment deviceFragment) {
            super(looper);
            this.mOwner = new WeakReference<>(deviceFragment);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            DeviceFragment deviceFragment = this.mOwner.get();
            if (message.what != 65537) {
                return;
            }
            try {
                ArrayList<String> arrayList = new ArrayList<>();
                Iterator<Integer> it = deviceFragment.pickedList.iterator();
                while (it.hasNext()) {
                    arrayList.add(deviceFragment.fileList.get(it.next().intValue()).getFileName());
                }
                if (!deviceFragment.cameraRequest.delCameraFile(arrayList)) {
                    if (DeviceFragment.isDebugLog) {
                        Log.e(DeviceFragment.TAG, "MyWorkHandler() - delete part failed.");
                    }
                } else {
                    Collections.sort(deviceFragment.pickedList);
                    Collections.reverse(deviceFragment.pickedList);
                    Iterator<Integer> it2 = deviceFragment.pickedList.iterator();
                    while (it2.hasNext()) {
                        Integer next = it2.next();
                        if (DeviceFragment.isDebugLog) {
                            Log.e(DeviceFragment.TAG, "MyWorkHandler() - remove list : " + next);
                        }
                        deviceFragment.fileList.remove(next.intValue());
                    }
                    if (DeviceFragment.isDebugLog) {
                        Log.e(DeviceFragment.TAG, "MyWorkHandler() - delete part success.");
                    }
                }
                arrayList.clear();
                deviceFragment.pickedList.clear();
                deviceFragment.myMainHandler.sendEmptyMessage(65537);
            } catch (Exception e) {
                if (DeviceFragment.isDebugLog) {
                    Log.e(DeviceFragment.TAG, "MyWorkHandler() - delete error");
                }
                e.printStackTrace();
            }
        }
    }

    /* loaded from: classes.dex */
    public class FragmentGridAdapter extends BaseAdapter {
        private LayoutInflater mInflater;

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        public FragmentGridAdapter() {
            if (DeviceFragment.this.getActivity() != null) {
                this.mInflater = LayoutInflater.from(DeviceFragment.this.getActivity());
            }
        }

        public void updataItem(CameraFile cameraFile, boolean z) {
            View childAt;
            try {
                if (cameraFile instanceof CameraFile) {
                    if (DeviceFragment.this.mGridView != null && (cameraFile instanceof CameraFile)) {
                        int indexOf = DeviceFragment.this.fileList.indexOf(cameraFile) - DeviceFragment.this.mGridView.getFirstVisiblePosition();
                        if (indexOf >= 0 && (childAt = DeviceFragment.this.mGridView.getChildAt(indexOf)) != null) {
                            childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(0);
                            childAt.findViewById(R.id.new_grid_item_download_progress).setVisibility(0);
                            if (z) {
                                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setTextColor(SupportMenu.CATEGORY_MASK);
                                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setColor(SupportMenu.CATEGORY_MASK);
                            } else {
                                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setValue(0);
                                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setTextColor(-1);
                                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setColor(-1);
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void updataItem(CameraFile cameraFile, int i) {
            View childAt;
            try {
                if (DeviceFragment.this.mGridView != null && (cameraFile instanceof CameraFile)) {
                    int indexOf = DeviceFragment.this.fileList.indexOf(cameraFile) - DeviceFragment.this.mGridView.getFirstVisiblePosition();
                    if (indexOf >= 0 && (childAt = DeviceFragment.this.mGridView.getChildAt(indexOf)) != null) {
                        if (i < 100) {
                            childAt.findViewById(R.id.new_grid_item_downed).setVisibility(8);
                            childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(0);
                            childAt.findViewById(R.id.new_grid_item_download_progress).setVisibility(0);
                            ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setValue(i);
                        } else {
                            childAt.findViewById(R.id.new_grid_item_downed).setVisibility(0);
                            childAt.findViewById(R.id.new_grid_item_selected).setVisibility(8);
                            childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(8);
                            childAt.findViewById(R.id.new_grid_item_download_progress).setVisibility(8);
                            ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setValue(i);
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void updataItem(int i) {
            try {
                if (DeviceFragment.this.mGridView == null) {
                    return;
                }
                View childAt = DeviceFragment.this.mGridView.getChildAt(i);
                CameraFile cameraFile = DeviceFragment.this.fileList.get(i);
                if (childAt == null || cameraFile == null) {
                    return;
                }
                DeviceFragment.this.imageLoader.displayImage(cameraFile.getFilePath(), (ImageView) childAt.findViewById(R.id.new_grid_item_photo));
                if (DeviceFragment.isDebugLog) {
                    Log.e(DeviceFragment.TAG, "updataItem() - thumb = " + Integer.toString(i));
                }
                notifyDataSetChanged();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        public void updataPickMark(boolean z) {
            if (DeviceFragment.this.mGridView == null) {
                return;
            }
            int lastVisiblePosition = (DeviceFragment.this.mGridView.getLastVisiblePosition() - DeviceFragment.this.mGridView.getFirstVisiblePosition()) + 1;
            for (int i = 0; i < lastVisiblePosition; i++) {
                View childAt = DeviceFragment.this.mGridView.getChildAt(i);
                if (childAt != null) {
                    if (z) {
                        childAt.findViewById(R.id.new_grid_item_selected).setVisibility(0);
                    } else {
                        childAt.findViewById(R.id.new_grid_item_selected).setVisibility(8);
                        childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(8);
                    }
                }
            }
        }

        public void cleanItem(CameraFile cameraFile, boolean z) {
            int indexOf;
            View childAt;
            if (DeviceFragment.this.mGridView == null || (indexOf = DeviceFragment.this.fileList.indexOf(cameraFile) - DeviceFragment.this.mGridView.getFirstVisiblePosition()) < 0 || (childAt = DeviceFragment.this.mGridView.getChildAt(indexOf)) == null) {
                return;
            }
            childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(8);
            ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setValue(0);
            ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setVisibility(8);
        }

        public void cleanItem(int i, boolean z) {
            View childAt = DeviceFragment.this.mGridView.getChildAt(i);
            if (childAt != null) {
                childAt.findViewById(R.id.new_grid_item_download_front).setVisibility(8);
                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setValue(0);
                ((CircleProgressView) childAt.findViewById(R.id.new_grid_item_download_progress)).setVisibility(8);
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (DeviceFragment.this.fileList == null) {
                return 0;
            }
            return DeviceFragment.this.fileList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (this.mInflater == null) {
                return null;
            }
            if (view == null) {
                view = this.mInflater.inflate(R.layout.item_fragment_grid, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.priview = (ImageView) view.findViewById(R.id.new_grid_item_photo);
                viewHolder.selectLayout = (RelativeLayout) view.findViewById(R.id.new_grid_item_download_front);
                viewHolder.timeLayout = (RelativeLayout) view.findViewById(R.id.new_grid_item_video_time_layout);
                viewHolder.circleProgress = (CircleProgressView) view.findViewById(R.id.new_grid_item_download_progress);
                viewHolder.imgSelected = (ImageView) view.findViewById(R.id.new_grid_item_selected);
                viewHolder.imgDownloaded = (ImageView) view.findViewById(R.id.new_grid_item_downed);
                viewHolder.imgType = (ImageView) view.findViewById(R.id.new_grid_item_type);
                viewHolder.txtName = (TextView) view.findViewById(R.id.new_grid_item_name);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            DeviceFragment.this.imageLoader.displayImage(DeviceFragment.this.fileList.get(i).getFilePath(), viewHolder.priview, new ImageLoadingListener() { // from class: com.ocean.playback.DeviceFragment.FragmentGridAdapter.1
                @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public void onLoadingCancelled(String str, View view2) {
                }

                @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public void onLoadingComplete(String str, View view2, Bitmap bitmap) {
                }

                @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public void onLoadingStarted(String str, View view2) {
                }

                @Override // com.nostra13.universalimageloader.core.listener.ImageLoadingListener
                public void onLoadingFailed(String str, View view2, FailReason failReason) {
                    DeviceFragment.this.fileList.get(i).setThumbDownloaded(false);
                }
            });
            viewHolder.txtName.setText(DeviceFragment.this.fileList.get(i).getFileName());
            if (DeviceFragment.this.fileList.get(i).getFileName().contains(".MOV") || DeviceFragment.this.fileList.get(i).getFileName().contains(".mov") || DeviceFragment.this.fileList.get(i).getFileName().contains(".MP4") || DeviceFragment.this.fileList.get(i).getFileName().contains(".mp4")) {
                viewHolder.imgType.setImageResource(R.drawable.video00);
            } else {
                viewHolder.imgType.setImageResource(R.drawable.photo00);
            }
            if (DeviceFragment.this.fileList.get(i).getDownloadProgress() == 100) {
                viewHolder.imgDownloaded.setVisibility(0);
            } else {
                viewHolder.imgDownloaded.setVisibility(8);
            }
            if (DeviceFragment.this.pickedList != null && DeviceFragment.this.pickedList.contains(Integer.valueOf(i))) {
                viewHolder.imgSelected.setVisibility(0);
            } else {
                viewHolder.imgSelected.setVisibility(8);
            }
            return view;
        }

        /* loaded from: classes.dex */
        private class ViewHolder {
            CircleProgressView circleProgress;
            ImageView imgDownloaded;
            ImageView imgSelected;
            ImageView imgType;
            ImageView priview;
            RelativeLayout selectLayout;
            RelativeLayout timeLayout;
            TextView txtName;

            private ViewHolder() {
            }
        }
    }

    public void doAllClick() {
        if (isDebugLog) {
            Log.e(TAG, "doAllClick()");
        }
        if (this.isDownLoading) {
            Toast.makeText(MyApplication.getAppContext(), getResources().getString(R.string.downing_forbi), 0).show();
        } else if (this.myGridAdapter != null && this.fileList != null && this.fileList.size() != 0) {
            if (this.pickedList.size() == 0) {
                this.isSelectAll = false;
            }
            if (!this.isSelectAll) {
                this.pickedList.clear();
                for (int i = this.nStartPosVisable; i <= this.nEndPosVisable; i++) {
                    this.pickedList.add(Integer.valueOf(i));
                }
                this.isSelectAll = true;
                this.myGridAdapter.updataPickMark(true);
                return;
            }
            this.isSelectAll = false;
            this.pickedList.clear();
            this.myGridAdapter.updataPickMark(false);
        }
    }

    public void doDeleteClick() {
        if (isDebugLog) {
            Log.e(TAG, "doDeleteClick()");
        }
        if (this.pickedList == null || this.pickedList.size() == 0) {
            return;
        }
        if (this.isDownLoading) {
            Toast.makeText(MyApplication.getAppContext(), getResources().getString(R.string.downing_forbi), 0).show();
        } else {
            this.dlgDelete.show();
        }
    }

    public void doDownloadClick() {
        if (isDebugLog) {
            Log.e(TAG, "doDownloadClick()");
        }
        if (this.pickedList == null || this.pickedList.size() == 0) {
            return;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        Iterator<Integer> it = this.pickedList.iterator();
        while (it.hasNext()) {
            Integer next = it.next();
            CameraFile cameraFile = this.fileList.get(next.intValue());
            if (cameraFile.getDownloadProgress() != 100) {
                arrayList.add(next);
            } else {
                this.myGridAdapter.updataItem(cameraFile, 100);
            }
        }
        this.pickedList.clear();
        this.pickedList = arrayList;
        if (this.pickedList.size() == 0) {
            this.isSelectAll = false;
            return;
        }
        Iterator<Integer> it2 = this.pickedList.iterator();
        while (it2.hasNext()) {
            CameraFile cameraFile2 = this.fileList.get(it2.next().intValue());
            BaseDownloadTask create = FileDownloader.getImpl().create(cameraFile2.getFileDownloadPath());
            create.setPath(this.sdPath + cameraFile2.getFileTime() + "_" + cameraFile2.getFileName());
            create.setTag(cameraFile2);
            this.downloadTask.add(create);
            if (isDebugLog) {
                Log.e(TAG, "file path:" + cameraFile2.getFileDownloadPath());
            }
        }
        if (!FileDownloader.getImpl().isServiceConnected() && isDebugLog) {
            Log.e(TAG, "downloader service - disconnect!");
        }
        this.downloadQueueSet.addTaskFinishListener(this.taskFinishListener);
        this.downloadQueueSet.downloadSequentially(this.downloadTask);
        this.downloadQueueSet.setAutoRetryTimes(3);
        this.downloadQueueSet.setForceReDownload(true);
        this.downloadQueueSet.setCallbackProgressMinInterval(1000);
        this.downloadQueueSet.start();
        this.isDownLoading = true;
        this.mGridView.setEnabled(true ^ this.isDownLoading);
    }

    public void doPauseDownload() {
        if (isDebugLog) {
            Log.e(TAG, "doPauseDownload()");
        }
        if (this.isDownLoading) {
            for (BaseDownloadTask baseDownloadTask : this.downloadTask) {
                if (baseDownloadTask.isRunning()) {
                    baseDownloadTask.pause();
                }
            }
            Iterator<Integer> it = this.pickedList.iterator();
            while (it.hasNext()) {
                this.myGridAdapter.cleanItem(it.next().intValue(), false);
            }
            this.isDownLoading = false;
            this.mGridView.setEnabled(!this.isDownLoading);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doSelectOne(View view, int i) {
        ImageView imageView = (ImageView) view.findViewById(R.id.new_grid_item_selected);
        if (this.pickedList.contains(Integer.valueOf(i))) {
            this.pickedList.remove(this.pickedList.indexOf(Integer.valueOf(i)));
            imageView.setVisibility(8);
            if (this.pickedList.size() == 0) {
                this.isSelectAll = false;
                return;
            }
            return;
        }
        this.pickedList.add(Integer.valueOf(i));
        imageView.setVisibility(0);
    }

    public void setReflashListener(ReflashListListener reflashListListener) {
        this.reflashListener = reflashListListener;
    }

    private void initCameraRequest() {
        this.cameraRequest = new CameraRequest(getContext());
    }

    public void startLoadingView(String str) {
        if (this.ablum_loading != null) {
            this.ablum_loading.start();
            this.lab_loading.setText(str);
            this.lab_loading.setVisibility(0);
        }
    }

    public void stopLoadingView() {
        if (this.ablum_loading != null) {
            this.ablum_loading.stop();
            this.lab_loading.setVisibility(8);
        }
    }

    public void setOnScrollStopListener(OnScrollStopListener onScrollStopListener) {
        this.stopListener = onScrollStopListener;
    }

    public void setOnCamDeleteFileListener(OnCamDeleteFileListener onCamDeleteFileListener) {
        this.deleteListener = onCamDeleteFileListener;
    }

    public void setOnCamDownloadFileListener(OnCamDownloadFileListener onCamDownloadFileListener) {
        this.downloadFileListener = onCamDownloadFileListener;
    }

    public void setOnCamFilePlayListener(OnCamFilePlayListener onCamFilePlayListener) {
        this.filePlayListener = onCamFilePlayListener;
    }
}
