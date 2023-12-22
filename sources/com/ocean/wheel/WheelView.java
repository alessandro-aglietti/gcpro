package com.ocean.wheel;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import com.ocean.gamecamerapro2.R;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes.dex */
public class WheelView extends View {
    private static final int ADDITIONAL_ITEMS_SPACE = 10;
    private static final int ADDITIONAL_ITEM_HEIGHT = 15;
    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEMS_TEXT_COLOR = -16777216;
    private static final int LABEL_OFFSET = 8;
    private static final int MIN_DELTA_FOR_SCROLLING = 0;
    private static final int PADDING = 10;
    private static final int SCROLLING_DURATION = 400;
    private static final int[] SHADOWS_COLORS = {-15658735, 11184810, 11184810};
    private static final int VALUE_TEXT_COLOR = -268435456;
    private int ITEM_OFFSET;
    private final int MESSAGE_JUSTIFY;
    private final int MESSAGE_SCROLL;
    private int TEXT_SIZE;
    private WheelAdapter adapter;
    private Handler animationHandler;
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private List<OnWheelChangedListener> changingListeners;
    private int currentItem;
    private GestureDetector gestureDetector;
    private GestureDetector.SimpleOnGestureListener gestureListener;
    boolean isCyclic;
    private boolean isScrollingPerformed;
    private int itemHeight;
    private StaticLayout itemsLayout;
    private TextPaint itemsPaint;
    private int itemsWidth;
    private String label;
    private StaticLayout labelLayout;
    private int labelWidth;
    private int lastScrollY;
    private Scroller scroller;
    private List<OnWheelScrollListener> scrollingListeners;
    private int scrollingOffset;
    private GradientDrawable topShadow;
    private StaticLayout valueLayout;
    private TextPaint valuePaint;
    private int visibleItems;

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.TEXT_SIZE = 36;
        this.ITEM_OFFSET = this.TEXT_SIZE / 20;
        this.adapter = null;
        this.currentItem = 0;
        this.itemsWidth = 0;
        this.labelWidth = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.ocean.wheel.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.scroller.forceFinished(true);
                    WheelView.this.clearMessages();
                    return true;
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.startScrolling();
                WheelView.this.doScroll((int) (-f2));
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.lastScrollY = (WheelView.this.currentItem * WheelView.this.getItemHeight()) + WheelView.this.scrollingOffset;
                int itemsCount = WheelView.this.isCyclic ? Integer.MAX_VALUE : WheelView.this.adapter.getItemsCount() * WheelView.this.getItemHeight();
                WheelView.this.scroller.fling(0, WheelView.this.lastScrollY, 0, ((int) (-f2)) / 2, 0, 0, WheelView.this.isCyclic ? -itemsCount : 0, itemsCount);
                WheelView.this.setNextMessage(0);
                return true;
            }
        };
        this.MESSAGE_SCROLL = 0;
        this.MESSAGE_JUSTIFY = 1;
        this.animationHandler = new Handler() { // from class: com.ocean.wheel.WheelView.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                WheelView.this.scroller.computeScrollOffset();
                int currY = WheelView.this.scroller.getCurrY();
                int i2 = WheelView.this.lastScrollY - currY;
                WheelView.this.lastScrollY = currY;
                if (i2 != 0) {
                    WheelView.this.doScroll(i2);
                }
                if (Math.abs(currY - WheelView.this.scroller.getFinalY()) < 0) {
                    WheelView.this.scroller.getFinalY();
                    WheelView.this.scroller.forceFinished(true);
                }
                if (!WheelView.this.scroller.isFinished()) {
                    WheelView.this.animationHandler.sendEmptyMessage(message.what);
                } else if (message.what == 0) {
                    WheelView.this.justify();
                } else {
                    WheelView.this.finishScrolling();
                }
            }
        };
        initData(context);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TEXT_SIZE = 36;
        this.ITEM_OFFSET = this.TEXT_SIZE / 20;
        this.adapter = null;
        this.currentItem = 0;
        this.itemsWidth = 0;
        this.labelWidth = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.ocean.wheel.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.scroller.forceFinished(true);
                    WheelView.this.clearMessages();
                    return true;
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.startScrolling();
                WheelView.this.doScroll((int) (-f2));
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.lastScrollY = (WheelView.this.currentItem * WheelView.this.getItemHeight()) + WheelView.this.scrollingOffset;
                int itemsCount = WheelView.this.isCyclic ? Integer.MAX_VALUE : WheelView.this.adapter.getItemsCount() * WheelView.this.getItemHeight();
                WheelView.this.scroller.fling(0, WheelView.this.lastScrollY, 0, ((int) (-f2)) / 2, 0, 0, WheelView.this.isCyclic ? -itemsCount : 0, itemsCount);
                WheelView.this.setNextMessage(0);
                return true;
            }
        };
        this.MESSAGE_SCROLL = 0;
        this.MESSAGE_JUSTIFY = 1;
        this.animationHandler = new Handler() { // from class: com.ocean.wheel.WheelView.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                WheelView.this.scroller.computeScrollOffset();
                int currY = WheelView.this.scroller.getCurrY();
                int i2 = WheelView.this.lastScrollY - currY;
                WheelView.this.lastScrollY = currY;
                if (i2 != 0) {
                    WheelView.this.doScroll(i2);
                }
                if (Math.abs(currY - WheelView.this.scroller.getFinalY()) < 0) {
                    WheelView.this.scroller.getFinalY();
                    WheelView.this.scroller.forceFinished(true);
                }
                if (!WheelView.this.scroller.isFinished()) {
                    WheelView.this.animationHandler.sendEmptyMessage(message.what);
                } else if (message.what == 0) {
                    WheelView.this.justify();
                } else {
                    WheelView.this.finishScrolling();
                }
            }
        };
        initData(context);
    }

    public WheelView(Context context) {
        super(context);
        this.TEXT_SIZE = 36;
        this.ITEM_OFFSET = this.TEXT_SIZE / 20;
        this.adapter = null;
        this.currentItem = 0;
        this.itemsWidth = 0;
        this.labelWidth = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.gestureListener = new GestureDetector.SimpleOnGestureListener() { // from class: com.ocean.wheel.WheelView.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.scroller.forceFinished(true);
                    WheelView.this.clearMessages();
                    return true;
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.startScrolling();
                WheelView.this.doScroll((int) (-f2));
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                WheelView.this.lastScrollY = (WheelView.this.currentItem * WheelView.this.getItemHeight()) + WheelView.this.scrollingOffset;
                int itemsCount = WheelView.this.isCyclic ? Integer.MAX_VALUE : WheelView.this.adapter.getItemsCount() * WheelView.this.getItemHeight();
                WheelView.this.scroller.fling(0, WheelView.this.lastScrollY, 0, ((int) (-f2)) / 2, 0, 0, WheelView.this.isCyclic ? -itemsCount : 0, itemsCount);
                WheelView.this.setNextMessage(0);
                return true;
            }
        };
        this.MESSAGE_SCROLL = 0;
        this.MESSAGE_JUSTIFY = 1;
        this.animationHandler = new Handler() { // from class: com.ocean.wheel.WheelView.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                WheelView.this.scroller.computeScrollOffset();
                int currY = WheelView.this.scroller.getCurrY();
                int i2 = WheelView.this.lastScrollY - currY;
                WheelView.this.lastScrollY = currY;
                if (i2 != 0) {
                    WheelView.this.doScroll(i2);
                }
                if (Math.abs(currY - WheelView.this.scroller.getFinalY()) < 0) {
                    WheelView.this.scroller.getFinalY();
                    WheelView.this.scroller.forceFinished(true);
                }
                if (!WheelView.this.scroller.isFinished()) {
                    WheelView.this.animationHandler.sendEmptyMessage(message.what);
                } else if (message.what == 0) {
                    WheelView.this.justify();
                } else {
                    WheelView.this.finishScrolling();
                }
            }
        };
        initData(context);
    }

    private void initData(Context context) {
        this.gestureDetector = new GestureDetector(context, this.gestureListener);
        this.gestureDetector.setIsLongpressEnabled(false);
        this.scroller = new Scroller(context);
    }

    public WheelAdapter getAdapter() {
        return this.adapter;
    }

    public void setAdapter(WheelAdapter wheelAdapter) {
        this.adapter = wheelAdapter;
        invalidateLayouts();
        invalidate();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.scroller.forceFinished(true);
        this.scroller = new Scroller(getContext(), interpolator);
    }

    public int getVisibleItems() {
        return this.visibleItems;
    }

    public void setVisibleItems(int i) {
        this.visibleItems = i;
        invalidate();
    }

    public String getLabel() {
        return this.label;
    }

    public void setLabel(String str) {
        if (this.label == null || !this.label.equals(str)) {
            this.label = str;
            this.labelLayout = null;
            invalidate();
        }
    }

    public void addChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.add(onWheelChangedListener);
    }

    public void removeChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.remove(onWheelChangedListener);
    }

    protected void notifyChangingListeners(int i, int i2) {
        for (OnWheelChangedListener onWheelChangedListener : this.changingListeners) {
            onWheelChangedListener.onChanged(this, i, i2);
        }
    }

    public void addScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.add(onWheelScrollListener);
    }

    public void removeScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.remove(onWheelScrollListener);
    }

    protected void notifyScrollingListenersAboutStart() {
        for (OnWheelScrollListener onWheelScrollListener : this.scrollingListeners) {
            onWheelScrollListener.onScrollingStarted(this);
        }
    }

    protected void notifyScrollingListenersAboutEnd() {
        for (OnWheelScrollListener onWheelScrollListener : this.scrollingListeners) {
            onWheelScrollListener.onScrollingFinished(this);
        }
    }

    public int getCurrentItem() {
        return this.currentItem;
    }

    public void setCurrentItem(int i, boolean z) {
        if (this.adapter == null || this.adapter.getItemsCount() == 0) {
            return;
        }
        if (i < 0 || i >= this.adapter.getItemsCount()) {
            if (!this.isCyclic) {
                return;
            }
            while (i < 0) {
                i += this.adapter.getItemsCount();
            }
            i %= this.adapter.getItemsCount();
        }
        if (i != this.currentItem) {
            if (z) {
                scroll(i - this.currentItem, 400);
                return;
            }
            invalidateLayouts();
            int i2 = this.currentItem;
            this.currentItem = i;
            notifyChangingListeners(i2, this.currentItem);
            invalidate();
        }
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, false);
    }

    public boolean isCyclic() {
        return this.isCyclic;
    }

    public void setCyclic(boolean z) {
        this.isCyclic = z;
        invalidate();
        invalidateLayouts();
    }

    private void invalidateLayouts() {
        this.itemsLayout = null;
        this.valueLayout = null;
        this.scrollingOffset = 0;
    }

    private void initResourcesIfNecessary() {
        if (this.itemsPaint == null) {
            this.itemsPaint = new TextPaint(33);
            this.itemsPaint.setTextSize(this.TEXT_SIZE);
        }
        if (this.valuePaint == null) {
            this.valuePaint = new TextPaint(37);
            this.valuePaint.setTextSize(this.TEXT_SIZE);
            this.valuePaint.setShadowLayer(0.1f, 0.0f, 0.1f, -4144960);
        }
        if (this.centerDrawable == null) {
            this.centerDrawable = getContext().getResources().getDrawable(R.drawable.wheel_val);
        }
        if (this.topShadow == null) {
            this.topShadow = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, SHADOWS_COLORS);
        }
        if (this.bottomShadow == null) {
            this.bottomShadow = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, SHADOWS_COLORS);
        }
        setBackgroundResource(R.drawable.wheel_bg);
    }

    private int getDesiredHeight(Layout layout) {
        if (layout == null) {
            return 0;
        }
        return Math.max(((getItemHeight() * this.visibleItems) - (this.ITEM_OFFSET * 2)) - 15, getSuggestedMinimumHeight());
    }

    private String getTextItem(int i) {
        if (this.adapter == null || this.adapter.getItemsCount() == 0) {
            return null;
        }
        int itemsCount = this.adapter.getItemsCount();
        if ((i < 0 || i >= itemsCount) && !this.isCyclic) {
            return null;
        }
        while (i < 0) {
            i += itemsCount;
        }
        return this.adapter.getItem(i % itemsCount);
    }

    private String buildText(boolean z) {
        String textItem;
        StringBuilder sb = new StringBuilder();
        int i = (this.visibleItems / 2) + 1;
        for (int i2 = this.currentItem - i; i2 <= this.currentItem + i; i2++) {
            if ((z || i2 != this.currentItem) && (textItem = getTextItem(i2)) != null) {
                sb.append(textItem);
            }
            if (i2 < this.currentItem + i) {
                sb.append("\n");
            }
        }
        return sb.toString();
    }

    private int getMaxTextLength() {
        WheelAdapter adapter = getAdapter();
        if (adapter == null) {
            return 0;
        }
        int maximumLength = adapter.getMaximumLength();
        if (maximumLength > 0) {
            return maximumLength;
        }
        String str = null;
        for (int max = Math.max(this.currentItem - (this.visibleItems / 2), 0); max < Math.min(this.currentItem + this.visibleItems, adapter.getItemsCount()); max++) {
            String item = adapter.getItem(max);
            if (item != null && (str == null || str.length() < item.length())) {
                str = item;
            }
        }
        if (str != null) {
            return str.length();
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getItemHeight() {
        if (this.itemHeight != 0) {
            return this.itemHeight;
        }
        if (this.itemsLayout != null && this.itemsLayout.getLineCount() > 2) {
            this.itemHeight = this.itemsLayout.getLineTop(2) - this.itemsLayout.getLineTop(1);
            return this.itemHeight;
        }
        return getHeight() / this.visibleItems;
    }

    private int calculateLayoutWidth(int i, int i2) {
        initResourcesIfNecessary();
        int maxTextLength = getMaxTextLength();
        if (maxTextLength > 0) {
            this.itemsWidth = (int) (maxTextLength * ((float) Math.ceil(Layout.getDesiredWidth("0", this.itemsPaint))));
        } else {
            this.itemsWidth = 0;
        }
        this.itemsWidth += 10;
        this.labelWidth = 0;
        if (this.label != null && this.label.length() > 0) {
            this.labelWidth = (int) Math.ceil(Layout.getDesiredWidth(this.label, this.valuePaint));
        }
        boolean z = true;
        if (i2 != 1073741824) {
            int i3 = this.itemsWidth + this.labelWidth + 20;
            if (this.labelWidth > 0) {
                i3 += 8;
            }
            int max = Math.max(i3, getSuggestedMinimumWidth());
            if (i2 != Integer.MIN_VALUE || i >= max) {
                i = max;
                z = false;
            }
        }
        if (z) {
            int i4 = (i - 8) - 20;
            if (i4 <= 0) {
                this.labelWidth = 0;
                this.itemsWidth = 0;
            }
            if (this.labelWidth > 0) {
                double d = this.itemsWidth;
                double d2 = i4;
                Double.isNaN(d);
                Double.isNaN(d2);
                double d3 = d * d2;
                double d4 = this.itemsWidth + this.labelWidth;
                Double.isNaN(d4);
                this.itemsWidth = (int) (d3 / d4);
                this.labelWidth = i4 - this.itemsWidth;
            } else {
                this.itemsWidth = i4 + 8;
            }
        }
        if (this.itemsWidth > 0) {
            createLayouts(this.itemsWidth, this.labelWidth);
        }
        return i;
    }

    private void createLayouts(int i, int i2) {
        if (this.itemsLayout == null || this.itemsLayout.getWidth() > i) {
            this.itemsLayout = new StaticLayout(buildText(this.isScrollingPerformed), this.itemsPaint, i, i2 > 0 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER, 1.0f, 15.0f, false);
        } else {
            this.itemsLayout.increaseWidthTo(i);
        }
        if (!this.isScrollingPerformed && (this.valueLayout == null || this.valueLayout.getWidth() > i)) {
            String item = getAdapter() != null ? getAdapter().getItem(this.currentItem) : null;
            if (item == null) {
                item = "";
            }
            this.valueLayout = new StaticLayout(item, this.valuePaint, i, i2 > 0 ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_CENTER, 1.0f, 15.0f, false);
        } else if (this.isScrollingPerformed) {
            this.valueLayout = null;
        } else {
            this.valueLayout.increaseWidthTo(i);
        }
        if (i2 > 0) {
            if (this.labelLayout == null || this.labelLayout.getWidth() > i2) {
                this.labelLayout = new StaticLayout(this.label, this.valuePaint, i2, Layout.Alignment.ALIGN_NORMAL, 1.0f, 15.0f, false);
            } else {
                this.labelLayout.increaseWidthTo(i2);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int calculateLayoutWidth = calculateLayoutWidth(size, mode);
        if (mode2 != 1073741824) {
            int desiredHeight = getDesiredHeight(this.itemsLayout);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(desiredHeight, size2) : desiredHeight;
        }
        setMeasuredDimension(calculateLayoutWidth, size2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.itemsLayout == null) {
            if (this.itemsWidth == 0) {
                calculateLayoutWidth(getWidth(), 1073741824);
            } else {
                createLayouts(this.itemsWidth, this.labelWidth);
            }
        }
        if (this.itemsWidth > 0) {
            canvas.save();
            canvas.translate(10.0f, -this.ITEM_OFFSET);
            drawItems(canvas);
            drawValue(canvas);
            canvas.restore();
        }
        drawCenterRect(canvas);
        drawShadows(canvas);
    }

    private void drawShadows(Canvas canvas) {
        this.topShadow.setBounds(0, 0, getWidth(), getHeight() / this.visibleItems);
        this.topShadow.draw(canvas);
        this.bottomShadow.setBounds(0, getHeight() - (getHeight() / this.visibleItems), getWidth(), getHeight());
        this.bottomShadow.draw(canvas);
    }

    private void drawValue(Canvas canvas) {
        this.valuePaint.setColor(VALUE_TEXT_COLOR);
        this.valuePaint.drawableState = getDrawableState();
        Rect rect = new Rect();
        this.itemsLayout.getLineBounds(this.visibleItems / 2, rect);
        if (this.labelLayout != null) {
            canvas.save();
            canvas.translate(this.itemsLayout.getWidth() + 8, rect.top);
            this.labelLayout.draw(canvas);
            canvas.restore();
        }
        if (this.valueLayout != null) {
            canvas.save();
            canvas.translate(0.0f, rect.top + this.scrollingOffset);
            this.valueLayout.draw(canvas);
            canvas.restore();
        }
    }

    private void drawItems(Canvas canvas) {
        canvas.save();
        canvas.translate(0.0f, (-this.itemsLayout.getLineTop(1)) + this.scrollingOffset);
        this.itemsPaint.setColor(-16777216);
        this.itemsPaint.drawableState = getDrawableState();
        this.itemsLayout.draw(canvas);
        canvas.restore();
    }

    public String getCurrentItemValue() {
        return ((StrericWheelAdapter) getAdapter()).getStrContents()[getCurrentItem()];
    }

    private void drawCenterRect(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = getItemHeight() / 2;
        this.centerDrawable.setBounds(0, height - itemHeight, getWidth(), height + itemHeight);
        this.centerDrawable.draw(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (getAdapter() != null && !this.gestureDetector.onTouchEvent(motionEvent) && motionEvent.getAction() == 1) {
            justify();
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doScroll(int i) {
        this.scrollingOffset += i;
        int itemHeight = this.scrollingOffset / getItemHeight();
        int i2 = this.currentItem - itemHeight;
        if (this.isCyclic && this.adapter.getItemsCount() > 0) {
            while (i2 < 0) {
                i2 += this.adapter.getItemsCount();
            }
            i2 %= this.adapter.getItemsCount();
        } else if (!this.isScrollingPerformed) {
            i2 = Math.min(Math.max(i2, 0), this.adapter.getItemsCount() - 1);
        } else if (i2 < 0) {
            itemHeight = this.currentItem;
            i2 = 0;
        } else if (i2 >= this.adapter.getItemsCount()) {
            itemHeight = (this.currentItem - this.adapter.getItemsCount()) + 1;
            i2 = this.adapter.getItemsCount() - 1;
        }
        int i3 = this.scrollingOffset;
        if (i2 != this.currentItem) {
            setCurrentItem(i2, false);
        } else {
            invalidate();
        }
        this.scrollingOffset = i3 - (itemHeight * getItemHeight());
        if (this.scrollingOffset > getHeight()) {
            this.scrollingOffset = (this.scrollingOffset % getHeight()) + getHeight();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNextMessage(int i) {
        clearMessages();
        this.animationHandler.sendEmptyMessage(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMessages() {
        this.animationHandler.removeMessages(0);
        this.animationHandler.removeMessages(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void justify() {
        if (this.adapter == null) {
            return;
        }
        this.lastScrollY = 0;
        int i = this.scrollingOffset;
        int itemHeight = getItemHeight();
        boolean z = i <= 0 ? this.currentItem > 0 : this.currentItem < this.adapter.getItemsCount();
        if ((this.isCyclic || z) && Math.abs(i) > itemHeight / 2.0f) {
            i = i < 0 ? i + itemHeight + 0 : i - (itemHeight + 0);
        }
        int i2 = i;
        if (Math.abs(i2) > 0) {
            this.scroller.startScroll(0, 0, 0, i2, 400);
            setNextMessage(1);
            return;
        }
        finishScrolling();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startScrolling() {
        if (this.isScrollingPerformed) {
            return;
        }
        this.isScrollingPerformed = true;
        notifyScrollingListenersAboutStart();
    }

    void finishScrolling() {
        if (this.isScrollingPerformed) {
            notifyScrollingListenersAboutEnd();
            this.isScrollingPerformed = false;
        }
        invalidateLayouts();
        invalidate();
    }

    public void scroll(int i, int i2) {
        this.scroller.forceFinished(true);
        this.lastScrollY = this.scrollingOffset;
        this.scroller.startScroll(0, this.lastScrollY, 0, (i * getItemHeight()) - this.lastScrollY, i2);
        setNextMessage(0);
        startScrolling();
    }

    public void setTextSize(int i) {
        if (i == 3) {
            this.TEXT_SIZE = 36;
        } else if (i == 4 || i == 5) {
            this.TEXT_SIZE = 54;
        } else {
            this.TEXT_SIZE = 72;
        }
        this.ITEM_OFFSET = this.TEXT_SIZE / 20;
    }
}
