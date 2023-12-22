package com.ocean.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
/* loaded from: classes.dex */
public class MyItemRelativeLayout extends RelativeLayout {
    public MyItemRelativeLayout(Context context) {
        super(context);
    }

    public MyItemRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MyItemRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        super.onMeasure(makeMeasureSpec, makeMeasureSpec);
    }
}
