package com.ocean.ble;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattServer;
import android.bluetooth.BluetoothGattServerCallback;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.widget.Toast;
import com.liulishuo.filedownloader.model.FileDownloadStatus;
import com.ocean.gamecamerapro2.MainActivity;
import com.ocean.gamecamerapro2.R;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
@TargetApi(10000)
/* loaded from: classes.dex */
public class BT4Base {
    private static final String GATT_APP_CONNECTED_DEVICE = "GATT_APP_CONNECTED_DEVICE";
    private static final String GATT_APP_DISCONNECTED_DEVICE = "GATT_APP_DISCONNECTED_DEVICE";
    private static final String GATT_APP_GET_DEVICE_DATA = "GATT_APP_GET_DEVICE_DATA";
    private static final String GATT_APP_GET_DEVICE_RSSI = "GATT_APP_GET_DEVICE_RSSI";
    private static final String GATT_APP_GET_DEVICE_SERVICE = "GATT_APP_GET_DEVICE_SERVICE";
    private static final String INTENT_EXTRA_DATA = "INTENT_EXTRA_DATA";
    public static final int REQUEST_ENABLE_BT = 1;
    public static final long SCAN_PERIOD = 10000;
    private static final String TAG_BT = "BluetoothGatt Service";
    public static final int TAG_STATUS_CONNECTED = 2;
    public static final int TAG_STATUS_CONNECTING = 4;
    public static final int TAG_STATUS_DISCONNECTED = 1;
    public static final int TAG_STATUS_DISCONNECTING = 3;
    private List<BluetoothGattService> listGattServices;
    private BluetoothGattServer mGattServer;
    private MainActivity mainActivity;
    private List<String> strGattServices;
    private static final UUID GAP_SERVICE_UUID = UUID.fromString("00001800-0000-1000-8000-00805f9b34fb");
    private static final UUID DEVICE_NAME_UUID = UUID.fromString("00002a00-0000-1000-8000-00805f9b34fb");
    private static final UUID IMMEDIATE_ALERT_UUID = UUID.fromString("00001802-0000-1000-8000-00805f9b34fb");
    private static final UUID LINK_LOSS_UUID = UUID.fromString("00001803-0000-1000-8000-00805f9b34fb");
    private static final UUID ALERT_LEVEL_UUID = UUID.fromString("00002a06-0000-1000-8000-00805f9b34fb");
    private static final UUID BATTERY_SERVICE_UUID = UUID.fromString("0000180f-0000-1000-8000-00805f9b34fb");
    private static final UUID BATTERY_LEVEL_UUID = UUID.fromString("00002a19-0000-1000-8000-00805f9b34fb");
    private static final UUID CCCD_UUID = UUID.fromString("00002902-0000-1000-8000-00805f9b34fb");
    private static final UUID PHOTO_SERVICE_UUID = UUID.fromString("00005c00-6b66-4ff4-a736-c9325a7548d7");
    private static final UUID PHOTO_NOTIFY_UUID = UUID.fromString("00005c01-6b66-4ff4-a736-c9325a7548d7");
    private static final UUID JGHT_SERVICE_FFF0_UUID = UUID.fromString("0000fff0-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_RW_FFF1_UUID = UUID.fromString("0000fff1-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_SERVICE_FF90_UUID = UUID.fromString("0000ff90-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_RW_FF91_UUID = UUID.fromString("0000ff91-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_RW_FF92_UUID = UUID.fromString("0000ff92-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_W_FF94_UUID = UUID.fromString("0000ff94-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_RW_FF95_UUID = UUID.fromString("0000ff95-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_SERVICE_FFE0_UUID = UUID.fromString("0000ffe0-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_WNR_FFE9_UUID = UUID.fromString("0000ffe9-0000-1000-8000-00805f9b34fb");
    private static final UUID JGHT_DEVICE_INFO_UUID = UUID.fromString("0000180a-0000-1000-8000-00805f9b34fb");
    public BluetoothAdapter mBluetoothAdapter = null;
    public ArrayList<BLEDeviceObject> arrayBLEDevices = new ArrayList<>();
    public int nSelectedObjNo = -1;
    public int[] nRxBuf = new int[40];
    public int nRxSize = -1;
    public boolean isScanningTagDevices = false;
    private Handler mHandler = null;
    private boolean isEnableLog = false;
    public int nReconnectCount = 0;
    public final BroadcastReceiver ui_mGattUpdateReceiver = new BroadcastReceiver() { // from class: com.ocean.ble.BT4Base.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            BLEDeviceObject bLEDeviceObject;
            String action = intent.getAction();
            int intExtra = intent.getIntExtra(BT4Base.INTENT_EXTRA_DATA, 1);
            if (BT4Base.this.arrayBLEDevices.size() - 1 >= intExtra && (bLEDeviceObject = BT4Base.this.arrayBLEDevices.get(intExtra)) != null) {
                if (BT4Base.GATT_APP_CONNECTED_DEVICE.equals(action)) {
                    if (BT4Base.this.isEnableLog) {
                        Log.i(BT4Base.TAG_BT, "[state] - connected!");
                    }
                    bLEDeviceObject.tagStatus = 2;
                    BT4Base.this.mListener.btDidConnected(BT4Base.this.arrayBLEDevices.get(intExtra));
                } else if (BT4Base.GATT_APP_DISCONNECTED_DEVICE.equals(action)) {
                    if (BT4Base.this.isEnableLog) {
                        Log.i(BT4Base.TAG_BT, "[state] - disconnected!");
                    }
                    BT4Base.this.arrayBLEDevices.get(intExtra).tagImageID = "img_bt00";
                    BT4Base.this.arrayBLEDevices.get(intExtra).tagStatus = 1;
                    BT4Base.this.arrayBLEDevices.get(intExtra).tagType = null;
                    BT4Base.this.arrayBLEDevices.get(intExtra).tagGatt.close();
                    BT4Base.this.mListener.btDidDisconnected(BT4Base.this.arrayBLEDevices.get(intExtra));
                } else if (BT4Base.GATT_APP_GET_DEVICE_SERVICE.equals(action)) {
                    if (BT4Base.this.isEnableLog) {
                        Log.i(BT4Base.TAG_BT, "[state] - get FFE0 service ok!");
                    }
                } else if (!BT4Base.GATT_APP_GET_DEVICE_RSSI.equals(action) && BT4Base.GATT_APP_GET_DEVICE_DATA.equals(action)) {
                    BT4Base.this.arrayBLEDevices.get(intExtra).decodeFFF1RxData();
                }
            }
        }
    };
    private BluetoothAdapter.LeScanCallback mLeScanCallback = new BluetoothAdapter.LeScanCallback() { // from class: com.ocean.ble.BT4Base.2
        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(final BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            BT4Base.this.mainActivity.runOnUiThread(new Runnable() { // from class: com.ocean.ble.BT4Base.2.1
                @Override // java.lang.Runnable
                public void run() {
                    if (bluetoothDevice == null || bluetoothDevice.getName() == null) {
                        return;
                    }
                    String upperCase = bluetoothDevice.getName().toUpperCase();
                    if (upperCase.contains("CMT") || upperCase.contains("JGHT-") || upperCase.contains("HTC-")) {
                        BT4Base.this.array_addObjectByDevice(bluetoothDevice);
                    }
                }
            });
        }
    };
    private final BluetoothGattCallback mGattCallback = new BluetoothGattCallback() { // from class: com.ocean.ble.BT4Base.3
        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorRead(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
            BLEDeviceObject bLEDeviceObject;
            int array_findObjectByGatt = BT4Base.this.array_findObjectByGatt(bluetoothGatt);
            if (array_findObjectByGatt == -1 || (bLEDeviceObject = BT4Base.this.arrayBLEDevices.get(array_findObjectByGatt)) == null) {
                return;
            }
            int connectionState = ((BluetoothManager) BT4Base.this.mainActivity.getSystemService("bluetooth")).getConnectionState(bluetoothGatt.getDevice(), 7);
            if (BT4Base.this.isEnableLog) {
                Log.e(BT4Base.TAG_BT, "[state] - cur_state = " + connectionState + ",new_state = " + i2);
            }
            if (i2 == 0) {
                if (bLEDeviceObject.tagStatus != 4) {
                    BT4Base.this.ui_updateBroadcast(BT4Base.GATT_APP_DISCONNECTED_DEVICE, array_findObjectByGatt);
                    return;
                }
                bLEDeviceObject.tagGatt.close();
                BT4Base.this.mListener.btFailConnecting(array_findObjectByGatt);
            } else if (i2 != 2) {
            } else {
                boolean discoverServices = bLEDeviceObject.tagGatt.discoverServices();
                if (BT4Base.this.isEnableLog) {
                    Log.i(BT4Base.TAG_BT, "[state] - discoverServices() = " + discoverServices);
                }
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            int array_findObjectByGatt;
            if (i == 0 && bluetoothGatt.getService(BT4Base.JGHT_SERVICE_FFE0_UUID).getUuid().toString().equalsIgnoreCase(BT4Base.JGHT_SERVICE_FFE0_UUID.toString()) && (array_findObjectByGatt = BT4Base.this.array_findObjectByGatt(bluetoothGatt)) != -1) {
                BT4Base.this.ui_updateBroadcast(BT4Base.GATT_APP_CONNECTED_DEVICE, array_findObjectByGatt);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
            if (i == 0) {
                if (!bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(BT4Base.JGHT_RW_FFF1_UUID.toString())) {
                    if (bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(BT4Base.JGHT_RW_FF92_UUID.toString())) {
                        byte[] value = bluetoothGattCharacteristic.getValue();
                        if (BT4Base.this.isEnableLog) {
                            Log.i(BT4Base.TAG_BT, "[debug] - gatt_readData2FF92() - value0 = " + ((int) value[0]) + " value1 = " + ((int) value[1]));
                            return;
                        }
                        return;
                    }
                    return;
                }
                byte[] value2 = bluetoothGattCharacteristic.getValue();
                BT4Base.this.nRxSize = value2.length;
                for (int i2 = 0; i2 < BT4Base.this.nRxSize; i2++) {
                    BT4Base.this.nRxBuf[i2] = value2[i2] & FileDownloadStatus.error;
                }
                int array_findObjectByGatt = BT4Base.this.array_findObjectByGatt(bluetoothGatt);
                if (array_findObjectByGatt == -1) {
                    return;
                }
                BLEDeviceObject bLEDeviceObject = BT4Base.this.arrayBLEDevices.get(array_findObjectByGatt);
                if (bLEDeviceObject != null) {
                    for (int i3 = 0; i3 < BT4Base.this.nRxSize; i3++) {
                        bLEDeviceObject.byteFFF1Rx[i3] = BT4Base.this.nRxBuf[i3];
                    }
                    bLEDeviceObject.nFFF1RxSize = BT4Base.this.nRxSize;
                }
                BT4Base.this.ui_updateBroadcast(BT4Base.GATT_APP_GET_DEVICE_DATA, array_findObjectByGatt);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public void onReadRemoteRssi(BluetoothGatt bluetoothGatt, int i, int i2) {
            int array_findObjectByGatt;
            if (i2 != 0 || (array_findObjectByGatt = BT4Base.this.array_findObjectByGatt(bluetoothGatt)) == -1) {
                return;
            }
            BT4Base.this.arrayBLEDevices.get(array_findObjectByGatt).tagRssi = i;
            if (BT4Base.this.isEnableLog) {
                Log.i(BT4Base.TAG_BT, "[debug] - pos = " + array_findObjectByGatt + " rssi = " + i);
            }
            BT4Base.this.ui_updateBroadcast(BT4Base.GATT_APP_GET_DEVICE_RSSI, array_findObjectByGatt);
        }
    };
    private final BluetoothGattServerCallback mGattServerCallback = new BluetoothGattServerCallback() { // from class: com.ocean.ble.BT4Base.4
        @Override // android.bluetooth.BluetoothGattServerCallback
        public void onCharacteristicWriteRequest(BluetoothDevice bluetoothDevice, int i, BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, boolean z2, int i2, byte[] bArr) {
            bluetoothGattCharacteristic.getUuid().toString().equalsIgnoreCase(BT4Base.ALERT_LEVEL_UUID.toString());
        }
    };
    private Runnable delayRunnable = new Runnable() { // from class: com.ocean.ble.BT4Base.5
        @Override // java.lang.Runnable
        public void run() {
            BT4Base.this.gatt_stopScanDevices();
        }
    };
    private OnBT4BaseListener mListener = null;
    public String strPhoneBtAddress = null;

    /* loaded from: classes.dex */
    public interface OnBT4BaseListener {
        void btDidConnected(BLEDeviceObject bLEDeviceObject);

        void btDidDisconnected(BLEDeviceObject bLEDeviceObject);

        void btDidGetAddress(String str);

        void btDidSearched(BLEDeviceObject bLEDeviceObject);

        void btDidSendData(String str);

        void btDidUpdateDevices();

        void btFailConnecting(int i);
    }

    public void iApp_GetVersion(BLEDeviceObject bLEDeviceObject) {
    }

    public BT4Base(Context context) {
        this.mainActivity = null;
        this.mainActivity = (MainActivity) context;
        init();
    }

    private void init() {
        if (this.mHandler != null) {
            return;
        }
        this.mHandler = new Handler();
        if (!this.mainActivity.getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            Toast.makeText(this.mainActivity, getResources().getString(R.string.bt_ble), 0).show();
            this.mainActivity.finish();
        }
        this.mBluetoothAdapter = ((BluetoothManager) this.mainActivity.getSystemService("bluetooth")).getAdapter();
        if (this.mBluetoothAdapter == null) {
            Toast.makeText(this.mainActivity, getResources().getString(R.string.bt_support), 0).show();
            this.mainActivity.finish();
        } else if (this.ui_mGattUpdateReceiver != null) {
            this.mainActivity.registerReceiver(this.ui_mGattUpdateReceiver, gatt_makeUpdateIntentFilter());
        }
    }

    private Resources getResources() {
        if (this.mainActivity != null) {
            return this.mainActivity.getResources();
        }
        return null;
    }

    private IntentFilter gatt_makeUpdateIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(GATT_APP_CONNECTED_DEVICE);
        intentFilter.addAction(GATT_APP_DISCONNECTED_DEVICE);
        intentFilter.addAction(GATT_APP_GET_DEVICE_RSSI);
        intentFilter.addAction(GATT_APP_GET_DEVICE_DATA);
        intentFilter.addAction(GATT_APP_GET_DEVICE_SERVICE);
        return intentFilter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ui_updateBroadcast(String str, int i) {
        Intent intent = new Intent(str);
        intent.putExtra(INTENT_EXTRA_DATA, i);
        this.mainActivity.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void array_addObjectByDevice(BluetoothDevice bluetoothDevice) {
        if (array_findObjectByAddress(bluetoothDevice.getAddress()) == -1) {
            BLEDeviceObject bLEDeviceObject = new BLEDeviceObject();
            bLEDeviceObject.tagDevice = bluetoothDevice;
            bLEDeviceObject.tagName = bluetoothDevice.getName();
            if (bluetoothDevice.getName().contains("JGHT-")) {
                bLEDeviceObject.tagDisplayName = bluetoothDevice.getName().substring(5);
            } else if (bluetoothDevice.getName().contains("HTC-")) {
                bLEDeviceObject.tagDisplayName = bluetoothDevice.getName().substring(4);
            } else {
                bLEDeviceObject.tagDisplayName = bluetoothDevice.getName();
            }
            bLEDeviceObject.tagAddress = bluetoothDevice.getAddress();
            bLEDeviceObject.tagType = null;
            bLEDeviceObject.tagStatus = 1;
            bLEDeviceObject.nDevPos = this.arrayBLEDevices.size();
            bLEDeviceObject.setOnBLEDeviceObjectListener(this.mainActivity);
            this.arrayBLEDevices.add(bLEDeviceObject);
            this.mListener.btDidSearched(bLEDeviceObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int array_findObjectByGatt(BluetoothGatt bluetoothGatt) {
        int size = this.arrayBLEDevices.size();
        for (int i = 0; i < size; i++) {
            BLEDeviceObject bLEDeviceObject = this.arrayBLEDevices.get(i);
            if (bLEDeviceObject.tagGatt != null && bluetoothGatt != null && bLEDeviceObject.tagGatt.equals(bluetoothGatt)) {
                return i;
            }
        }
        return -1;
    }

    private int array_findObjectByDevice(BluetoothDevice bluetoothDevice) {
        int size = this.arrayBLEDevices.size();
        for (int i = 0; i < size; i++) {
            BLEDeviceObject bLEDeviceObject = this.arrayBLEDevices.get(i);
            if (bLEDeviceObject.tagDevice != null && bluetoothDevice != null && bLEDeviceObject.tagDevice.getAddress().equals(bluetoothDevice.getAddress())) {
                return i;
            }
        }
        return -1;
    }

    public int array_findObjectByAddress(String str) {
        int size = this.arrayBLEDevices.size();
        for (int i = 0; i < size; i++) {
            BLEDeviceObject bLEDeviceObject = this.arrayBLEDevices.get(i);
            if (bLEDeviceObject.tagAddress != null && bLEDeviceObject.tagAddress.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public void gatt_readVersion(BluetoothGatt bluetoothGatt) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FFF0_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff0 service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FFF1_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff1 charateristic not found!");
                return;
            }
            return;
        }
        boolean readCharacteristic = bluetoothGatt.readCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_readData2FFF1() - status = " + readCharacteristic);
        }
    }

    public void gatt_readData2FFF1(BluetoothGatt bluetoothGatt) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FFF0_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff0 service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FFF1_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff1 charateristic not found!");
                return;
            }
            return;
        }
        boolean readCharacteristic = bluetoothGatt.readCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_readData2FFF1() - status = " + readCharacteristic);
        }
    }

    public boolean gatt_writeData2FFF1(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FFF0_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff0 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FFF1_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - fff1 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FFF1() - status = " + writeCharacteristic + " value = " + ((int) bArr[0]) + ((int) bArr[1]));
        }
        return writeCharacteristic;
    }

    public void gatt_readData2FF92(BluetoothGatt bluetoothGatt) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FF90_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff90 service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FF92_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff92 charateristic not found!");
                return;
            }
            return;
        }
        boolean readCharacteristic = bluetoothGatt.readCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_readData2FF92() - status = " + readCharacteristic);
        }
    }

    public boolean gatt_writeData2FF92(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FF90_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff90 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FF92_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff92 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FF92() - status = " + writeCharacteristic + " value = " + ((int) bArr[0]));
        }
        return writeCharacteristic;
    }

    public boolean gatt_writeData2FF95(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FF90_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff90 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FF95_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff95 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FF95() - status = " + writeCharacteristic + " value = " + ((int) bArr[0]));
        }
        return writeCharacteristic;
    }

    public boolean gatt_writeData2FF91(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FF90_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff90 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_RW_FF91_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff91 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FF91() - status = " + writeCharacteristic + " value = " + new String(bArr));
        }
        return writeCharacteristic;
    }

    public boolean gatt_writeData2FF94(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FF90_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff90 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_W_FF94_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ff94 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FF94() - status = " + writeCharacteristic + " value = " + new String(bArr));
        }
        return writeCharacteristic;
    }

    public boolean gatt_writeData2FFE9(BluetoothGatt bluetoothGatt, byte[] bArr) {
        BluetoothGattService service = bluetoothGatt.getService(JGHT_SERVICE_FFE0_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ffe0 service not found!");
            }
            return false;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(JGHT_WNR_FFE9_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - ffe9 charateristic not found!");
            }
            return false;
        }
        characteristic.setValue(bArr);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeData2FFE9() - status = " + writeCharacteristic + " value = " + new String(bArr));
        }
        return writeCharacteristic;
    }

    private void gatt_writeImmediateAlertLevelToRemote() {
        if (this.mGattServer == null) {
            BluetoothGattService bluetoothGattService = new BluetoothGattService(IMMEDIATE_ALERT_UUID, 0);
            bluetoothGattService.addCharacteristic(new BluetoothGattCharacteristic(ALERT_LEVEL_UUID, 4, 16));
            this.mGattServer = ((BluetoothManager) this.mainActivity.getSystemService("bluetooth")).openGattServer(this.mainActivity, this.mGattServerCallback);
            this.mGattServer.addService(bluetoothGattService);
        }
    }

    private void gatt_writeLinkLossAlertLevelToTag(BluetoothGatt bluetoothGatt, int i) {
        BluetoothGattService service = bluetoothGatt.getService(LINK_LOSS_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Link Loss Alert service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(ALERT_LEVEL_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Link Loss Alert Level charateristic not found!");
                return;
            }
            return;
        }
        characteristic.setValue(i, 17, 0);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeLinkLossAlertLevelToTag() - status = " + writeCharacteristic);
        }
    }

    private void gatt_writeImmediateAlertLevelToTag(BluetoothGatt bluetoothGatt, int i) {
        BluetoothGattService service = bluetoothGatt.getService(IMMEDIATE_ALERT_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Immediate Alert service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(ALERT_LEVEL_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Immediate Alert Level charateristic not found!");
                return;
            }
            return;
        }
        int writeType = characteristic.getWriteType();
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeImmediateAlertLevelToTag() - theDefaultWriteType = " + writeType);
        }
        characteristic.setValue(i, 17, 0);
        characteristic.setWriteType(1);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeImmediateAlertLevelToTag() - status = " + writeCharacteristic);
        }
    }

    private void gatt_readProximityTagName(BluetoothGatt bluetoothGatt) {
        BluetoothGattService service = bluetoothGatt.getService(GAP_SERVICE_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Gap service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(DEVICE_NAME_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Device Name charateristic not found!");
                return;
            }
            return;
        }
        boolean readCharacteristic = bluetoothGatt.readCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - readProximityTagName() - status = " + readCharacteristic);
        }
    }

    private void gatt_writeProximityTagName(BluetoothGatt bluetoothGatt, String str) {
        BluetoothGattService service = bluetoothGatt.getService(GAP_SERVICE_UUID);
        if (service == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Gap service not found!");
                return;
            }
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(DEVICE_NAME_UUID);
        if (characteristic == null) {
            if (this.isEnableLog) {
                Log.i(TAG_BT, "[error] - Device Name charateristic not found!");
                return;
            }
            return;
        }
        characteristic.setValue(str);
        characteristic.setWriteType(2);
        boolean writeCharacteristic = bluetoothGatt.writeCharacteristic(characteristic);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_writeDeviceName() - status = " + writeCharacteristic);
        }
    }

    private void gatt_startScanDevices() {
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_startScanDevice()");
        }
        this.isScanningTagDevices = true;
        this.mBluetoothAdapter.startLeScan(this.mLeScanCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gatt_stopScanDevices() {
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_stopScanDevice()");
        }
        this.isScanningTagDevices = false;
        this.mBluetoothAdapter.stopLeScan(this.mLeScanCallback);
    }

    private boolean gatt_readRssi(int i) {
        BLEDeviceObject bLEDeviceObject;
        if (i == -1 || i >= this.arrayBLEDevices.size() || (bLEDeviceObject = this.arrayBLEDevices.get(i)) == null || bLEDeviceObject.tagGatt == null || bLEDeviceObject.tagDevice == null || bLEDeviceObject.tagStatus != 2) {
            return false;
        }
        boolean readRemoteRssi = bLEDeviceObject.tagGatt.readRemoteRssi();
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[debug] - gatt_readRssi() - status = " + readRemoteRssi);
        }
        return readRemoteRssi;
    }

    public void didSearch() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.arrayBLEDevices.size(); i++) {
            BLEDeviceObject bLEDeviceObject = this.arrayBLEDevices.get(i);
            if (bLEDeviceObject.tagStatus != 2) {
                arrayList.add(bLEDeviceObject);
            }
        }
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            this.arrayBLEDevices.remove(arrayList.get(i2));
        }
        for (int i3 = 0; i3 < this.arrayBLEDevices.size(); i3++) {
            BLEDeviceObject bLEDeviceObject2 = this.arrayBLEDevices.get(i3);
            if (bLEDeviceObject2.tagStatus == 2) {
                bLEDeviceObject2.nDevPos = i3;
            }
        }
        if (this.isScanningTagDevices) {
            this.mHandler.removeCallbacks(this.delayRunnable);
            this.mHandler.postDelayed(this.delayRunnable, SCAN_PERIOD);
            return;
        }
        this.mHandler.postDelayed(this.delayRunnable, SCAN_PERIOD);
        gatt_startScanDevices();
    }

    public void didConnect(BLEDeviceObject bLEDeviceObject) {
        if (this.isScanningTagDevices) {
            this.mHandler.removeCallbacks(this.delayRunnable);
            gatt_stopScanDevices();
        }
        bLEDeviceObject.tagGatt = bLEDeviceObject.tagDevice.connectGatt(this.mainActivity, false, this.mGattCallback);
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[state] - didConnect " + bLEDeviceObject.tagName);
        }
    }

    public void didDisconnect(BLEDeviceObject bLEDeviceObject) {
        if (this.isEnableLog) {
            Log.i(TAG_BT, "[state] - didDisconnect " + bLEDeviceObject.tagName);
        }
        bLEDeviceObject.tagGatt.disconnect();
    }

    public void didDisconnectAll() {
        for (int i = 0; i < this.arrayBLEDevices.size(); i++) {
            BLEDeviceObject bLEDeviceObject = this.arrayBLEDevices.get(i);
            if (bLEDeviceObject != null && bLEDeviceObject.tagStatus == 2) {
                bLEDeviceObject.tagGatt.disconnect();
                bLEDeviceObject.tagGatt.close();
                this.nSelectedObjNo = -1;
            }
        }
    }

    public boolean didSendData(BluetoothGatt bluetoothGatt, byte[] bArr) {
        if (bluetoothGatt != null) {
            return gatt_writeData2FFF1(bluetoothGatt, bArr);
        }
        return false;
    }

    public boolean iApp_SetGpio(BLEDeviceObject bLEDeviceObject, String str) {
        return gatt_writeData2FFE9(bLEDeviceObject.tagGatt, str.getBytes());
    }

    public void iApp_GetGpioStatus(BLEDeviceObject bLEDeviceObject) {
        gatt_readData2FFF1(bLEDeviceObject.tagGatt);
    }

    public void iApp_SetComInterval(BLEDeviceObject bLEDeviceObject) {
        gatt_writeData2FF92(bLEDeviceObject.tagGatt, new byte[]{0});
    }

    public void iApp_SetAdsInterval(BLEDeviceObject bLEDeviceObject) {
        gatt_writeData2FF95(bLEDeviceObject.tagGatt, new byte[]{8});
    }

    public boolean iApp_SetTagName(BLEDeviceObject bLEDeviceObject, byte[] bArr) {
        return gatt_writeData2FF91(bLEDeviceObject.tagGatt, bArr);
    }

    public boolean iApp_RestoreTag(BLEDeviceObject bLEDeviceObject, byte[] bArr) {
        return gatt_writeData2FF94(bLEDeviceObject.tagGatt, bArr);
    }

    public boolean iApp_GetTagRssi(int i) {
        return gatt_readRssi(i);
    }

    public void setOnBT4BaseListener(OnBT4BaseListener onBT4BaseListener) {
        this.mListener = onBT4BaseListener;
    }

    public void didGetBtAddressByReflection() {
        String string = Settings.Secure.getString(this.mainActivity.getContentResolver(), "android_id");
        if (string == null) {
            this.strPhoneBtAddress = "02:00:00:00:00:00:00:00";
        } else {
            this.strPhoneBtAddress = string.substring(0, 2) + ":" + string.substring(2, 4) + ":" + string.substring(4, 6) + ":" + string.substring(6, 8) + ":" + string.substring(8, 10) + ":" + string.substring(10, 12) + ":" + string.substring(12, 14) + ":" + string.substring(14, 16);
        }
        if (this.mListener != null) {
            this.mListener.btDidGetAddress(this.strPhoneBtAddress);
        }
    }
}
