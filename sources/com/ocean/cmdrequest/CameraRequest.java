package com.ocean.cmdrequest;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.format.Time;
import android.util.Log;
import androidx.core.view.PointerIconCompat;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.ocean.gamecamerapro2.R;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
/* loaded from: classes.dex */
public class CameraRequest {
    private static final int MSG_SET_CMD_FAIL = 1;
    private static final int MSG_SET_CMD_SUCC = 0;
    private static final String TAG = "Game Camera Pro/CameraRequest";
    public String G_strProjectID;
    private Handler handleCmdRet = new Handler(new Handler.Callback() { // from class: com.ocean.cmdrequest.CameraRequest.17
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    if (message.arg1 == 3001 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetModeSucc(message.arg2);
                        break;
                    } else if (message.arg1 == 3031 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetCmd3031Succ((HashMap) message.obj);
                        break;
                    } else if (message.arg1 == 3012 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetModelIDSucc((HashMap) message.obj);
                        break;
                    } else if (message.arg1 == 3016 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetModeSucc(message.arg2);
                        break;
                    } else if (message.arg1 == 3005 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetDateSucc();
                        break;
                    } else if (message.arg1 == 3006 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetTimeSucc();
                        break;
                    } else if (message.arg1 == -1 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdSucc(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -2 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdSucc(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -3 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdSucc(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -4 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdSucc(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == 1001 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSnapshotSucc(0);
                        break;
                    } else if (message.arg1 == 20011 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidRecordSucc(1, 0);
                        break;
                    } else if (message.arg1 == 20010 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidRecordSucc(0, 0);
                        break;
                    } else if (message.arg1 == 3014 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetSettingsSucc((HashMap) message.obj);
                        break;
                    } else if (message.arg1 == 3017 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetSDFreeSpaceSucc(message.arg2);
                        break;
                    } else if (message.arg1 == 3015 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetFileListSucc((ArrayList) message.obj);
                        break;
                    } else if (message.arg1 == 2016 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetRetStatusSucc(message.arg2);
                        break;
                    } else if (message.arg1 == 3019 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetBatterySucc(message.arg2);
                        break;
                    } else if (message.arg1 == 9026 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetCmd9026Succ(message.arg2);
                        break;
                    }
                    break;
                case 1:
                    if (message.arg1 == 3001 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetModeFail(message.arg2);
                        break;
                    } else if (message.arg1 == 3031 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetCmd3031Fail();
                        break;
                    } else if (message.arg1 == 3012 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetModelIDFail();
                        break;
                    } else if (message.arg1 == 3016 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetModeFail();
                        break;
                    } else if (message.arg1 == 3005 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetDateFail();
                        break;
                    } else if (message.arg1 == 3006 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSetTimeFail();
                        break;
                    } else if (message.arg1 == -1 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdFail(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -2 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdFail(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -3 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdFail(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == -4 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSendCmdFail(message.arg1, message.arg2);
                        break;
                    } else if (message.arg1 == 1001 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidSnapshotFail(message.arg2);
                        break;
                    } else if (message.arg1 == 20011 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidRecordFail(1, message.arg2);
                        break;
                    } else if (message.arg1 == 20010 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidRecordFail(0, message.arg2);
                        break;
                    } else if (message.arg1 == 3014 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetSettingsFail((HashMap) message.obj);
                        break;
                    } else if (message.arg1 == 3017 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetSDFreeSpaceFail();
                        break;
                    } else if (message.arg1 == 3015 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetFileListFail();
                        break;
                    } else if (message.arg1 == 2016 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetRetStatusFail();
                        break;
                    } else if (message.arg1 == 3019 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetBatteryFail();
                        break;
                    } else if (message.arg1 == 9026 && CameraRequest.this.mListener != null) {
                        CameraRequest.this.mListener.camDidGetCmd9026Fail();
                        break;
                    }
                    break;
            }
            return false;
        }
    });
    private OnCameraRequestListener mListener = null;

    /* loaded from: classes.dex */
    public interface OnCameraRequestListener {
        void camDidGetBatteryFail();

        void camDidGetBatterySucc(int i);

        void camDidGetCmd3031Fail();

        void camDidGetCmd3031Succ(HashMap<String, ArrayList<ArrayList<String>>> hashMap);

        void camDidGetCmd9026Fail();

        void camDidGetCmd9026Succ(int i);

        void camDidGetFileListFail();

        void camDidGetFileListSucc(ArrayList<HashMap<String, String>> arrayList);

        void camDidGetIDFail();

        void camDidGetIDSucc(String str);

        void camDidGetModeFail();

        void camDidGetModeSucc(int i);

        void camDidGetModelIDFail();

        void camDidGetModelIDSucc(HashMap<String, String> hashMap);

        void camDidGetRetStatusFail();

        void camDidGetRetStatusSucc(int i);

        void camDidGetSDFreeSpaceFail();

        void camDidGetSDFreeSpaceSucc(int i);

        void camDidGetSettingsFail(HashMap<String, Integer> hashMap);

        void camDidGetSettingsSucc(HashMap<String, Integer> hashMap);

        void camDidRecordFail(int i, int i2);

        void camDidRecordSucc(int i, int i2);

        void camDidSendCmdFail(int i, int i2);

        void camDidSendCmdSucc(int i, int i2);

        void camDidSetDateFail();

        void camDidSetDateSucc();

        void camDidSetModeFail(int i);

        void camDidSetModeSucc(int i);

        void camDidSetTimeFail();

        void camDidSetTimeSucc();

        void camDidSnapshotFail(int i);

        void camDidSnapshotSucc(int i);
    }

    public void isConnectCamera() {
    }

    public void setCamLight(int i) {
    }

    public CameraRequest(Context context) {
        this.G_strProjectID = null;
        this.G_strProjectID = context.getSharedPreferences(context.getString(R.string.app_name), 0).getString("Project ID", "error");
    }

    protected void finalize() throws Throwable {
        super.finalize();
    }

    public void setCameraMode(final int i) {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.1
            @Override // java.lang.Runnable
            public void run() {
                CameraRequest cameraRequest = CameraRequest.this;
                HashMap<String, Integer> xmlStreamDecode1 = cameraRequest.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3001&par=" + i);
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("3001") && xmlStreamDecode1.get("3001").intValue() == 0) {
                    message.what = 0;
                    message.arg1 = 3001;
                    message.arg2 = i;
                } else {
                    message.what = 1;
                    message.arg1 = 3001;
                    message.arg2 = i;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraMode() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.2
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3016");
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("3016")) {
                    message.what = 0;
                    message.arg1 = 3016;
                    message.arg2 = xmlStreamDecode1.get("3016").intValue();
                } else {
                    message.what = 1;
                    message.arg1 = 3016;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void setCameraRecord(final int i) {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.3
            @Override // java.lang.Runnable
            public void run() {
                CameraRequest cameraRequest = CameraRequest.this;
                HashMap<String, Integer> xmlStreamDecode1 = cameraRequest.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=2001&par=" + String.valueOf(i));
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("2001")) {
                    if (xmlStreamDecode1.get("2001").intValue() == 0) {
                        message.what = 0;
                        message.arg1 = i + 20010;
                        message.arg2 = xmlStreamDecode1.get("2001").intValue();
                    } else {
                        message.what = 1;
                        message.arg1 = i + 20010;
                        message.arg2 = xmlStreamDecode1.get("2001").intValue();
                    }
                } else {
                    message.what = 1;
                    message.arg1 = i + 20010;
                    message.arg2 = -99;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void setCameraSnapshot() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.4
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=1001");
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("1001")) {
                    if (xmlStreamDecode1.get("1001").intValue() == 0) {
                        message.what = 0;
                        message.arg1 = PointerIconCompat.TYPE_CONTEXT_MENU;
                        message.arg2 = xmlStreamDecode1.get("1001").intValue();
                    } else {
                        message.what = 1;
                        message.arg1 = PointerIconCompat.TYPE_CONTEXT_MENU;
                        message.arg2 = xmlStreamDecode1.get("1001").intValue();
                    }
                } else {
                    message.what = 1;
                    message.arg1 = PointerIconCompat.TYPE_CONTEXT_MENU;
                    message.arg2 = -99;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraRecStatus() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.5
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=2016");
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("2016")) {
                    message.what = 0;
                    message.arg1 = 2016;
                    message.arg2 = xmlStreamDecode1.get("2016").intValue();
                } else {
                    message.what = 1;
                    message.arg1 = 2016;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraBattery() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.6
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3019");
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("3019")) {
                    message.what = 0;
                    message.arg1 = 3019;
                    message.arg2 = xmlStreamDecode1.get("3019").intValue();
                } else {
                    message.what = 1;
                    message.arg1 = 3019;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraDevcieID() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.7
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, String> xmlStreamDecode = CameraRequest.this.xmlStreamDecode("http://192.168.8.120/?custom=1&cmd=3031&str=");
                Message message = new Message();
                if (xmlStreamDecode != null && xmlStreamDecode.containsKey("Id50")) {
                    message.what = 0;
                    message.arg1 = 3031;
                    message.obj = xmlStreamDecode.get("Id50");
                } else {
                    message.what = 1;
                    message.arg1 = 3031;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraModelID() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.8
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, String> xmlStreamDecode = CameraRequest.this.xmlStreamDecode("http://192.168.8.120/?custom=1&cmd=3012");
                Message message = new Message();
                if (xmlStreamDecode != null) {
                    message.what = 0;
                    message.arg1 = 3012;
                    message.obj = xmlStreamDecode;
                } else {
                    message.what = 1;
                    message.arg1 = 3012;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraSettings() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.9
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3014");
                Message message = new Message();
                if (xmlStreamDecode1 != null) {
                    message.what = 0;
                    message.arg1 = 3014;
                    message.obj = xmlStreamDecode1;
                } else {
                    message.what = 1;
                    message.arg1 = 3014;
                    message.obj = xmlStreamDecode1;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void setCameraDate() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.10
            @Override // java.lang.Runnable
            public void run() {
                Time time = new Time();
                time.setToNow();
                String format = String.format("%04d-%02d-%02d", Integer.valueOf(time.year), Integer.valueOf(time.month + 1), Integer.valueOf(time.monthDay));
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3005&str=" + format);
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("3005") && xmlStreamDecode1.get("3005").intValue() == 0) {
                    message.what = 0;
                    message.arg1 = 3005;
                } else {
                    message.what = 1;
                    message.arg1 = 3005;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void setCameraTime() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.11
            @Override // java.lang.Runnable
            public void run() {
                Time time = new Time();
                time.setToNow();
                String format = String.format("%02d:%02d:%02d", Integer.valueOf(time.hour), Integer.valueOf(time.minute), Integer.valueOf(time.second));
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1("http://192.168.8.120/?custom=1&cmd=3006&str=" + format);
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey("3006") && xmlStreamDecode1.get("3006").intValue() == 0) {
                    message.what = 0;
                    message.arg1 = 3006;
                } else {
                    message.what = 1;
                    message.arg1 = 3006;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public boolean delCameraFile(ArrayList<String> arrayList) {
        if (arrayList == null) {
            String httpRequest = setHttpRequest("http://192.168.8.120/?custom=1&cmd=4004");
            Log.e("MaKyo", "" + httpRequest);
            int indexOf = httpRequest.indexOf("<Status>") + "<Status>".length();
            int indexOf2 = httpRequest.indexOf("</Status>");
            if (indexOf < 0 || indexOf2 < 0) {
                return false;
            }
            String substring = httpRequest.substring(indexOf, indexOf2);
            Log.e("MaKyo", "" + substring);
            return "0".equals(substring);
        } else if (arrayList.size() > 0) {
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next.contains(".JPG")) {
                    String httpRequest2 = setHttpRequest("http://192.168.8.120/?custom=1&cmd=4003&str=A:\\DCIM\\PHOTO\\" + next);
                    Log.e("MaKyo", "" + httpRequest2);
                } else {
                    String httpRequest3 = setHttpRequest("http://192.168.8.120/?custom=1&cmd=4003&str=A:\\DCIM\\MOVIE\\" + next);
                    Log.e("MaKyo", "" + httpRequest3);
                }
            }
            return true;
        } else {
            return false;
        }
    }

    public void getSDFreeSpace() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.12
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode3 = CameraRequest.this.xmlStreamDecode3("http://192.168.8.120/?custom=1&cmd=3017");
                Message message = new Message();
                if (xmlStreamDecode3 != null && xmlStreamDecode3.containsKey("3017")) {
                    message.what = 0;
                    message.arg1 = 3017;
                    message.arg2 = xmlStreamDecode3.get("3017").intValue();
                } else {
                    message.what = 1;
                    message.arg1 = 3017;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraFileList() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.13
            @Override // java.lang.Runnable
            public void run() {
                ArrayList<HashMap<String, String>> xmlStreamDecode4 = CameraRequest.this.xmlStreamDecode4("http://192.168.8.120/?custom=1&cmd=3015");
                Message message = new Message();
                if (xmlStreamDecode4 != null) {
                    message.what = 0;
                    message.arg1 = 3015;
                    message.obj = xmlStreamDecode4;
                } else {
                    message.what = 1;
                    message.arg1 = 3015;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraCmd3031() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.14
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, ArrayList<ArrayList<String>>> xmlStreamDecode5 = CameraRequest.this.xmlStreamDecode5("http://192.168.8.120/?custom=1&cmd=3031&str=");
                Message message = new Message();
                if (xmlStreamDecode5 != null) {
                    message.what = 0;
                    message.arg1 = 3031;
                    message.obj = xmlStreamDecode5;
                } else {
                    message.what = 1;
                    message.arg1 = 3031;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void getCameraCmd9026() {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.15
            @Override // java.lang.Runnable
            public void run() {
                HashMap<String, Integer> xmlStreamDecode3 = CameraRequest.this.xmlStreamDecode3("http://192.168.8.120/?custom=1&cmd=9026");
                Message message = new Message();
                if (xmlStreamDecode3 != null) {
                    message.what = 0;
                    message.arg1 = 9026;
                    message.arg2 = xmlStreamDecode3.get("9026").intValue();
                } else {
                    message.what = 1;
                    message.arg1 = 9026;
                    message.arg2 = -1;
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public void sendCmd(final int i, final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.ocean.cmdrequest.CameraRequest.16
            @Override // java.lang.Runnable
            public void run() {
                String str3;
                if (i == -3) {
                    str3 = "http://192.168.8.120/?custom=1&cmd=" + str + "&str=" + str2;
                } else if (i == -4) {
                    str3 = "http://192.168.8.120/?custom=1&cmd=" + str;
                } else {
                    str3 = "http://192.168.8.120/?custom=1&cmd=" + str + "&par=" + str2;
                }
                HashMap<String, Integer> xmlStreamDecode1 = CameraRequest.this.xmlStreamDecode1(str3);
                Message message = new Message();
                if (xmlStreamDecode1 != null && xmlStreamDecode1.containsKey(str) && xmlStreamDecode1.get(str).intValue() == 0) {
                    message.what = 0;
                    message.arg1 = i;
                    message.arg2 = Integer.parseInt(str);
                } else {
                    message.what = 1;
                    message.arg1 = i;
                    message.arg2 = Integer.parseInt(str);
                }
                CameraRequest.this.handleCmdRet.sendMessage(message);
            }
        }).start();
    }

    public boolean isHeartBeating() {
        int read;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("http://192.168.8.120/?custom=1&cmd=3016").openConnection();
            if (httpURLConnection == null) {
                return false;
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setConnectTimeout(3000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("accept", "*/*");
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[1024];
            String str = "";
            while (true) {
                if (inputStream.read(bArr, 0, bArr.length) > 0) {
                    str = str + new String(bArr, 0, read);
                } else {
                    httpURLConnection.disconnect();
                    inputStream.close();
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public HashMap<String, String> xmlStreamDecode(String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        String httpRequest = setHttpRequest(str);
        if (httpRequest == null) {
            return null;
        }
        try {
            Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(httpRequest))).getDocumentElement();
            NodeList elementsByTagName = documentElement.getElementsByTagName("Cmd");
            NodeList elementsByTagName2 = documentElement.getElementsByTagName("Status");
            NodeList elementsByTagName3 = documentElement.getElementsByTagName("String");
            NodeList elementsByTagName4 = documentElement.getElementsByTagName("Id");
            for (int i = 0; i < elementsByTagName.getLength(); i++) {
                hashMap.put("Cmd", ((Element) elementsByTagName.item(i)).getTextContent());
            }
            for (int i2 = 0; i2 < elementsByTagName2.getLength(); i2++) {
                hashMap.put("Status", ((Element) elementsByTagName2.item(i2)).getTextContent());
            }
            for (int i3 = 0; i3 < elementsByTagName3.getLength(); i3++) {
                hashMap.put("String" + String.valueOf(i3), ((Element) elementsByTagName3.item(i3)).getTextContent());
            }
            for (int i4 = 0; i4 < elementsByTagName4.getLength(); i4++) {
                hashMap.put("Id" + String.valueOf(i4), ((Element) elementsByTagName4.item(i4)).getTextContent());
            }
            return hashMap;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public HashMap<String, Integer> xmlStreamDecode1(String str) {
        HashMap<String, Integer> hashMap = new HashMap<>();
        String httpRequest = setHttpRequest(str);
        if (httpRequest == null) {
            return null;
        }
        try {
            Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(httpRequest))).getDocumentElement();
            NodeList elementsByTagName = documentElement.getElementsByTagName("Cmd");
            NodeList elementsByTagName2 = documentElement.getElementsByTagName("Status");
            if (elementsByTagName.getLength() == elementsByTagName2.getLength()) {
                int length = elementsByTagName.getLength();
                for (int i = 0; i < length; i++) {
                    hashMap.put(((Element) elementsByTagName.item(i)).getTextContent(), Integer.valueOf(Integer.parseInt(((Element) elementsByTagName2.item(i)).getTextContent())));
                }
                return hashMap;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public HashMap<String, Integer> xmlStreamDecode2(String str) {
        HashMap<String, Integer> hashMap = new HashMap<>();
        try {
            Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(str))).getDocumentElement();
            NodeList elementsByTagName = documentElement.getElementsByTagName("Cmd");
            NodeList elementsByTagName2 = documentElement.getElementsByTagName("Status");
            if (elementsByTagName.getLength() == elementsByTagName2.getLength()) {
                int length = elementsByTagName.getLength();
                for (int i = 0; i < length; i++) {
                    hashMap.put(((Element) elementsByTagName.item(i)).getTextContent(), Integer.valueOf(Integer.parseInt(((Element) elementsByTagName2.item(i)).getTextContent())));
                }
                return hashMap;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public HashMap<String, Integer> xmlStreamDecode3(String str) {
        HashMap<String, Integer> hashMap = new HashMap<>();
        String httpRequest = setHttpRequest(str);
        if (httpRequest == null) {
            return null;
        }
        try {
            Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(httpRequest))).getDocumentElement();
            NodeList elementsByTagName = documentElement.getElementsByTagName("Cmd");
            NodeList elementsByTagName2 = documentElement.getElementsByTagName("Value");
            if (elementsByTagName.getLength() == elementsByTagName2.getLength()) {
                int length = elementsByTagName.getLength();
                for (int i = 0; i < length; i++) {
                    Element element = (Element) elementsByTagName.item(i);
                    String textContent = ((Element) elementsByTagName2.item(i)).getTextContent();
                    int length2 = textContent.length();
                    if (length2 > 3) {
                        textContent = textContent.substring(0, length2 - 3);
                    }
                    hashMap.put(element.getTextContent(), Integer.valueOf(textContent));
                }
                return hashMap;
            }
            return null;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public ArrayList<HashMap<String, String>> xmlStreamDecode4(String str) {
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        String httpRequest = setHttpRequest(str);
        if (httpRequest == null) {
            return null;
        }
        try {
            Element documentElement = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(httpRequest))).getDocumentElement();
            NodeList elementsByTagName = documentElement.getElementsByTagName("NAME");
            NodeList elementsByTagName2 = documentElement.getElementsByTagName("FPATH");
            NodeList elementsByTagName3 = documentElement.getElementsByTagName("SIZE");
            NodeList elementsByTagName4 = documentElement.getElementsByTagName("TIME");
            NodeList elementsByTagName5 = documentElement.getElementsByTagName("TIMECODE");
            for (int i = 0; i < elementsByTagName.getLength(); i++) {
                HashMap<String, String> hashMap = new HashMap<>();
                hashMap.put("Name", ((Element) elementsByTagName.item(i)).getTextContent());
                hashMap.put("Path", ((Element) elementsByTagName2.item(i)).getTextContent());
                hashMap.put("Size", ((Element) elementsByTagName3.item(i)).getTextContent());
                hashMap.put("Time", ((Element) elementsByTagName4.item(i)).getTextContent());
                hashMap.put("TimeCode", ((Element) elementsByTagName5.item(i)).getTextContent());
                arrayList.add(hashMap);
            }
            return arrayList;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public HashMap<String, ArrayList<ArrayList<String>>> xmlStreamDecode5(String str) {
        HashMap<String, ArrayList<ArrayList<String>>> hashMap = new HashMap<>();
        String httpRequest = setHttpRequest(str);
        if (httpRequest == null) {
            return null;
        }
        try {
            NodeList elementsByTagName = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new InputSource(new StringReader(httpRequest))).getDocumentElement().getElementsByTagName("Item");
            ArrayList<String> arrayList = new ArrayList<>();
            ArrayList<String> arrayList2 = new ArrayList<>();
            ArrayList<ArrayList<String>> arrayList3 = new ArrayList<>();
            if (!this.G_strProjectID.equalsIgnoreCase("RD5009PRO")) {
                ArrayList<String> arrayList4 = new ArrayList<>();
                ArrayList<String> arrayList5 = new ArrayList<>();
                ArrayList<String> arrayList6 = new ArrayList<>();
                ArrayList<String> arrayList7 = new ArrayList<>();
                ArrayList<ArrayList<String>> arrayList8 = new ArrayList<>();
                ArrayList<ArrayList<String>> arrayList9 = new ArrayList<>();
                int i = 0;
                while (i < elementsByTagName.getLength()) {
                    Element element = (Element) elementsByTagName.item(i);
                    NodeList elementsByTagName2 = element.getElementsByTagName("Cmd");
                    NodeList elementsByTagName3 = element.getElementsByTagName("MenuList");
                    NodeList nodeList = elementsByTagName;
                    if (elementsByTagName2.getLength() == 1 && elementsByTagName3.getLength() == 1) {
                        NodeList elementsByTagName4 = ((Element) elementsByTagName3.item(0)).getElementsByTagName("Option");
                        int i2 = 0;
                        while (i2 < elementsByTagName4.getLength()) {
                            Element element2 = (Element) elementsByTagName4.item(i2);
                            NodeList nodeList2 = elementsByTagName4;
                            NodeList elementsByTagName5 = element2.getElementsByTagName("Index");
                            HashMap<String, ArrayList<ArrayList<String>>> hashMap2 = hashMap;
                            NodeList elementsByTagName6 = element2.getElementsByTagName("Id");
                            ArrayList<ArrayList<String>> arrayList10 = arrayList3;
                            if (elementsByTagName5.getLength() == 1 && elementsByTagName6.getLength() == 1) {
                                String textContent = elementsByTagName2.item(0).getTextContent();
                                if (elementsByTagName5 != null) {
                                    if (textContent.equalsIgnoreCase("1002")) {
                                        arrayList6.add(elementsByTagName5.item(0).getTextContent());
                                    } else if (textContent.equalsIgnoreCase("2002")) {
                                        arrayList7.add(elementsByTagName5.item(0).getTextContent());
                                    } else if (textContent.equalsIgnoreCase("9010")) {
                                        arrayList2.add(elementsByTagName5.item(0).getTextContent());
                                    }
                                }
                                if (elementsByTagName6 != null) {
                                    if (textContent.equalsIgnoreCase("1002")) {
                                        arrayList4.add(elementsByTagName6.item(0).getTextContent());
                                    } else if (textContent.equalsIgnoreCase("2002")) {
                                        arrayList5.add(elementsByTagName6.item(0).getTextContent());
                                    } else if (textContent.equalsIgnoreCase("9010")) {
                                        arrayList.add(elementsByTagName6.item(0).getTextContent());
                                    }
                                }
                            }
                            i2++;
                            elementsByTagName4 = nodeList2;
                            hashMap = hashMap2;
                            arrayList3 = arrayList10;
                        }
                    }
                    i++;
                    elementsByTagName = nodeList;
                    hashMap = hashMap;
                    arrayList3 = arrayList3;
                }
                HashMap<String, ArrayList<ArrayList<String>>> hashMap3 = hashMap;
                ArrayList<ArrayList<String>> arrayList11 = arrayList3;
                arrayList8.add(arrayList4);
                arrayList8.add(arrayList6);
                arrayList9.add(arrayList5);
                arrayList9.add(arrayList7);
                arrayList11.add(arrayList);
                arrayList11.add(arrayList2);
                hashMap3.put("1002", arrayList8);
                hashMap3.put("2002", arrayList9);
                hashMap3.put("9010", arrayList11);
                return hashMap3;
            }
            NodeList nodeList3 = elementsByTagName;
            ArrayList<String> arrayList12 = new ArrayList<>();
            ArrayList<String> arrayList13 = new ArrayList<>();
            ArrayList<String> arrayList14 = new ArrayList<>();
            ArrayList<String> arrayList15 = new ArrayList<>();
            ArrayList<String> arrayList16 = new ArrayList<>();
            ArrayList<String> arrayList17 = new ArrayList<>();
            ArrayList<String> arrayList18 = new ArrayList<>();
            ArrayList<String> arrayList19 = new ArrayList<>();
            ArrayList<ArrayList<String>> arrayList20 = new ArrayList<>();
            ArrayList<ArrayList<String>> arrayList21 = new ArrayList<>();
            ArrayList<ArrayList<String>> arrayList22 = new ArrayList<>();
            ArrayList<ArrayList<String>> arrayList23 = new ArrayList<>();
            int i3 = 0;
            while (i3 < nodeList3.getLength()) {
                NodeList nodeList4 = nodeList3;
                Element element3 = (Element) nodeList4.item(i3);
                ArrayList<ArrayList<String>> arrayList24 = arrayList22;
                NodeList elementsByTagName7 = element3.getElementsByTagName("Cmd");
                ArrayList<ArrayList<String>> arrayList25 = arrayList21;
                NodeList elementsByTagName8 = element3.getElementsByTagName("MenuList");
                ArrayList<ArrayList<String>> arrayList26 = arrayList20;
                if (elementsByTagName7.getLength() == 1 && elementsByTagName8.getLength() == 1) {
                    NodeList elementsByTagName9 = ((Element) elementsByTagName8.item(0)).getElementsByTagName("Option");
                    int i4 = 0;
                    while (i4 < elementsByTagName9.getLength()) {
                        Element element4 = (Element) elementsByTagName9.item(i4);
                        NodeList nodeList5 = elementsByTagName9;
                        NodeList elementsByTagName10 = element4.getElementsByTagName("Index");
                        int i5 = i3;
                        NodeList elementsByTagName11 = element4.getElementsByTagName("Id");
                        int i6 = i4;
                        if (elementsByTagName10.getLength() == 1 && elementsByTagName11.getLength() == 1) {
                            String textContent2 = elementsByTagName7.item(0).getTextContent();
                            if (elementsByTagName10 != null) {
                                if (textContent2.equalsIgnoreCase("9025")) {
                                    arrayList16.add(elementsByTagName10.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9024")) {
                                    arrayList17.add(elementsByTagName10.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9022")) {
                                    arrayList18.add(elementsByTagName10.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9023")) {
                                    arrayList19.add(elementsByTagName10.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9010")) {
                                    arrayList2.add(elementsByTagName10.item(0).getTextContent());
                                }
                            }
                            if (elementsByTagName11 != null) {
                                if (textContent2.equalsIgnoreCase("9025")) {
                                    arrayList12.add(elementsByTagName11.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9024")) {
                                    arrayList13.add(elementsByTagName11.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9022")) {
                                    arrayList14.add(elementsByTagName11.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9023")) {
                                    arrayList15.add(elementsByTagName11.item(0).getTextContent());
                                } else if (textContent2.equalsIgnoreCase("9010")) {
                                    arrayList.add(elementsByTagName11.item(0).getTextContent());
                                    i4 = i6 + 1;
                                    elementsByTagName9 = nodeList5;
                                    i3 = i5;
                                }
                            }
                        }
                        i4 = i6 + 1;
                        elementsByTagName9 = nodeList5;
                        i3 = i5;
                    }
                }
                i3++;
                nodeList3 = nodeList4;
                arrayList22 = arrayList24;
                arrayList21 = arrayList25;
                arrayList20 = arrayList26;
            }
            ArrayList<ArrayList<String>> arrayList27 = arrayList20;
            ArrayList<ArrayList<String>> arrayList28 = arrayList21;
            ArrayList<ArrayList<String>> arrayList29 = arrayList22;
            arrayList27.add(arrayList12);
            arrayList27.add(arrayList16);
            arrayList28.add(arrayList13);
            arrayList28.add(arrayList17);
            arrayList29.add(arrayList14);
            arrayList29.add(arrayList18);
            arrayList23.add(arrayList15);
            arrayList23.add(arrayList19);
            arrayList3.add(arrayList);
            arrayList3.add(arrayList2);
            hashMap.put("9025", arrayList27);
            hashMap.put("9024", arrayList28);
            hashMap.put("9022", arrayList29);
            hashMap.put("9023", arrayList23);
            hashMap.put("9010", arrayList3);
            return hashMap;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        } catch (ParserConfigurationException e2) {
            e2.printStackTrace();
            return null;
        } catch (SAXException e3) {
            e3.printStackTrace();
            return null;
        }
    }

    public String setHttpRequest(String str) {
        int read;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection == null) {
                return null;
            }
            httpURLConnection.setDoInput(true);
            httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setRequestProperty("accept", "*/*");
            httpURLConnection.connect();
            InputStream inputStream = httpURLConnection.getInputStream();
            byte[] bArr = new byte[10240];
            String str2 = "";
            while (true) {
                if (inputStream.read(bArr, 0, bArr.length) > 0) {
                    str2 = str2 + new String(bArr, 0, read);
                    try {
                        Thread.currentThread();
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                    }
                } else {
                    httpURLConnection.disconnect();
                    inputStream.close();
                    return str2;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void setOnCameraRequestListener(OnCameraRequestListener onCameraRequestListener) {
        this.mListener = onCameraRequestListener;
    }
}
