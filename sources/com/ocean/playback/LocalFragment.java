package com.ocean.playback;

import android.content.Intent;
import android.net.Uri;
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
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageSize;
import com.ocean.gamecamerapro2.MyApplication;
import com.ocean.gamecamerapro2.R;
import com.ocean.obj.CameraFile;
import com.ocean.widget.ActionSheetDialog;
import com.ocean.widget.AlertDialog;
import com.ocean.widget.RotateLoading;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class LocalFragment extends Fragment {
    private static final String BUNDLE_TITLE = "title";
    private static final int MAIN_NOTIFY_ADAPTER = 65537;
    private static final String TAG = "[LocalFragment]:";
    private static final int WORK_DELETE_PICK_FILE = 65537;
    private static boolean isDebugLog = false;
    private RotateLoading ablum_loading;
    private OnDeleteFileListener deleteListener;
    private ImageLoader imageLoader;
    private AlertDialog mDialog;
    private GridView mGridView;
    private FragmentGridAdapter myGridAdapter;
    private MyMainHandler myMainHandler;
    private MyWorkHandler myWorkHandler;
    private OnScrollStopListener stopListener;
    private HandlerThread wThread;
    private String filePath = MyApplication._instance.strDownloadPath;
    private ArrayList<CameraFile> fileList = null;
    public boolean selectMode = false;
    private ArrayList<Integer> pickedList = new ArrayList<>();

    /* loaded from: classes.dex */
    public interface OnDeleteFileListener {
        void localDidDeleteFile(CameraFile cameraFile);
    }

    /* loaded from: classes.dex */
    public interface OnScrollStopListener {
        void didStopScrolling(boolean z);
    }

    public void scroll2Top() {
    }

    public static LocalFragment newInstance(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(BUNDLE_TITLE, str);
        LocalFragment localFragment = new LocalFragment();
        localFragment.setArguments(bundle);
        return localFragment;
    }

    public void setAlbumData(ArrayList<CameraFile> arrayList, boolean z) {
        if (isDebugLog) {
            Log.e(TAG, "setAlbumData() - file size0: " + arrayList.size());
        }
        if (z && this.imageLoader != null) {
            this.imageLoader.clearMemoryCache();
            this.imageLoader.clearDiskCache();
            if (isDebugLog) {
                Log.e(TAG, "setAlbumData() - imageLoader clear memory cache");
            }
        }
        this.pickedList.clear();
        this.fileList = arrayList;
        if (isDebugLog) {
            Log.e(TAG, "setAlbumData() - file size1 : " + arrayList.size());
        }
        Iterator<CameraFile> it = arrayList.iterator();
        while (it.hasNext()) {
            String fileName = it.next().getFileName();
            if (isDebugLog) {
                Log.e(TAG, "setAlbumData() - file name : " + fileName);
            }
            if ((!fileName.contains(".MOV") && !fileName.contains(".MP4") && !fileName.contains(".mov") && !fileName.contains(".mp4") && !fileName.contains(".JPG") && !fileName.contains(".jpg") && !fileName.contains(".RAW") && !fileName.contains(".raw")) || fileName.contains(".temp")) {
                if (isDebugLog) {
                    Log.e(TAG, "setAlbumData() - remove file name : " + fileName);
                }
                it.remove();
            }
        }
        if (this.myGridAdapter != null) {
            this.myGridAdapter.notifyDataSetChanged();
        }
        if (this.ablum_loading == null || !this.ablum_loading.isStart()) {
            return;
        }
        this.ablum_loading.stop();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.imageLoader = ImageLoader.getInstance();
        this.myMainHandler = new MyMainHandler(this);
        this.wThread = new HandlerThread("localfragment");
        this.wThread.start();
        this.myWorkHandler = new MyWorkHandler(this.wThread.getLooper(), this);
        createDialog();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_local, viewGroup, false);
        ((TextView) inflate.findViewById(R.id.fragment_hello_text)).setText("hei hei.");
        this.ablum_loading = (RotateLoading) inflate.findViewById(R.id.ablum_loading);
        if (this.ablum_loading != null) {
            this.ablum_loading.start();
        }
        this.myGridAdapter = new FragmentGridAdapter();
        this.mGridView = (GridView) inflate.findViewById(R.id.main_gridView);
        this.mGridView.setAdapter((ListAdapter) this.myGridAdapter);
        this.mGridView.setOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.ocean.playback.LocalFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                switch (i) {
                    case 0:
                        if (LocalFragment.this.stopListener != null) {
                            LocalFragment.this.stopListener.didStopScrolling(true);
                            return;
                        }
                        return;
                    case 1:
                        if (LocalFragment.this.stopListener != null) {
                            LocalFragment.this.stopListener.didStopScrolling(false);
                            return;
                        }
                        return;
                    case 2:
                    default:
                        return;
                }
            }
        });
        this.mGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ocean.playback.LocalFragment.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (!LocalFragment.this.selectMode) {
                    Intent intent = new Intent();
                    intent.addFlags(268435456);
                    intent.setAction("android.intent.action.VIEW");
                    String fileName = ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName();
                    String substring = fileName.substring(fileName.indexOf(".") + 1, fileName.length());
                    String str = (substring.equals("MOV") || substring.equals("MP4") || substring.equals("mp4")) ? "MOVIE" : "PHOTO";
                    Uri fromFile = Uri.fromFile(new File(LocalFragment.this.filePath + ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName()));
                    if (str.equals("MOVIE")) {
                        intent.setDataAndType(fromFile, "video/mp4");
                    } else {
                        intent.setDataAndType(fromFile, "image/*");
                    }
                    LocalFragment.this.startActivity(intent);
                    return;
                }
                ImageView imageView = (ImageView) view.findViewById(R.id.new_grid_item_selected);
                if (LocalFragment.this.pickedList.contains(Integer.valueOf(i))) {
                    LocalFragment.this.pickedList.remove(LocalFragment.this.pickedList.indexOf(Integer.valueOf(i)));
                    imageView.setVisibility(8);
                } else {
                    LocalFragment.this.pickedList.add(Integer.valueOf(i));
                    imageView.setVisibility(0);
                }
                if (LocalFragment.this.pickedList.size() == 0) {
                    LocalFragment.this.selectMode = false;
                } else {
                    LocalFragment.this.selectMode = true;
                }
            }
        });
        this.mGridView.setOnItemLongClickListener(new AdapterView.OnItemLongClickListener() { // from class: com.ocean.playback.LocalFragment.3
            @Override // android.widget.AdapterView.OnItemLongClickListener
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, final int i, long j) {
                final ImageView imageView = (ImageView) view.findViewById(R.id.new_grid_item_selected);
                if (LocalFragment.this.pickedList == null || LocalFragment.this.pickedList.size() != 0) {
                    if (LocalFragment.this.pickedList != null) {
                        LocalFragment.this.pickedList.contains(Integer.valueOf(i));
                    }
                    if (LocalFragment.this.pickedList.contains(Integer.valueOf(i))) {
                        LocalFragment.this.pickedList.remove(LocalFragment.this.pickedList.indexOf(Integer.valueOf(i)));
                        imageView.setVisibility(8);
                    } else {
                        LocalFragment.this.pickedList.add(Integer.valueOf(i));
                        imageView.setVisibility(0);
                    }
                } else {
                    new ActionSheetDialog(LocalFragment.this.getActivity()).builder().setTitle(LocalFragment.this.getString(R.string.opration)).setCancelable(false).setCanceledOnTouchOutside(true).addSheetItem(LocalFragment.this.getString(R.string.select), ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() { // from class: com.ocean.playback.LocalFragment.3.2
                        @Override // com.ocean.widget.ActionSheetDialog.OnSheetItemClickListener
                        public void onClick(int i2) {
                            LocalFragment.this.pickedList.add(Integer.valueOf(i));
                            imageView.setVisibility(0);
                            if (LocalFragment.this.pickedList.size() == 0) {
                                LocalFragment.this.selectMode = false;
                            } else {
                                LocalFragment.this.selectMode = true;
                            }
                        }
                    }).addSheetItem(LocalFragment.this.getString(R.string.share), ActionSheetDialog.SheetItemColor.Blue, new ActionSheetDialog.OnSheetItemClickListener() { // from class: com.ocean.playback.LocalFragment.3.1
                        @Override // com.ocean.widget.ActionSheetDialog.OnSheetItemClickListener
                        public void onClick(int i2) {
                            Intent intent = new Intent("android.intent.action.SEND");
                            intent.putExtra("android.intent.extra.STREAM", Uri.parse("file://" + ((CameraFile) LocalFragment.this.fileList.get(i)).getFilePath()));
                            intent.setType("image/*");
                            LocalFragment.this.startActivity(Intent.createChooser(intent, LocalFragment.this.getString(R.string.share_to)));
                        }
                    }).show();
                }
                if (LocalFragment.this.pickedList.size() == 0) {
                    LocalFragment.this.selectMode = false;
                } else {
                    LocalFragment.this.selectMode = true;
                }
                return true;
            }
        });
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Log.i(TAG, "Local Fragement - onResume");
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        Log.i(TAG, "Local Fragement - onPause");
    }

    /* loaded from: classes.dex */
    public static class MyMainHandler extends Handler {
        private WeakReference<LocalFragment> mOwner;

        public MyMainHandler(LocalFragment localFragment) {
            this.mOwner = new WeakReference<>(localFragment);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            LocalFragment localFragment = this.mOwner.get();
            if (message.what != 65537) {
                return;
            }
            localFragment.myGridAdapter.notifyDataSetChanged();
        }
    }

    /* loaded from: classes.dex */
    public static class MyWorkHandler extends Handler {
        public WeakReference<LocalFragment> mOwner;

        public MyWorkHandler(Looper looper, LocalFragment localFragment) {
            super(looper);
            this.mOwner = new WeakReference<>(localFragment);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            LocalFragment localFragment = this.mOwner.get();
            if (message.what != 65537) {
                return;
            }
            ArrayList<CameraFile> pickFileList = localFragment.getPickFileList();
            Iterator<CameraFile> it = pickFileList.iterator();
            while (it.hasNext()) {
                try {
                    CameraFile next = it.next();
                    File file = new File(next.getFilePath());
                    if (file.exists() && file.delete()) {
                        localFragment.fileList.remove(next);
                        if (localFragment.deleteListener != null) {
                            localFragment.deleteListener.localDidDeleteFile(next);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            pickFileList.clear();
            localFragment.pickedList.clear();
            localFragment.selectMode = false;
            localFragment.myMainHandler.sendEmptyMessage(65537);
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
            if (LocalFragment.this.getActivity() != null) {
                this.mInflater = LayoutInflater.from(LocalFragment.this.getActivity());
            }
        }

        public void updataPickMark(boolean z) {
            if (LocalFragment.this.mGridView == null) {
                return;
            }
            int lastVisiblePosition = (LocalFragment.this.mGridView.getLastVisiblePosition() - LocalFragment.this.mGridView.getFirstVisiblePosition()) + 1;
            for (int i = 0; i < lastVisiblePosition; i++) {
                View childAt = LocalFragment.this.mGridView.getChildAt(i);
                if (childAt != null) {
                    if (z) {
                        childAt.findViewById(R.id.new_grid_item_selected).setVisibility(0);
                    } else {
                        childAt.findViewById(R.id.new_grid_item_selected).setVisibility(8);
                    }
                }
            }
        }

        public void updateDeleteItem(int i) {
            View childAt;
            if (LocalFragment.this.mGridView == null || (childAt = LocalFragment.this.mGridView.getChildAt(i)) == null) {
                return;
            }
            childAt.findViewById(R.id.new_grid_item_selected).setVisibility(8);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (LocalFragment.this.fileList == null) {
                return 0;
            }
            return LocalFragment.this.fileList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return Integer.valueOf(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder viewHolder;
            if (this.mInflater == null) {
                return null;
            }
            if (view == null) {
                view = this.mInflater.inflate(R.layout.item_fragment_grid, (ViewGroup) null);
                viewHolder = new ViewHolder();
                viewHolder.priview = (ImageView) view.findViewById(R.id.new_grid_item_photo);
                viewHolder.selected = (ImageView) view.findViewById(R.id.new_grid_item_selected);
                viewHolder.selectLayout = (RelativeLayout) view.findViewById(R.id.new_grid_item_download_front);
                viewHolder.txtName = (TextView) view.findViewById(R.id.new_grid_item_name);
                viewHolder.timeLayout = (RelativeLayout) view.findViewById(R.id.new_grid_item_video_time_layout);
                viewHolder.imgPlay = (ImageView) view.findViewById(R.id.new_grid_item_play);
                view.setTag(viewHolder);
            } else {
                viewHolder = (ViewHolder) view.getTag();
            }
            ImageLoader imageLoader = LocalFragment.this.imageLoader;
            imageLoader.displayImage("file://" + LocalFragment.this.filePath + ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName(), viewHolder.priview, new ImageSize(328, 328));
            viewHolder.txtName.setText(((CameraFile) LocalFragment.this.fileList.get(i)).getFileName());
            viewHolder.txtName.setVisibility(8);
            viewHolder.timeLayout.setVisibility(8);
            if (LocalFragment.this.pickedList.contains(Integer.valueOf(i))) {
                viewHolder.selected.setVisibility(0);
            } else {
                viewHolder.selected.setVisibility(8);
            }
            if (((CameraFile) LocalFragment.this.fileList.get(i)).getFileName().contains(".MOV") || ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName().contains(".mov") || ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName().contains(".MP4") || ((CameraFile) LocalFragment.this.fileList.get(i)).getFileName().contains(".mp4")) {
                viewHolder.imgPlay.setVisibility(0);
            } else {
                viewHolder.imgPlay.setVisibility(8);
            }
            return view;
        }

        /* loaded from: classes.dex */
        private class ViewHolder {
            ImageView imgPlay;
            ImageView priview;
            RelativeLayout selectLayout;
            ImageView selected;
            RelativeLayout timeLayout;
            TextView txtName;

            private ViewHolder() {
            }
        }
    }

    private void createDialog() {
        this.mDialog = new AlertDialog(getActivity()).builder().setTitle(getActivity().getString(R.string.my_dialog_title)).setMsg(getActivity().getString(R.string.delete_dialog)).setCancelable(false).setNegativeButton(getActivity().getString(R.string.no), new View.OnClickListener() { // from class: com.ocean.playback.LocalFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }).setPositiveButton(getActivity().getString(R.string.yes), new View.OnClickListener() { // from class: com.ocean.playback.LocalFragment.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                LocalFragment.this.myWorkHandler.sendEmptyMessage(65537);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (isDebugLog) {
            Log.e(TAG, "onActivityResult() - " + i + "," + i2);
        }
    }

    public void doAllClick() {
        if (isDebugLog) {
            Log.e(TAG, "doAllClick()");
        }
        if (this.myGridAdapter == null || this.fileList == null || this.fileList.size() == 0) {
            return;
        }
        if (this.pickedList.size() != this.fileList.size()) {
            this.pickedList.clear();
            for (int i = 0; i < this.fileList.size(); i++) {
                this.pickedList.add(Integer.valueOf(i));
            }
            this.myGridAdapter.updataPickMark(true);
            this.selectMode = true;
            return;
        }
        this.pickedList.clear();
        this.myGridAdapter.updataPickMark(false);
        this.selectMode = false;
    }

    public void doDeleteClick() {
        if (isDebugLog) {
            Log.e(TAG, "doDeleteClick()");
        }
        if (this.pickedList == null || this.pickedList.size() == 0) {
            return;
        }
        this.mDialog.show();
    }

    public ArrayList<CameraFile> getPickFileList() {
        ArrayList<CameraFile> arrayList = new ArrayList<>();
        Iterator<Integer> it = this.pickedList.iterator();
        while (it.hasNext()) {
            arrayList.add(this.fileList.get(it.next().intValue()));
        }
        return arrayList;
    }

    public void setOnScrollStopListener(OnScrollStopListener onScrollStopListener) {
        this.stopListener = onScrollStopListener;
    }

    public void setOnDeleteFileListener(OnDeleteFileListener onDeleteFileListener) {
        this.deleteListener = onDeleteFileListener;
    }
}
