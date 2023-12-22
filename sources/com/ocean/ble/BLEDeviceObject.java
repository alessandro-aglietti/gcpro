package com.ocean.ble;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.os.Handler;
import android.os.Message;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class BLEDeviceObject {
    public static final int TAG_STATUS_CONNECTED = 2;
    public static final int TAG_STATUS_CONNECTING = 4;
    public static final int TAG_STATUS_DISCONNECTED = 1;
    public static final int TAG_STATUS_DISCONNECTING = 3;
    public static final int TAG_STATUS_NONE = 0;
    public int nFFF1RxSize;
    public BluetoothDevice tagDevice = null;
    public BluetoothGatt tagGatt = null;
    public String tagType = null;
    public int tagStatus = 1;
    public String tagImageID = "img_bt00";
    public String tagName = "---";
    public String tagAddress = "---";
    public String tagDisplayName = "---";
    public boolean tagGpio2Status = false;
    public boolean tagGpio3Status = false;
    public int tagRssi = -1;
    public int nDevPos = -1;
    public int[] byteFFF1Rx = new int[40];
    private Timer pSystemTimer = null;
    private TimerTask pSystemTimerTask = null;
    private Handler pSystemTimerHandler = null;
    public int nUpdateDataCount = 0;
    private int nMaxUpdateDataCount = 3;
    private OnBLEDeviceObjectListener mListener = null;

    /* loaded from: classes.dex */
    public interface OnBLEDeviceObjectListener {
        void deviceDidGetGpioStatus(int i);

        void deviceDidUpdateAuto(int i);
    }

    private void initLoggerString() {
    }

    public BLEDeviceObject() {
        system_initTimer();
    }

    public void decodeFFF1RxData() {
        if (this.nFFF1RxSize == 16) {
            if (this.byteFFF1Rx[2] == 1 && this.byteFFF1Rx[3] == 19) {
                this.tagGpio2Status = true;
            } else if (this.byteFFF1Rx[2] == 1 && this.byteFFF1Rx[3] == 6) {
                this.tagGpio2Status = false;
            }
            if (this.byteFFF1Rx[4] == 2 && this.byteFFF1Rx[5] == 19) {
                this.tagGpio3Status = true;
            } else if (this.byteFFF1Rx[4] == 2 && this.byteFFF1Rx[5] == 6) {
                this.tagGpio3Status = false;
            }
        }
        this.mListener.deviceDidGetGpioStatus(this.nDevPos);
    }

    public void getDevInfoImage() {
        if (this.tagStatus == 2) {
            this.tagImageID = "ms_xxx_icon";
        } else {
            this.tagImageID = "img_bt01";
        }
    }

    private void system_initTimer() {
        this.pSystemTimerTask = new TimerTask() { // from class: com.ocean.ble.BLEDeviceObject.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                BLEDeviceObject.this.nUpdateDataCount++;
                if (BLEDeviceObject.this.nUpdateDataCount > BLEDeviceObject.this.nMaxUpdateDataCount) {
                    BLEDeviceObject.this.nUpdateDataCount = 0;
                    message.what = 0;
                    BLEDeviceObject.this.pSystemTimerHandler.sendMessage(message);
                }
            }
        };
        this.pSystemTimerHandler = new Handler() { // from class: com.ocean.ble.BLEDeviceObject.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 0) {
                    BLEDeviceObject.this.mListener.deviceDidUpdateAuto(BLEDeviceObject.this.nDevPos);
                }
            }
        };
        this.pSystemTimer = new Timer();
        this.pSystemTimer.schedule(this.pSystemTimerTask, 1000L, 1000L);
    }

    public void setOnBLEDeviceObjectListener(OnBLEDeviceObjectListener onBLEDeviceObjectListener) {
        this.mListener = onBLEDeviceObjectListener;
    }
}
