package com.ocean.widget;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.graphics.drawable.GradientDrawable;
import android.widget.TextView;
/* loaded from: classes.dex */
class MorphingAnimation {
    public static final int DURATION_INSTANT = 1;
    public static final int DURATION_NORMAL = 400;
    private StrokeGradientDrawable mDrawable;
    private int mDuration;
    private int mFromColor;
    private float mFromCornerRadius;
    private int mFromStrokeColor;
    private int mFromWidth;
    private OnAnimationEndListener mListener;
    private float mPadding;
    private int mToColor;
    private float mToCornerRadius;
    private int mToStrokeColor;
    private int mToWidth;
    private TextView mView;

    public MorphingAnimation(TextView textView, StrokeGradientDrawable strokeGradientDrawable) {
        this.mView = textView;
        this.mDrawable = strokeGradientDrawable;
    }

    public void setDuration(int i) {
        this.mDuration = i;
    }

    public void setListener(OnAnimationEndListener onAnimationEndListener) {
        this.mListener = onAnimationEndListener;
    }

    public void setFromWidth(int i) {
        this.mFromWidth = i;
    }

    public void setToWidth(int i) {
        this.mToWidth = i;
    }

    public void setFromColor(int i) {
        this.mFromColor = i;
    }

    public void setToColor(int i) {
        this.mToColor = i;
    }

    public void setFromStrokeColor(int i) {
        this.mFromStrokeColor = i;
    }

    public void setToStrokeColor(int i) {
        this.mToStrokeColor = i;
    }

    public void setFromCornerRadius(float f) {
        this.mFromCornerRadius = f;
    }

    public void setToCornerRadius(float f) {
        this.mToCornerRadius = f;
    }

    public void setPadding(float f) {
        this.mPadding = f;
    }

    public void start() {
        ValueAnimator ofInt = ValueAnimator.ofInt(this.mFromWidth, this.mToWidth);
        final GradientDrawable gradientDrawable = this.mDrawable.getGradientDrawable();
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.ocean.widget.MorphingAnimation.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int intValue;
                int i;
                int animatedFraction;
                Integer num = (Integer) valueAnimator.getAnimatedValue();
                if (MorphingAnimation.this.mFromWidth > MorphingAnimation.this.mToWidth) {
                    intValue = (MorphingAnimation.this.mFromWidth - num.intValue()) / 2;
                    i = MorphingAnimation.this.mFromWidth - intValue;
                    animatedFraction = (int) (MorphingAnimation.this.mPadding * valueAnimator.getAnimatedFraction());
                } else {
                    intValue = (MorphingAnimation.this.mToWidth - num.intValue()) / 2;
                    i = MorphingAnimation.this.mToWidth - intValue;
                    animatedFraction = (int) (MorphingAnimation.this.mPadding - (MorphingAnimation.this.mPadding * valueAnimator.getAnimatedFraction()));
                }
                gradientDrawable.setBounds(intValue + animatedFraction, animatedFraction, i - animatedFraction, MorphingAnimation.this.mView.getHeight() - animatedFraction);
            }
        });
        ObjectAnimator ofInt2 = ObjectAnimator.ofInt(gradientDrawable, "color", this.mFromColor, this.mToColor);
        ofInt2.setEvaluator(new ArgbEvaluator());
        ObjectAnimator ofInt3 = ObjectAnimator.ofInt(this.mDrawable, "strokeColor", this.mFromStrokeColor, this.mToStrokeColor);
        ofInt3.setEvaluator(new ArgbEvaluator());
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(gradientDrawable, "cornerRadius", this.mFromCornerRadius, this.mToCornerRadius);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(this.mDuration);
        animatorSet.playTogether(ofInt, ofInt2, ofInt3, ofFloat);
        animatorSet.addListener(new Animator.AnimatorListener() { // from class: com.ocean.widget.MorphingAnimation.2
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
                if (MorphingAnimation.this.mListener != null) {
                    MorphingAnimation.this.mListener.onAnimationEnd();
                }
            }
        });
        animatorSet.start();
    }
}
