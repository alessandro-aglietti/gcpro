package com.ocean.util;
/* loaded from: classes.dex */
public class StateTag {
    public static final int CONNECT_CAMERA = 257;
    public static final int CONNECT_WIFI_DELAY = 262;
    public static final int EDIT_CAMERA_TIME = 259;
    public static final String HTTP_PATH = "http://192.168.8.120:8192";
    public static final int MODE_ERROR = -1;
    public static final int MODE_GALLERY = 2;
    public static final int MODE_PHOTO = 0;
    public static final int MODE_PHOTO_DELAY = 4;
    public static final int MODE_VIDEO = 1;
    public static final int MODE_VIDEO_DELAY = 3;
    public static final int PAUSE = 3;
    public static final int RECORD_START = 1;
    public static final int RECORD_STOP = 0;
    public static final int RESUME = 1;
    public static final int RET_MOVIE_TIMELAPSE_START = 1;
    public static final int RET_MOVIE_TIMELAPSE_STOP = 2;
    public static final int RET_PHOTO_TIMELAPSE_START = 10;
    public static final int RET_PHOTO_TIMELAPSE_STOP = 11;
    public static final int RET_RECORD_STARTED = 8;
    public static final int RET_RECORD_STOPPED = 9;
    public static final String RTSP_PATH = "http://192.168.8.120:8192";
    public static final int START_PLAYBACK_ACTIVITY = 260;
    public static final int START_SETTINGS_ACTIVITY = 261;
    public static final int START_VIDEO_ACTIVITY = 258;
    public static final int STOP = 2;
    public static final int UPDATE_WIFI_STATE = 263;
    public static final int WIFIAPP_RET_BATTERY_LOW = -10;
    public static final int WIFIAPP_RET_DISCONNECT = -100;
    public static final int WIFIAPP_RET_NO_CARD = -23;
    public static final int WIFIAPP_RET_NULL = -99;
    public static final int WIFIAPP_RET_STORAGE_FULL = -11;
    public static final String WIFI_ACTION = "android.net.wifi.RSSI_CHANGED";

    /* loaded from: classes.dex */
    public enum CameraVersion {
        _660(1),
        _M20(2),
        _other(3),
        _SJ5000WIFI(4),
        _X2000(5),
        _V1(6);
        
        private String ManaName = "no";
        private String OriginInfo = null;
        private int nCode;

        public String getPicDelay(int i) {
            return i == 0 ? "/3S" : i == 1 ? "/5S" : i == 2 ? "/10S" : i == 3 ? "/20S" : "/unknow";
        }

        public String getVideoDelay(int i) {
            return i == 0 ? "/1s" : i == 1 ? "/2s" : i == 2 ? "/3s" : i == 3 ? "/10s" : i == 4 ? "/30s" : i == 5 ? "/60s" : "/unknow";
        }

        CameraVersion(int i) {
            this.nCode = i;
        }

        public String getOriginInfo() {
            return this.OriginInfo;
        }

        public void setOriginInfo(String str) {
            this.OriginInfo = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return String.valueOf(this.nCode);
        }

        public String getManaName() {
            return this.ManaName;
        }

        public void setManaName(String str) {
            this.ManaName = str;
        }

        public String getVideoDPI(int i) {
            if (this.nCode == 2) {
                switch (i) {
                    case 0:
                        return "2K 30fps";
                    case 1:
                        return "1080P 60fps";
                    case 2:
                        return "1080P 30fps";
                    case 3:
                        return "720P 120fps";
                    case 4:
                        return "720P 60fps";
                    case 5:
                        return "720P 30fps";
                    case 6:
                        return "VGA 240fps";
                    default:
                        return "unknow";
                }
            } else if (this.nCode == 5) {
                switch (i) {
                    case 0:
                        return "1080P 60fps";
                    case 1:
                        return "1080P 30fps";
                    case 2:
                        return "720P 120fps";
                    case 3:
                        return "720P 60fps";
                    case 4:
                        return "720P 30fps";
                    case 5:
                        return "2K";
                    default:
                        return "unknow";
                }
            } else if (this.nCode != 1) {
                switch (i) {
                    case 0:
                        return "1080P";
                    case 1:
                        return "720P 60fps";
                    case 2:
                        return "720P 30fps";
                    case 3:
                        return "WVGA";
                    case 4:
                        return "VGA";
                    default:
                        return "unknow";
                }
            } else {
                switch (i) {
                    case 0:
                        return "2K";
                    case 1:
                        return "1080P 60fps";
                    case 2:
                        return "1080P 30fps";
                    case 3:
                        return "720P 120fps";
                    case 4:
                        return "720P 60fps";
                    case 5:
                        return "720P 30fps";
                    default:
                        return "unknow";
                }
            }
        }

        public String getPicDPI(int i) {
            if (this.nCode == 4) {
                switch (i) {
                    case 0:
                        return "14M";
                    case 1:
                        return "12M";
                    case 2:
                        return "10M";
                    case 3:
                        return "8M";
                    case 4:
                        return "5M";
                    case 5:
                        return "3M";
                    case 6:
                        return "2MHD";
                    case 7:
                        return "VGA";
                    case 8:
                        return "1.3M";
                    default:
                        return "unknow";
                }
            } else if (this.nCode != 2) {
                switch (i) {
                    case 0:
                        return "12M";
                    case 1:
                        return "10M";
                    case 2:
                        return "8M";
                    case 3:
                        return "5M";
                    case 4:
                        return "3M";
                    case 5:
                        return "2MHD";
                    case 6:
                        return "VGA";
                    case 7:
                        return "1.3M";
                    case 8:
                        return "14M";
                    default:
                        return "unknow";
                }
            } else {
                switch (i) {
                    case 0:
                        return "16M";
                    case 1:
                        return "14M";
                    case 2:
                        return "12M";
                    case 3:
                        return "10M";
                    case 4:
                        return "8M";
                    case 5:
                        return "5M";
                    case 6:
                        return "3M";
                    case 7:
                        return "2MHD";
                    case 8:
                        return "VGA";
                    case 9:
                        return "1.3M";
                    default:
                        return "unknow";
                }
            }
        }
    }
}
