package org.videolan.libvlc.interfaces;

import android.content.Context;
import java.util.List;
/* loaded from: classes.dex */
public interface ILibVLCFactory extends IComponentFactory {
    public static final String factoryId = "org.videolan.libvlc.interfaces.ILibVLCFactory";

    ILibVLC getFromContext(Context context);

    ILibVLC getFromOptions(Context context, List<String> list);
}
