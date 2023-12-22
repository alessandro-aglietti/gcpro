package com.ocean.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CircularAnimatedDrawable extends Drawable implements Animatable {
    private static final int ANGLE_ANIMATOR_DURATION = 2000;
    public static final int MIN_SWEEP_ANGLE = 30;
    private static final int SWEEP_ANIMATOR_DURATION = 600;
    private float mBorderWidth;
    private float mCurrentGlobalAngle;
    private float mCurrentGlobalAngleOffset;
    private float mCurrentSweepAngle;
    private boolean mModeAppearing;
    private ObjectAnimator mObjectAnimatorAngle;
    private ObjectAnimator mObjectAnimatorSweep;
    private boolean mRunning;
    private static final Interpolator ANGLE_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator SWEEP_INTERPOLATOR = new DecelerateInterpolator();
    private final RectF fBounds = new RectF();
    private Property<CircularAnimatedDrawable, Float> mAngleProperty = new Property<CircularAnimatedDrawable, Float>(Float.class, "angle") { // from class: com.ocean.widget.CircularAnimatedDrawable.1
        @Override // android.util.Property
        public Float get(CircularAnimatedDrawable circularAnimatedDrawable) {
            return Float.valueOf(circularAnimatedDrawable.getCurrentGlobalAngle());
        }

        @Override // android.util.Property
        public void set(CircularAnimatedDrawable circularAnimatedDrawable, Float f) {
            circularAnimatedDrawable.setCurrentGlobalAngle(f.floatValue());
        }
    };
    private Property<CircularAnimatedDrawable, Float> mSweepProperty = new Property<CircularAnimatedDrawable, Float>(Float.class, "arc") { // from class: com.ocean.widget.CircularAnimatedDrawable.2
        @Override // android.util.Property
        public Float get(CircularAnimatedDrawable circularAnimatedDrawable) {
            return Float.valueOf(circularAnimatedDrawable.getCurrentSweepAngle());
        }

        @Override // android.util.Property
        public void set(CircularAnimatedDrawable circularAnimatedDrawable, Float f) {
            circularAnimatedDrawable.setCurrentSweepAngle(f.floatValue());
        }
    };
    private Paint mPaint = new Paint();

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    public CircularAnimatedDrawable(int i, float f) {
        this.mBorderWidth = f;
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(f);
        this.mPaint.setColor(i);
        setupAnimations();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f;
        float f2 = this.mCurrentGlobalAngle - this.mCurrentGlobalAngleOffset;
        float f3 = this.mCurrentSweepAngle;
        if (this.mModeAppearing) {
            f = f3 + 30.0f;
        } else {
            f2 += f3;
            f = (360.0f - f3) - 30.0f;
        }
        canvas.drawArc(this.fBounds, f2, f, false, this.mPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleAppearingMode() {
        this.mModeAppearing = !this.mModeAppearing;
        if (this.mModeAppearing) {
            this.mCurrentGlobalAngleOffset = (this.mCurrentGlobalAngleOffset + 60.0f) % 360.0f;
        }
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.fBounds.left = rect.left + (this.mBorderWidth / 2.0f) + 0.5f;
        this.fBounds.right = (rect.right - (this.mBorderWidth / 2.0f)) - 0.5f;
        this.fBounds.top = rect.top + (this.mBorderWidth / 2.0f) + 0.5f;
        this.fBounds.bottom = (rect.bottom - (this.mBorderWidth / 2.0f)) - 0.5f;
    }

    private void setupAnimations() {
        this.mObjectAnimatorAngle = ObjectAnimator.ofFloat(this, this.mAngleProperty, 360.0f);
        this.mObjectAnimatorAngle.setInterpolator(ANGLE_INTERPOLATOR);
        this.mObjectAnimatorAngle.setDuration(2000L);
        this.mObjectAnimatorAngle.setRepeatMode(1);
        this.mObjectAnimatorAngle.setRepeatCount(-1);
        this.mObjectAnimatorSweep = ObjectAnimator.ofFloat(this, this.mSweepProperty, 300.0f);
        this.mObjectAnimatorSweep.setInterpolator(SWEEP_INTERPOLATOR);
        this.mObjectAnimatorSweep.setDuration(600L);
        this.mObjectAnimatorSweep.setRepeatMode(1);
        this.mObjectAnimatorSweep.setRepeatCount(-1);
        this.mObjectAnimatorSweep.addListener(new Animator.AnimatorListener() { // from class: com.ocean.widget.CircularAnimatedDrawable.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularAnimatedDrawable.this.toggleAppearingMode();
            }
        });
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        this.mRunning = true;
        this.mObjectAnimatorAngle.start();
        this.mObjectAnimatorSweep.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.mRunning = false;
            this.mObjectAnimatorAngle.cancel();
            this.mObjectAnimatorSweep.cancel();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    public void setCurrentGlobalAngle(float f) {
        this.mCurrentGlobalAngle = f;
        invalidateSelf();
    }

    public float getCurrentGlobalAngle() {
        return this.mCurrentGlobalAngle;
    }

    public void setCurrentSweepAngle(float f) {
        this.mCurrentSweepAngle = f;
        invalidateSelf();
    }

    public float getCurrentSweepAngle() {
        return this.mCurrentSweepAngle;
    }
}
