package com.ocean.ble;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.ocean.gamecamerapro2.MainActivity;
import com.ocean.gamecamerapro2.R;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class BLEDeviceAdapter extends BaseAdapter {
    private static final int TAG_STATUS_CONNECTED = 2;
    private static final int TAG_STATUS_CONNECTING = 4;
    private static final int TAG_STATUS_DISCONNECTED = 1;
    private static final int TAG_STATUS_DISCONNECTING = 3;
    private LayoutInflater infater;
    private ArrayList<BLEDeviceObject> listBLEDevice;
    public MainActivity mainActivity;
    private ViewHolder holder = null;
    public int nUpdateDevPos = -1;
    public int nSoundPos = -1;
    public boolean isEditName = false;
    public boolean isDisconnect = false;
    public boolean isEraseFlash = false;
    private OnBLEDeviceAdapterListener mListener = null;

    /* loaded from: classes.dex */
    public interface OnBLEDeviceAdapterListener {
        void cellDidDisconnect(int i);

        void cellDidRename(int i);

        void cellDidSetGpio2(int i);

        void cellDidSetGpio3(int i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public BLEDeviceAdapter(Context context) {
        this.infater = null;
        this.mainActivity = null;
        this.infater = (LayoutInflater) context.getSystemService("layout_inflater");
        this.mainActivity = (MainActivity) context;
        this.listBLEDevice = this.mainActivity.mBT4Base.arrayBLEDevices;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.listBLEDevice != null) {
            return this.listBLEDevice.size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.listBLEDevice.get(i);
    }

    public void removeItem(int i) {
        this.listBLEDevice.remove(i);
        notifyDataSetChanged();
    }

    public void removeItem(BLEDeviceObject bLEDeviceObject) {
        this.listBLEDevice.remove(bLEDeviceObject);
        notifyDataSetChanged();
    }

    public void addItem(BLEDeviceObject bLEDeviceObject) {
        this.listBLEDevice.add(bLEDeviceObject);
        notifyDataSetChanged();
    }

    public void clear() {
        this.listBLEDevice.clear();
        notifyDataSetChanged();
    }

    private Resources getResources() {
        if (this.mainActivity != null) {
            return this.mainActivity.getResources();
        }
        return null;
    }

    private String getPackageName() {
        if (this.mainActivity != null) {
            return this.mainActivity.getPackageName();
        }
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null || view.getTag() == null) {
            view = this.infater.inflate(R.layout.layout_devices, (ViewGroup) null);
            this.holder = new ViewHolder(view);
            view.setTag(this.holder);
        } else {
            this.holder = (ViewHolder) view.getTag();
        }
        BLEDeviceObject bLEDeviceObject = this.listBLEDevice.get(i);
        if (bLEDeviceObject.tagStatus == 2) {
            ui_updateConnectView(i, bLEDeviceObject);
        } else {
            ui_updateDisconnectView(i, bLEDeviceObject);
        }
        this.holder.ivEraseFlash.setOnTouchListener(new lvButtonTouchListener(i));
        this.holder.ivDiskInfo.setOnTouchListener(new lvButtonTouchListener(i));
        this.holder.ivDevIcon2.setOnTouchListener(new lvButtonTouchListener(i));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ViewHolder {
        ImageView ivDevBg;
        ImageView ivDevIcon1;
        ImageView ivDevIcon2;
        ImageView ivDiskInfo;
        ImageView ivEraseFlash;
        ImageView ivSound;
        RelativeLayout layoutConnect;
        RelativeLayout layoutDisconnect;
        TextView tvBMVersion;
        TextView tvDevName1;
        TextView tvDevName2;
        TextView tvDiskInfo;
        TextView tv_data;
        TextView tv_first_v;
        TextView tv_object;
        TextView tv_second_v;

        public ViewHolder(View view) {
            this.layoutDisconnect = (RelativeLayout) view.findViewById(R.id.layout_disconnect);
            this.layoutConnect = (RelativeLayout) view.findViewById(R.id.layout_connect);
            this.ivDevIcon1 = (ImageView) view.findViewById(R.id.iv_list_item_1);
            this.ivDevIcon2 = (ImageView) view.findViewById(R.id.iv_list_item_2);
            this.ivDevBg = (ImageView) view.findViewById(R.id.iv_list_item_bg);
            this.tvDevName1 = (TextView) view.findViewById(R.id.tv_decvie_name_1);
            this.tvDevName2 = (TextView) view.findViewById(R.id.tv_decvie_name_2);
            this.tv_object = (TextView) view.findViewById(R.id.tv_object);
            this.tv_data = (TextView) view.findViewById(R.id.tv_data);
            this.tv_first_v = (TextView) view.findViewById(R.id.tv_first_v);
            this.tv_second_v = (TextView) view.findViewById(R.id.tv_second_v);
            this.ivSound = (ImageView) view.findViewById(R.id.iv_sound);
            this.ivEraseFlash = (ImageView) view.findViewById(R.id.iv_eraseflash);
            this.ivDiskInfo = (ImageView) view.findViewById(R.id.iv_diskinfo);
            this.tvDiskInfo = (TextView) view.findViewById(R.id.tv_diskinfo);
            this.tvBMVersion = (TextView) view.findViewById(R.id.tv_bm_version);
            this.ivEraseFlash.setVisibility(8);
            this.ivDiskInfo.setVisibility(8);
            this.tvDiskInfo.setVisibility(8);
        }
    }

    /* loaded from: classes.dex */
    class lvButtonTouchListener implements View.OnTouchListener {
        private int pos;

        lvButtonTouchListener(int i) {
            this.pos = i;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int id = view.getId();
            if (id == BLEDeviceAdapter.this.holder.tvDevName2.getId() && motionEvent.getAction() == 0) {
                BLEDeviceAdapter.this.isEditName = true;
                BLEDeviceAdapter.this.mListener.cellDidRename(this.pos);
            }
            if (id != BLEDeviceAdapter.this.holder.ivDevIcon2.getId() || motionEvent.getAction() != 0) {
                if (id == BLEDeviceAdapter.this.holder.ivSound.getId()) {
                    if (motionEvent.getAction() == 0) {
                        BLEDeviceAdapter.this.nSoundPos = this.pos;
                        return true;
                    } else if (motionEvent.getAction() == 1) {
                        new Timer().schedule(new TimerTask() { // from class: com.ocean.ble.BLEDeviceAdapter.lvButtonTouchListener.1
                            @Override // java.util.TimerTask, java.lang.Runnable
                            public void run() {
                                BLEDeviceAdapter.this.nSoundPos = -1;
                            }
                        }, 1000L);
                        return true;
                    }
                }
                if (id != BLEDeviceAdapter.this.holder.ivEraseFlash.getId() || motionEvent.getAction() != 0) {
                    if (id == BLEDeviceAdapter.this.holder.ivDiskInfo.getId() && motionEvent.getAction() == 0) {
                        BLEDeviceAdapter.this.mListener.cellDidSetGpio3(this.pos);
                        return true;
                    }
                    return false;
                }
                BLEDeviceAdapter.this.mListener.cellDidSetGpio2(this.pos);
                return true;
            }
            BLEDeviceAdapter.this.isDisconnect = true;
            BLEDeviceAdapter.this.mListener.cellDidDisconnect(this.pos);
            return true;
        }
    }

    /* loaded from: classes.dex */
    class lvButtonListener implements View.OnClickListener {
        private int pos;

        lvButtonListener(int i) {
            this.pos = -1;
            this.pos = i;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            view.getId();
        }
    }

    private void ui_updateConnectView(int i, BLEDeviceObject bLEDeviceObject) {
        this.holder.layoutDisconnect.setVisibility(8);
        this.holder.layoutConnect.setVisibility(0);
        if (i == bLEDeviceObject.nDevPos) {
            this.holder.tvDiskInfo.setVisibility(8);
            this.holder.ivEraseFlash.setVisibility(0);
            this.holder.ivDiskInfo.setVisibility(0);
            this.holder.tvBMVersion.setVisibility(0);
            TextView textView = this.holder.tvBMVersion;
            textView.setText("v" + String.valueOf(1.0d));
            bLEDeviceObject.getDevInfoImage();
            int identifier = getResources().getIdentifier(bLEDeviceObject.tagImageID, "drawable", getPackageName());
            this.holder.ivDevIcon2.setImageDrawable(getResources().getDrawable(identifier));
            this.holder.ivDevIcon1.setImageDrawable(getResources().getDrawable(identifier));
            this.holder.ivDevBg.setImageResource(R.drawable.img_bt04);
            TextView textView2 = this.holder.tvDevName2;
            textView2.setText("CAMERA-" + bLEDeviceObject.tagDisplayName);
            TextView textView3 = this.holder.tvDevName1;
            textView3.setText("CAMERA-" + bLEDeviceObject.tagDisplayName);
        }
    }

    private void ui_updateDisconnectView(int i, BLEDeviceObject bLEDeviceObject) {
        this.holder.layoutDisconnect.setVisibility(0);
        this.holder.layoutConnect.setVisibility(8);
        if (i == bLEDeviceObject.nDevPos) {
            bLEDeviceObject.getDevInfoImage();
            int identifier = getResources().getIdentifier(bLEDeviceObject.tagImageID, "drawable", getPackageName());
            this.holder.ivDevIcon1.setImageDrawable(getResources().getDrawable(identifier));
            TextView textView = this.holder.tvDevName1;
            textView.setText("CAMERA-" + bLEDeviceObject.tagDisplayName);
            this.holder.ivDevIcon2.setImageDrawable(getResources().getDrawable(identifier));
            TextView textView2 = this.holder.tvDevName2;
            textView2.setText("CAMERA-" + bLEDeviceObject.tagDisplayName);
        }
    }

    public void setOnBLEDeviceAdapterListener(OnBLEDeviceAdapterListener onBLEDeviceAdapterListener) {
        this.mListener = onBLEDeviceAdapterListener;
    }
}
