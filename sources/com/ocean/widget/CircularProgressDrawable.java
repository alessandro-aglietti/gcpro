package com.ocean.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
class CircularProgressDrawable extends Drawable {
    private Paint mPaint;
    private Path mPath;
    private RectF mRectF;
    private int mSize;
    private int mStrokeColor;
    private int mStrokeWidth;
    private float mStartAngle = -90.0f;
    private float mSweepAngle = 0.0f;

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return 1;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    public CircularProgressDrawable(int i, int i2, int i3) {
        this.mSize = i;
        this.mStrokeWidth = i2;
        this.mStrokeColor = i3;
    }

    public void setSweepAngle(float f) {
        this.mSweepAngle = f;
    }

    public int getSize() {
        return this.mSize;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        if (this.mPath == null) {
            this.mPath = new Path();
        }
        this.mPath.reset();
        this.mPath.addArc(getRect(), this.mStartAngle, this.mSweepAngle);
        this.mPath.offset(bounds.left, bounds.top);
        canvas.drawPath(this.mPath, createPaint());
    }

    private RectF getRect() {
        int i;
        if (this.mRectF == null) {
            float f = this.mStrokeWidth / 2;
            this.mRectF = new RectF(f, f, getSize() - i, getSize() - i);
        }
        return this.mRectF;
    }

    private Paint createPaint() {
        if (this.mPaint == null) {
            this.mPaint = new Paint();
            this.mPaint.setAntiAlias(true);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setStrokeWidth(this.mStrokeWidth);
            this.mPaint.setColor(this.mStrokeColor);
        }
        return this.mPaint;
    }
}
