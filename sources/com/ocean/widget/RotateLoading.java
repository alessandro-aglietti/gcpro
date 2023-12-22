package com.ocean.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.LinearInterpolator;
import com.ocean.gamecamerapro2.R;
/* loaded from: classes.dex */
public class RotateLoading extends View {
    private static final int DEFAULT_SHADOW_POSITION = 2;
    private static final int DEFAULT_SPEED_OF_DEGREE = 10;
    private static final int DEFAULT_WIDTH = 6;
    private float arc;
    private int bottomDegree;
    private boolean changeBigger;
    private int color;
    private boolean isStart;
    private RectF loadingRectF;
    private Paint mPaint;
    private int shadowPosition;
    private RectF shadowRectF;
    private float speedOfArc;
    private int speedOfDegree;
    private int topDegree;
    private int width;

    public RotateLoading(Context context) {
        super(context);
        this.topDegree = 10;
        this.bottomDegree = 190;
        this.changeBigger = true;
        this.isStart = false;
        initView(context, null);
    }

    public RotateLoading(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.topDegree = 10;
        this.bottomDegree = 190;
        this.changeBigger = true;
        this.isStart = false;
        initView(context, attributeSet);
    }

    public RotateLoading(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.topDegree = 10;
        this.bottomDegree = 190;
        this.changeBigger = true;
        this.isStart = false;
        initView(context, attributeSet);
    }

    private void initView(Context context, AttributeSet attributeSet) {
        this.color = -1;
        this.width = dpToPx(context, 6.0f);
        this.shadowPosition = dpToPx(getContext(), 2.0f);
        this.speedOfDegree = 10;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RotateLoading);
            this.color = obtainStyledAttributes.getColor(0, -1);
            this.width = obtainStyledAttributes.getDimensionPixelSize(2, dpToPx(context, 6.0f));
            this.shadowPosition = obtainStyledAttributes.getInt(3, 2);
            this.speedOfDegree = obtainStyledAttributes.getInt(1, 10);
            obtainStyledAttributes.recycle();
        }
        this.speedOfArc = this.speedOfDegree / 4;
        this.mPaint = new Paint();
        this.mPaint.setColor(this.color);
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(this.width);
        this.mPaint.setStrokeCap(Paint.Cap.ROUND);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.arc = 10.0f;
        this.loadingRectF = new RectF(this.width * 2, this.width * 2, i - (this.width * 2), i2 - (this.width * 2));
        this.shadowRectF = new RectF((this.width * 2) + this.shadowPosition, (this.width * 2) + this.shadowPosition, (i - (this.width * 2)) + this.shadowPosition, (i2 - (this.width * 2)) + this.shadowPosition);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.isStart) {
            this.mPaint.setColor(Color.parseColor("#1a000000"));
            canvas.drawArc(this.shadowRectF, this.topDegree, this.arc, false, this.mPaint);
            canvas.drawArc(this.shadowRectF, this.bottomDegree, this.arc, false, this.mPaint);
            this.mPaint.setColor(this.color);
            canvas.drawArc(this.loadingRectF, this.topDegree, this.arc, false, this.mPaint);
            canvas.drawArc(this.loadingRectF, this.bottomDegree, this.arc, false, this.mPaint);
            this.topDegree += this.speedOfDegree;
            this.bottomDegree += this.speedOfDegree;
            if (this.topDegree > 360) {
                this.topDegree -= 360;
            }
            if (this.bottomDegree > 360) {
                this.bottomDegree -= 360;
            }
            if (this.changeBigger) {
                if (this.arc < 160.0f) {
                    this.arc += this.speedOfArc;
                    invalidate();
                }
            } else if (this.arc > this.speedOfDegree) {
                this.arc -= this.speedOfArc * 2.0f;
                invalidate();
            }
            if (this.arc >= 160.0f || this.arc <= 10.0f) {
                this.changeBigger = !this.changeBigger;
                invalidate();
            }
        }
    }

    public void setLoadingColor(int i) {
        this.color = i;
    }

    public int getLoadingColor() {
        return this.color;
    }

    public void start() {
        startAnimator();
        this.isStart = true;
        invalidate();
    }

    public void stop() {
        stopAnimator();
        invalidate();
    }

    public boolean isStart() {
        return this.isStart;
    }

    private void startAnimator() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "scaleX", 0.0f, 1.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 0.0f, 1.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.start();
    }

    private void stopAnimator() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "scaleX", 1.0f, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "scaleY", 1.0f, 0.0f);
        ofFloat.setDuration(300L);
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat2.setDuration(300L);
        ofFloat2.setInterpolator(new LinearInterpolator());
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.ocean.widget.RotateLoading.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                RotateLoading.this.isStart = false;
            }
        });
        animatorSet.start();
    }

    public int dpToPx(Context context, float f) {
        return (int) TypedValue.applyDimension(1, f, context.getResources().getDisplayMetrics());
    }
}
