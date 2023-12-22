package org.videolan.libvlc.util;

import android.net.Uri;
import android.os.Build;
import java.io.File;
/* loaded from: classes.dex */
public class AndroidUtil {
    public static final boolean isJellyBeanMR2OrLater;
    public static final boolean isKitKatOrLater;
    public static final boolean isLolliPopOrLater;
    public static final boolean isMarshMallowOrLater;
    public static final boolean isNougatMR1OrLater;
    public static final boolean isNougatOrLater;
    public static final boolean isOOrLater;
    public static final boolean isPOrLater;

    static {
        boolean z = false;
        isPOrLater = Build.VERSION.SDK_INT >= 28;
        isOOrLater = isPOrLater || Build.VERSION.SDK_INT >= 26;
        isNougatMR1OrLater = isOOrLater || Build.VERSION.SDK_INT >= 25;
        isNougatOrLater = isNougatMR1OrLater || Build.VERSION.SDK_INT >= 24;
        isMarshMallowOrLater = isNougatOrLater || Build.VERSION.SDK_INT >= 23;
        isLolliPopOrLater = isMarshMallowOrLater || Build.VERSION.SDK_INT >= 21;
        isKitKatOrLater = isLolliPopOrLater || Build.VERSION.SDK_INT >= 19;
        isJellyBeanMR2OrLater = (isKitKatOrLater || Build.VERSION.SDK_INT >= 18) ? true : true;
    }

    public static File UriToFile(Uri uri) {
        return new File(uri.getPath().replaceFirst("file://", ""));
    }

    public static Uri PathToUri(String str) {
        return Uri.fromFile(new File(str));
    }

    public static Uri LocationToUri(String str) {
        Uri parse = Uri.parse(str);
        if (parse.getScheme() != null) {
            return parse;
        }
        throw new IllegalArgumentException("location has no scheme");
    }

    public static Uri FileToUri(File file) {
        return Uri.fromFile(file);
    }
}
