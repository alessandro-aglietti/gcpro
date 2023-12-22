package com.ocean.playback;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager.widget.ViewPager;
import com.ocean.gamecamerapro2.R;
import java.util.List;
/* loaded from: classes.dex */
public class ViewPagerIndicator extends LinearLayout {
    private static final int COLOR_TEXT_HIGHLIGHTCOLOR = -1;
    private static final int COLOR_TEXT_NORMAL = -1426063361;
    private static final int COUNT_DEFAULT_TAB = 4;
    private static final float RADIO_TRIANGEL = 0.16666667f;
    private final int DIMENSION_TRIANGEL_WIDTH;
    private int mInitTranslationX;
    private Paint mPaint;
    private Path mPath;
    private List<String> mTabTitles;
    private int mTabVisibleCount;
    private float mTranslationX;
    private int mTriangleHeight;
    private int mTriangleWidth;
    public ViewPager mViewPager;
    private MyPagerChangeListener myPagerChangeListener;
    private PageChangeListener onPageChangeListener;

    /* loaded from: classes.dex */
    public interface MyPagerChangeListener {
        void onPageChange(int i);
    }

    /* loaded from: classes.dex */
    public interface PageChangeListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    public ViewPagerIndicator(Context context) {
        this(context, null);
    }

    public ViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.DIMENSION_TRIANGEL_WIDTH = (int) ((getScreenWidth() / 3) * RADIO_TRIANGEL);
        this.mTabVisibleCount = 4;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ViewPagerIndicator);
        this.mTabVisibleCount = obtainStyledAttributes.getInt(0, 4);
        if (this.mTabVisibleCount < 0) {
            this.mTabVisibleCount = 4;
        }
        obtainStyledAttributes.recycle();
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setColor(Color.parseColor("#ffffffff"));
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setPathEffect(new CornerPathEffect(3.0f));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        canvas.save();
        canvas.translate(this.mInitTranslationX + this.mTranslationX, getHeight() + 1);
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restore();
        super.dispatchDraw(canvas);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mTriangleWidth = (int) ((i / this.mTabVisibleCount) * RADIO_TRIANGEL);
        this.mTriangleWidth = Math.min(this.DIMENSION_TRIANGEL_WIDTH, this.mTriangleWidth);
        initTriangle();
        this.mInitTranslationX = ((getWidth() / this.mTabVisibleCount) / 2) - (this.mTriangleWidth / 2);
    }

    public void setVisibleTabCount(int i) {
        this.mTabVisibleCount = i;
    }

    public void setTabItemTitles(List<String> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        removeAllViews();
        this.mTabTitles = list;
        for (String str : this.mTabTitles) {
            addView(generateTextView(str));
        }
        setItemClickEvent();
    }

    public void setOnPageChangeListener(PageChangeListener pageChangeListener) {
        this.onPageChangeListener = pageChangeListener;
    }

    public void setViewPager(ViewPager viewPager, int i) {
        this.mViewPager = viewPager;
        viewPager.setOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.ocean.playback.ViewPagerIndicator.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int i2) {
                if (!ViewPagerIndicator.this.isEnabled()) {
                    if (ViewPagerIndicator.this.myPagerChangeListener != null) {
                        ViewPagerIndicator.this.myPagerChangeListener.onPageChange(-1);
                        return;
                    }
                    return;
                }
                ViewPagerIndicator.this.resetTextViewColor();
                ViewPagerIndicator.this.highLightTextView(i2);
                if (ViewPagerIndicator.this.onPageChangeListener != null) {
                    ViewPagerIndicator.this.onPageChangeListener.onPageSelected(i2);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i2, float f, int i3) {
                ViewPagerIndicator.this.scroll(i2, f);
                if (ViewPagerIndicator.this.onPageChangeListener != null) {
                    ViewPagerIndicator.this.onPageChangeListener.onPageScrolled(i2, f, i3);
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i2) {
                if (ViewPagerIndicator.this.onPageChangeListener != null) {
                    ViewPagerIndicator.this.onPageChangeListener.onPageScrollStateChanged(i2);
                }
            }
        });
        viewPager.setCurrentItem(i);
        highLightTextView(i);
    }

    protected void highLightTextView(int i) {
        View childAt = getChildAt(i);
        if (childAt instanceof TextView) {
            ((TextView) childAt).setTextColor(-1);
        }
        if (this.myPagerChangeListener != null) {
            this.myPagerChangeListener.onPageChange(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetTextViewColor() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof TextView) {
                ((TextView) childAt).setTextColor(COLOR_TEXT_NORMAL);
            }
        }
    }

    public void setItemClickEvent() {
        int childCount = getChildCount();
        for (final int i = 0; i < childCount; i++) {
            getChildAt(i).setOnClickListener(new View.OnClickListener() { // from class: com.ocean.playback.ViewPagerIndicator.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!ViewPagerIndicator.this.isEnabled()) {
                        if (ViewPagerIndicator.this.myPagerChangeListener != null) {
                            ViewPagerIndicator.this.myPagerChangeListener.onPageChange(-1);
                            return;
                        }
                        return;
                    }
                    ViewPagerIndicator.this.mViewPager.setCurrentItem(i);
                }
            });
        }
    }

    private TextView generateTextView(String str) {
        TextView textView = new TextView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        layoutParams.width = getScreenWidth() / this.mTabVisibleCount;
        textView.setGravity(17);
        textView.setTextColor(COLOR_TEXT_NORMAL);
        textView.setText(str);
        textView.setTextSize(2, 16.0f);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private void initTriangle() {
        this.mPath = new Path();
        double d = this.mTriangleWidth / 2;
        double sqrt = Math.sqrt(2.0d);
        Double.isNaN(d);
        this.mTriangleHeight = (int) (d / sqrt);
        this.mPath.moveTo(0.0f, 0.0f);
        this.mPath.lineTo(this.mTriangleWidth, 0.0f);
        this.mPath.lineTo(this.mTriangleWidth / 2, -this.mTriangleHeight);
        this.mPath.close();
    }

    public void scroll(int i, float f) {
        this.mTranslationX = (getWidth() / this.mTabVisibleCount) * (i + f);
        int screenWidth = getScreenWidth() / this.mTabVisibleCount;
        if (f > 0.0f && i >= this.mTabVisibleCount - 2 && getChildCount() > this.mTabVisibleCount) {
            if (this.mTabVisibleCount != 1) {
                scrollTo(((i - (this.mTabVisibleCount - 2)) * screenWidth) + ((int) (screenWidth * f)), 0);
            } else {
                scrollTo((i * screenWidth) + ((int) (screenWidth * f)), 0);
            }
        }
        invalidate();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        Log.e("TAG", "onFinishInflate");
        super.onFinishInflate();
        int childCount = getChildCount();
        if (childCount == 0) {
            return;
        }
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            layoutParams.weight = 0.0f;
            layoutParams.width = getScreenWidth() / this.mTabVisibleCount;
            childAt.setLayoutParams(layoutParams);
        }
        setItemClickEvent();
    }

    public int getScreenWidth() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public void setOnMyPagerChangeListener(MyPagerChangeListener myPagerChangeListener) {
        this.myPagerChangeListener = myPagerChangeListener;
    }
}
