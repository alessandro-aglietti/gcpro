package com.ocean.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.StateSet;
import android.view.View;
import android.widget.Button;
import com.ocean.gamecamerapro2.R;
/* loaded from: classes.dex */
public class CircularProgressButton extends Button {
    public static final int ERROR_STATE_PROGRESS = -1;
    public static final int IDLE_STATE_PROGRESS = 0;
    public static final int INDETERMINATE_STATE_PROGRESS = 50;
    public static final int SUCCESS_STATE_PROGRESS = 100;
    private StrokeGradientDrawable background;
    private CircularAnimatedDrawable mAnimatedDrawable;
    private int mColorIndicator;
    private int mColorIndicatorBackground;
    private int mColorProgress;
    private ColorStateList mCompleteColorState;
    private StateListDrawable mCompleteStateDrawable;
    private OnAnimationEndListener mCompleteStateListener;
    private String mCompleteText;
    private boolean mConfigurationChanged;
    private float mCornerRadius;
    private ColorStateList mErrorColorState;
    private StateListDrawable mErrorStateDrawable;
    private OnAnimationEndListener mErrorStateListener;
    private String mErrorText;
    private int mIconComplete;
    private int mIconError;
    private ColorStateList mIdleColorState;
    private StateListDrawable mIdleStateDrawable;
    private OnAnimationEndListener mIdleStateListener;
    private String mIdleText;
    private boolean mIndeterminateProgressMode;
    private int mMaxProgress;
    private boolean mMorphingInProgress;
    private int mPaddingProgress;
    private int mProgress;
    private CircularProgressDrawable mProgressDrawable;
    private OnAnimationEndListener mProgressStateListener;
    private String mProgressText;
    private State mState;
    private StateManager mStateManager;
    private int mStrokeWidth;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public enum State {
        PROGRESS,
        IDLE,
        COMPLETE,
        ERROR
    }

    public CircularProgressButton(Context context) {
        super(context);
        this.mProgressStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.1
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.PROGRESS;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mCompleteStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.2
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconComplete == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mCompleteText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconComplete);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.COMPLETE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mIdleStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.3
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.removeIcon();
                CircularProgressButton.this.setText(CircularProgressButton.this.mIdleText);
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.IDLE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mErrorStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.4
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconError == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mErrorText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconError);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.ERROR;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        init(context, null);
    }

    public CircularProgressButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.1
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.PROGRESS;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mCompleteStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.2
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconComplete == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mCompleteText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconComplete);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.COMPLETE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mIdleStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.3
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.removeIcon();
                CircularProgressButton.this.setText(CircularProgressButton.this.mIdleText);
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.IDLE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mErrorStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.4
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconError == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mErrorText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconError);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.ERROR;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        init(context, attributeSet);
    }

    public CircularProgressButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mProgressStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.1
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.PROGRESS;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mCompleteStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.2
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconComplete == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mCompleteText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconComplete);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.COMPLETE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mIdleStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.3
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.removeIcon();
                CircularProgressButton.this.setText(CircularProgressButton.this.mIdleText);
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.IDLE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        this.mErrorStateListener = new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.4
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                if (CircularProgressButton.this.mIconError == 0) {
                    CircularProgressButton.this.setText(CircularProgressButton.this.mErrorText);
                } else {
                    CircularProgressButton.this.setText((CharSequence) null);
                    CircularProgressButton.this.setIcon(CircularProgressButton.this.mIconError);
                }
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.ERROR;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        };
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) {
        this.mStrokeWidth = (int) getContext().getResources().getDimension(R.dimen.cpb_stroke_width);
        initAttributes(context, attributeSet);
        this.mMaxProgress = 100;
        this.mState = State.IDLE;
        this.mStateManager = new StateManager(this);
        setText(this.mIdleText);
        setTextSize(40.0f);
        getPaint().setFakeBoldText(false);
        initIdleStateDrawable();
        setBackgroundCompat(this.mIdleStateDrawable);
    }

    private void initErrorStateDrawable() {
        StrokeGradientDrawable createDrawable = createDrawable(getPressedColor(this.mErrorColorState));
        this.mErrorStateDrawable = new StateListDrawable();
        this.mErrorStateDrawable.addState(new int[]{16842919}, createDrawable.getGradientDrawable());
        this.mErrorStateDrawable.addState(StateSet.WILD_CARD, this.background.getGradientDrawable());
    }

    private void initCompleteStateDrawable() {
        StrokeGradientDrawable createDrawable = createDrawable(getPressedColor(this.mCompleteColorState));
        this.mCompleteStateDrawable = new StateListDrawable();
        this.mCompleteStateDrawable.addState(new int[]{16842919}, createDrawable.getGradientDrawable());
        this.mCompleteStateDrawable.addState(StateSet.WILD_CARD, this.background.getGradientDrawable());
    }

    private void initIdleStateDrawable() {
        int normalColor = getNormalColor(this.mIdleColorState);
        int pressedColor = getPressedColor(this.mIdleColorState);
        int focusedColor = getFocusedColor(this.mIdleColorState);
        int disabledColor = getDisabledColor(this.mIdleColorState);
        if (this.background == null) {
            this.background = createDrawable(normalColor);
        }
        StrokeGradientDrawable createDrawable = createDrawable(disabledColor);
        StrokeGradientDrawable createDrawable2 = createDrawable(focusedColor);
        StrokeGradientDrawable createDrawable3 = createDrawable(pressedColor);
        this.mIdleStateDrawable = new StateListDrawable();
        this.mIdleStateDrawable.addState(new int[]{16842919}, createDrawable3.getGradientDrawable());
        this.mIdleStateDrawable.addState(new int[]{16842908}, createDrawable2.getGradientDrawable());
        this.mIdleStateDrawable.addState(new int[]{-16842910}, createDrawable.getGradientDrawable());
        this.mIdleStateDrawable.addState(StateSet.WILD_CARD, this.background.getGradientDrawable());
    }

    private int getNormalColor(ColorStateList colorStateList) {
        return colorStateList.getColorForState(new int[]{16842910}, 0);
    }

    private int getPressedColor(ColorStateList colorStateList) {
        return colorStateList.getColorForState(new int[]{16842919}, 0);
    }

    private int getFocusedColor(ColorStateList colorStateList) {
        return colorStateList.getColorForState(new int[]{16842908}, 0);
    }

    private int getDisabledColor(ColorStateList colorStateList) {
        return colorStateList.getColorForState(new int[]{-16842910}, 0);
    }

    private StrokeGradientDrawable createDrawable(int i) {
        GradientDrawable gradientDrawable = (GradientDrawable) getResources().getDrawable(R.drawable.cpb_background).mutate();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(this.mCornerRadius);
        StrokeGradientDrawable strokeGradientDrawable = new StrokeGradientDrawable(gradientDrawable);
        strokeGradientDrawable.setStrokeColor(i);
        strokeGradientDrawable.setStrokeWidth(this.mStrokeWidth);
        return strokeGradientDrawable;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        if (this.mState == State.COMPLETE) {
            initCompleteStateDrawable();
            setBackgroundCompat(this.mCompleteStateDrawable);
        } else if (this.mState == State.IDLE) {
            initIdleStateDrawable();
            setBackgroundCompat(this.mIdleStateDrawable);
        } else if (this.mState == State.ERROR) {
            initErrorStateDrawable();
            setBackgroundCompat(this.mErrorStateDrawable);
        }
        if (this.mState != State.PROGRESS) {
            super.drawableStateChanged();
        }
    }

    private void initAttributes(Context context, AttributeSet attributeSet) {
        TypedArray typedArray = getTypedArray(context, attributeSet, R.styleable.CircularProgressButton);
        if (typedArray == null) {
            return;
        }
        try {
            this.mIdleText = typedArray.getString(12);
            this.mCompleteText = typedArray.getString(10);
            this.mErrorText = typedArray.getString(11);
            this.mProgressText = typedArray.getString(13);
            this.mIconComplete = typedArray.getResourceId(4, 0);
            this.mIconError = typedArray.getResourceId(5, 0);
            this.mCornerRadius = typedArray.getDimension(3, 0.0f);
            this.mPaddingProgress = typedArray.getDimensionPixelSize(6, 0);
            int color = getColor(R.color.cpb_blue);
            int color2 = getColor(R.color.cpb_white);
            int color3 = getColor(R.color.cpb_grey);
            this.mIdleColorState = getResources().getColorStateList(typedArray.getResourceId(9, R.color.cpb_idle_state_selector));
            this.mCompleteColorState = getResources().getColorStateList(typedArray.getResourceId(7, R.color.cpb_complete_state_selector));
            this.mErrorColorState = getResources().getColorStateList(typedArray.getResourceId(8, R.color.cpb_error_state_selector));
            this.mColorProgress = typedArray.getColor(2, color2);
            this.mColorIndicator = typedArray.getColor(0, color);
            this.mColorIndicatorBackground = typedArray.getColor(1, color3);
        } finally {
            typedArray.recycle();
        }
    }

    protected int getColor(int i) {
        return getResources().getColor(i);
    }

    protected TypedArray getTypedArray(Context context, AttributeSet attributeSet, int[] iArr) {
        return context.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mProgress <= 0 || this.mState != State.PROGRESS || this.mMorphingInProgress) {
            return;
        }
        if (this.mIndeterminateProgressMode) {
            drawIndeterminateProgress(canvas);
        } else {
            drawProgress(canvas);
        }
    }

    private void drawIndeterminateProgress(Canvas canvas) {
        if (this.mAnimatedDrawable == null) {
            int width = (getWidth() - getHeight()) / 2;
            this.mAnimatedDrawable = new CircularAnimatedDrawable(this.mColorIndicator, this.mStrokeWidth);
            int i = this.mPaddingProgress + width;
            int width2 = (getWidth() - width) - this.mPaddingProgress;
            int height = getHeight() - this.mPaddingProgress;
            this.mAnimatedDrawable.setBounds(i, this.mPaddingProgress, width2, height);
            this.mAnimatedDrawable.setCallback(this);
            this.mAnimatedDrawable.start();
            return;
        }
        this.mAnimatedDrawable.draw(canvas);
    }

    private void drawProgress(Canvas canvas) {
        if (this.mProgressDrawable == null) {
            this.mProgressDrawable = new CircularProgressDrawable(getHeight() - (this.mPaddingProgress * 2), this.mStrokeWidth, this.mColorIndicator);
            int width = ((getWidth() - getHeight()) / 2) + this.mPaddingProgress;
            this.mProgressDrawable.setBounds(width, this.mPaddingProgress, width, this.mPaddingProgress);
        }
        this.mProgressDrawable.setSweepAngle((360.0f / this.mMaxProgress) * this.mProgress);
        this.mProgressDrawable.draw(canvas);
    }

    public boolean isIndeterminateProgressMode() {
        return this.mIndeterminateProgressMode;
    }

    public void setIndeterminateProgressMode(boolean z) {
        this.mIndeterminateProgressMode = z;
    }

    @Override // android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mAnimatedDrawable || super.verifyDrawable(drawable);
    }

    private MorphingAnimation createMorphing() {
        this.mMorphingInProgress = true;
        MorphingAnimation morphingAnimation = new MorphingAnimation(this, this.background);
        morphingAnimation.setFromCornerRadius(this.mCornerRadius);
        morphingAnimation.setToCornerRadius(this.mCornerRadius);
        morphingAnimation.setFromWidth(getWidth());
        morphingAnimation.setToWidth(getWidth());
        if (this.mConfigurationChanged) {
            morphingAnimation.setDuration(1);
        } else {
            morphingAnimation.setDuration(MorphingAnimation.DURATION_NORMAL);
        }
        this.mConfigurationChanged = false;
        return morphingAnimation;
    }

    private MorphingAnimation createProgressMorphing(float f, float f2, int i, int i2) {
        this.mMorphingInProgress = true;
        MorphingAnimation morphingAnimation = new MorphingAnimation(this, this.background);
        morphingAnimation.setFromCornerRadius(f);
        morphingAnimation.setToCornerRadius(f2);
        morphingAnimation.setPadding(this.mPaddingProgress);
        morphingAnimation.setFromWidth(i);
        morphingAnimation.setToWidth(i2);
        if (this.mConfigurationChanged) {
            morphingAnimation.setDuration(1);
        } else {
            morphingAnimation.setDuration(MorphingAnimation.DURATION_NORMAL);
        }
        this.mConfigurationChanged = false;
        return morphingAnimation;
    }

    private void morphToProgress() {
        setWidth(getWidth());
        setText(this.mProgressText);
        MorphingAnimation createProgressMorphing = createProgressMorphing(this.mCornerRadius, getHeight(), getWidth(), getHeight());
        createProgressMorphing.setFromColor(getNormalColor(this.mIdleColorState));
        createProgressMorphing.setToColor(this.mColorProgress);
        createProgressMorphing.setFromStrokeColor(getNormalColor(this.mIdleColorState));
        createProgressMorphing.setToStrokeColor(this.mColorIndicatorBackground);
        createProgressMorphing.setListener(this.mProgressStateListener);
        createProgressMorphing.start();
    }

    private void morphProgressToComplete() {
        MorphingAnimation createProgressMorphing = createProgressMorphing(getHeight(), this.mCornerRadius, getHeight(), getWidth());
        createProgressMorphing.setFromColor(this.mColorProgress);
        createProgressMorphing.setToColor(getNormalColor(this.mCompleteColorState));
        createProgressMorphing.setFromStrokeColor(this.mColorIndicator);
        createProgressMorphing.setToStrokeColor(getNormalColor(this.mCompleteColorState));
        createProgressMorphing.setListener(this.mCompleteStateListener);
        createProgressMorphing.start();
    }

    private void morphIdleToComplete() {
        MorphingAnimation createMorphing = createMorphing();
        createMorphing.setFromColor(getNormalColor(this.mIdleColorState));
        createMorphing.setToColor(getNormalColor(this.mCompleteColorState));
        createMorphing.setFromStrokeColor(getNormalColor(this.mIdleColorState));
        createMorphing.setToStrokeColor(getNormalColor(this.mCompleteColorState));
        createMorphing.setListener(this.mCompleteStateListener);
        createMorphing.start();
    }

    private void morphCompleteToIdle() {
        MorphingAnimation createMorphing = createMorphing();
        createMorphing.setFromColor(getNormalColor(this.mCompleteColorState));
        createMorphing.setToColor(getNormalColor(this.mIdleColorState));
        createMorphing.setFromStrokeColor(getNormalColor(this.mCompleteColorState));
        createMorphing.setToStrokeColor(getNormalColor(this.mIdleColorState));
        createMorphing.setListener(this.mIdleStateListener);
        createMorphing.start();
    }

    private void morphErrorToIdle() {
        MorphingAnimation createMorphing = createMorphing();
        createMorphing.setFromColor(getNormalColor(this.mErrorColorState));
        createMorphing.setToColor(getNormalColor(this.mIdleColorState));
        createMorphing.setFromStrokeColor(getNormalColor(this.mErrorColorState));
        createMorphing.setToStrokeColor(getNormalColor(this.mIdleColorState));
        createMorphing.setListener(this.mIdleStateListener);
        createMorphing.start();
    }

    private void morphIdleToError() {
        MorphingAnimation createMorphing = createMorphing();
        createMorphing.setFromColor(getNormalColor(this.mIdleColorState));
        createMorphing.setToColor(getNormalColor(this.mErrorColorState));
        createMorphing.setFromStrokeColor(getNormalColor(this.mIdleColorState));
        createMorphing.setToStrokeColor(getNormalColor(this.mErrorColorState));
        createMorphing.setListener(this.mErrorStateListener);
        createMorphing.start();
    }

    private void morphProgressToError() {
        MorphingAnimation createProgressMorphing = createProgressMorphing(getHeight(), this.mCornerRadius, getHeight(), getWidth());
        createProgressMorphing.setFromColor(this.mColorProgress);
        createProgressMorphing.setToColor(getNormalColor(this.mErrorColorState));
        createProgressMorphing.setFromStrokeColor(this.mColorIndicator);
        createProgressMorphing.setToStrokeColor(getNormalColor(this.mErrorColorState));
        createProgressMorphing.setListener(this.mErrorStateListener);
        createProgressMorphing.start();
    }

    private void morphProgressToIdle() {
        MorphingAnimation createProgressMorphing = createProgressMorphing(getHeight(), this.mCornerRadius, getHeight(), getWidth());
        createProgressMorphing.setFromColor(this.mColorProgress);
        createProgressMorphing.setToColor(getNormalColor(this.mIdleColorState));
        createProgressMorphing.setFromStrokeColor(this.mColorIndicator);
        createProgressMorphing.setToStrokeColor(getNormalColor(this.mIdleColorState));
        createProgressMorphing.setListener(new OnAnimationEndListener() { // from class: com.ocean.widget.CircularProgressButton.5
            @Override // com.ocean.widget.OnAnimationEndListener
            public void onAnimationEnd() {
                CircularProgressButton.this.removeIcon();
                CircularProgressButton.this.setText(CircularProgressButton.this.mIdleText);
                CircularProgressButton.this.mMorphingInProgress = false;
                CircularProgressButton.this.mState = State.IDLE;
                CircularProgressButton.this.mStateManager.checkState(CircularProgressButton.this);
            }
        });
        createProgressMorphing.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIcon(int i) {
        Drawable drawable = getResources().getDrawable(i);
        if (drawable != null) {
            setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
            setPadding((getWidth() / 2) - (drawable.getIntrinsicWidth() / 2), 0, 0, 0);
        }
    }

    protected void removeIcon() {
        setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        setPadding(0, 0, 0, 0);
    }

    @SuppressLint({"NewApi"})
    public void setBackgroundCompat(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            setBackground(drawable);
        } else {
            setBackgroundDrawable(drawable);
        }
    }

    public void setProgress(int i) {
        this.mProgress = i;
        if (this.mMorphingInProgress || getWidth() == 0) {
            return;
        }
        this.mStateManager.saveProgress(this);
        if (this.mProgress >= this.mMaxProgress) {
            if (this.mState == State.PROGRESS) {
                morphProgressToComplete();
            } else if (this.mState == State.IDLE) {
                morphIdleToComplete();
            }
        } else if (this.mProgress > 0) {
            if (this.mState == State.IDLE) {
                morphToProgress();
            } else if (this.mState == State.PROGRESS) {
                invalidate();
            }
        } else if (this.mProgress == -1) {
            if (this.mState == State.PROGRESS) {
                morphProgressToError();
            } else if (this.mState == State.IDLE) {
                morphIdleToError();
            }
        } else if (this.mProgress == 0) {
            if (this.mState == State.COMPLETE) {
                morphCompleteToIdle();
            } else if (this.mState == State.PROGRESS) {
                morphProgressToIdle();
            } else if (this.mState == State.ERROR) {
                morphErrorToIdle();
            }
        }
    }

    public int getProgress() {
        return this.mProgress;
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.background.getGradientDrawable().setColor(i);
    }

    public void setStrokeColor(int i) {
        this.background.setStrokeColor(i);
    }

    public String getIdleText() {
        return this.mIdleText;
    }

    public String getCompleteText() {
        return this.mCompleteText;
    }

    public String getErrorText() {
        return this.mErrorText;
    }

    public void setIdleText(String str) {
        this.mIdleText = str;
    }

    public void setCompleteText(String str) {
        this.mCompleteText = str;
    }

    public void setErrorText(String str) {
        this.mErrorText = str;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            setProgress(this.mProgress);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mProgress = this.mProgress;
        savedState.mIndeterminateProgressMode = this.mIndeterminateProgressMode;
        savedState.mConfigurationChanged = true;
        return savedState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.mProgress = savedState.mProgress;
            this.mIndeterminateProgressMode = savedState.mIndeterminateProgressMode;
            this.mConfigurationChanged = savedState.mConfigurationChanged;
            super.onRestoreInstanceState(savedState.getSuperState());
            setProgress(this.mProgress);
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.ocean.widget.CircularProgressButton.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private boolean mConfigurationChanged;
        private boolean mIndeterminateProgressMode;
        private int mProgress;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.mProgress = parcel.readInt();
            this.mIndeterminateProgressMode = parcel.readInt() == 1;
            this.mConfigurationChanged = parcel.readInt() == 1;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mProgress);
            parcel.writeInt(this.mIndeterminateProgressMode ? 1 : 0);
            parcel.writeInt(this.mConfigurationChanged ? 1 : 0);
        }
    }
}
