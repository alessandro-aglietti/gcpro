package com.ocean.widget;

import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.ocean.gamecamerapro2.R;
/* loaded from: classes.dex */
public class CircleProgressView extends View {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int ANIM_FADE_IN = 2;
    private static final int ANIM_INCREMENTAL = 3;
    private static final int ANIM_NONE = 0;
    private static final int ANIM_ROLL = 1;
    private static final int ANIM_THICKNESS_EXPAND = 4;
    private static final int DEFAULT_COLOR = -12303292;
    private static final int DEFAULT_START_ANGLE = -90;
    private static final int DEFAULT_START_ANIMATION_DURATION = 500;
    private static final int DEFAULT_TEXT_SIZE = 45;
    private static final int DEFAULT_THICKNESS = 20;
    private static final int DEFAULT_VALUE = 0;
    private int mColor;
    private final RectF mDrawRect;
    private final Paint mPaint;
    private final Path mPath;
    private int mStartAngle;
    private int mStartAnimation;
    private int mStartAnimationDuration;
    private String mText;
    private int mTextColor;
    private final Paint mTextPaint;
    private int mTextSize;
    private int mThickness;
    private int mValue;

    public CircleProgressView(Context context) {
        this(context, null, 0);
    }

    public CircleProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mPaint = new Paint(1);
        this.mTextPaint = new Paint(1);
        this.mPath = new Path();
        this.mDrawRect = new RectF();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.CircleProgressView);
        try {
            this.mThickness = obtainStyledAttributes.getDimensionPixelSize(7, 20);
            this.mColor = obtainStyledAttributes.getColor(0, DEFAULT_COLOR);
            this.mTextColor = obtainStyledAttributes.getColor(5, this.mColor);
            this.mValue = obtainStyledAttributes.getInteger(8, 0);
            this.mStartAngle = obtainStyledAttributes.getInteger(1, DEFAULT_START_ANGLE);
            this.mTextSize = obtainStyledAttributes.getDimensionPixelSize(6, 45);
            this.mText = obtainStyledAttributes.getString(4);
            this.mStartAnimation = obtainStyledAttributes.getInteger(2, 0);
            this.mStartAnimationDuration = obtainStyledAttributes.getInteger(3, DEFAULT_START_ANIMATION_DURATION);
            obtainStyledAttributes.recycle();
            setValue(this.mValue);
            this.mPaint.setStyle(Paint.Style.STROKE);
            this.mPaint.setColor(this.mColor);
            this.mPaint.setStrokeWidth(this.mThickness);
            this.mTextPaint.setColor(this.mTextColor);
            this.mTextPaint.setTextSize(this.mTextSize);
            this.mTextPaint.setTextAlign(Paint.Align.CENTER);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        double d;
        double d2;
        super.onDraw(canvas);
        Double.isNaN(this.mValue);
        int width = getWidth() - getPaddingRight();
        int height = getHeight() - getPaddingBottom();
        String text = getText();
        this.mPath.reset();
        this.mDrawRect.top = getPaddingTop() + this.mThickness;
        this.mDrawRect.left = getPaddingLeft() + this.mThickness;
        this.mDrawRect.bottom = height - this.mThickness;
        this.mDrawRect.right = width - this.mThickness;
        this.mPath.addArc(this.mDrawRect, this.mStartAngle, (int) ((d / 100.0d) * 360.0d));
        canvas.drawPath(this.mPath, this.mPaint);
        double height2 = getHeight() / 2;
        Double.isNaN(this.mTextPaint.descent() + this.mTextPaint.ascent());
        Double.isNaN(height2);
        canvas.drawText(text, getWidth() / 2, (int) (height2 - (d2 / 2.0d)), this.mTextPaint);
    }

    @Override // android.view.View
    @TargetApi(11)
    protected void onAttachedToWindow() {
        ObjectAnimator ofInt;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT < 11) {
            return;
        }
        switch (this.mStartAnimation) {
            case 1:
                ofInt = ObjectAnimator.ofInt(this, "startAngle", this.mStartAngle - 180, this.mStartAngle);
                ofInt.setInterpolator(new DecelerateInterpolator());
                break;
            case 2:
                ofInt = ObjectAnimator.ofFloat(this, "alpha", 0.0f, 1.0f);
                break;
            case 3:
                ofInt = ObjectAnimator.ofInt(this, "value", 0, this.mValue);
                ofInt.setInterpolator(new DecelerateInterpolator());
                break;
            case 4:
                ofInt = ObjectAnimator.ofInt(this, "thickness", 0, this.mThickness);
                ofInt.setInterpolator(new DecelerateInterpolator());
                break;
            default:
                ofInt = null;
                break;
        }
        if (ofInt != null) {
            ofInt.setDuration(this.mStartAnimationDuration);
            ofInt.start();
        }
    }

    public void setValue(int i) {
        if (i < 0 || i > 100) {
            throw new IllegalArgumentException(String.format("Value was %d but must be in the 0-100 range", Integer.valueOf(i)));
        }
        this.mValue = i;
        invalidate();
    }

    public int getValue() {
        return this.mValue;
    }

    public void setThickness(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(String.format("Thickness was %d but must be positive", Integer.valueOf(i)));
        }
        this.mThickness = i;
        this.mPaint.setStrokeWidth(i);
        invalidate();
    }

    public int getThickness() {
        return this.mThickness;
    }

    public void setColor(int i) {
        this.mColor = i;
        this.mPaint.setColor(this.mColor);
        invalidate();
    }

    public int getColor() {
        return this.mColor;
    }

    public void setText(String str) {
        this.mText = str;
        invalidate();
    }

    public String getText() {
        if (this.mText == null) {
            return Integer.toString(this.mValue);
        }
        return this.mText;
    }

    public void setTextColor(int i) {
        this.mTextColor = i;
        this.mTextPaint.setColor(this.mTextColor);
        invalidate();
    }

    public int getTextColor() {
        return this.mTextColor;
    }

    public void setTextSize(int i) {
        this.mTextSize = i;
        this.mTextPaint.setTextSize(i);
        invalidate();
    }

    public int getTextSize() {
        return this.mTextSize;
    }

    public void setStartAngle(int i) {
        this.mStartAngle = i;
        invalidate();
    }

    public int getStartAngle() {
        return this.mStartAngle;
    }
}
