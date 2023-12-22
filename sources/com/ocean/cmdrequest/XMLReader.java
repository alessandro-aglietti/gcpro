package com.ocean.cmdrequest;

import android.content.Context;
import android.util.Log;
/* loaded from: classes.dex */
public class XMLReader {
    private static String TAG = "Makoto/XMLReader";
    private Context context;

    public XMLReader(Context context) {
        this.context = context;
    }

    public String read(String str, String str2) {
        if (str == null || str2 == null) {
            return null;
        }
        try {
            String str3 = "<" + str2 + ">";
            return str.substring(str.indexOf(str3) + str3.length(), str.indexOf("</" + str2 + ">"));
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "read() exception");
            return null;
        }
    }

    public int read_cmd_status(String str, String str2) {
        try {
            Log.e(TAG, "1");
            if (str == null) {
                return -1;
            }
            String str3 = "<Cmd>" + str2 + "</Cmd>";
            if (str.indexOf(str2) < 0) {
                return -1;
            }
            String substring = str.substring(str.indexOf(str2), str.length());
            if (str.indexOf("<Status>") < 0) {
                return -1;
            }
            String substring2 = substring.substring(substring.indexOf("<Status>"), substring.length());
            if (substring2.indexOf(">") >= 0 && substring2.indexOf("</Status>") >= 0) {
                String substring3 = substring2.substring(substring2.indexOf(">"), substring2.indexOf("</Status>"));
                if (substring3.lastIndexOf(">") >= 0 && substring3.lastIndexOf(">") + 1 < substring3.length()) {
                    return Integer.parseInt(substring3.substring(substring3.lastIndexOf(">") + 1, substring3.length()));
                }
                return -1;
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "read_cmd_status() exception");
            return -1;
        }
    }

    public int read_socket_cmd(String str, String str2) {
        if (str == null) {
            return -1;
        }
        try {
            if (str.indexOf("<Cmd>") >= 0 && str.substring(str.lastIndexOf("<Cmd>") + 5, str.lastIndexOf("</Cmd>")).equals(str2)) {
                return Integer.parseInt(str.substring(str.lastIndexOf("<Status>") + 8, str.lastIndexOf("</Status>")));
            }
            return -1;
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(TAG, "read_socket() exception");
            return -1;
        }
    }
}
