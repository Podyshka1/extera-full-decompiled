package org.telegram.p029ui.Components;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.viewpager.widget.ViewPager;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class PagerSlidingTabStrip extends HorizontalScrollView {
    private int currentPosition;
    private float currentPositionOffset;
    private LinearLayout.LayoutParams defaultTabLayoutParams;
    public ViewPager.OnPageChangeListener delegatePageListener;
    private int dividerPadding;
    private int indicatorColor;
    private int indicatorHeight;
    private int lastScrollX;
    private AnimatedFloat lineLeftAnimated;
    private AnimatedFloat lineRightAnimated;
    private final PageListener pageListener;
    private ViewPager pager;
    private Paint rectPaint;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollOffset;
    private boolean shouldExpand;
    private int tabCount;
    private int tabPadding;
    private LinearLayout tabsContainer;
    private int underlineColor;
    private int underlineHeight;

    public interface IconTabProvider {
        boolean canScrollToTab(int i);

        void customOnDraw(Canvas canvas, View view, int i);

        Drawable getPageIconDrawable(int i);

        int getTabPadding(int i);
    }

    public PagerSlidingTabStrip(Context context, Theme.ResourcesProvider resourcesProvider) {
        super(context);
        this.pageListener = new PageListener();
        this.currentPosition = 0;
        this.currentPositionOffset = 0.0f;
        this.indicatorColor = -10066330;
        this.underlineColor = 436207616;
        this.shouldExpand = false;
        this.scrollOffset = AndroidUtilities.m1124dp(52.0f);
        this.indicatorHeight = AndroidUtilities.m1124dp(8.0f);
        this.underlineHeight = AndroidUtilities.m1124dp(2.0f);
        this.dividerPadding = AndroidUtilities.m1124dp(12.0f);
        this.tabPadding = AndroidUtilities.m1124dp(24.0f);
        this.lastScrollX = 0;
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.lineLeftAnimated = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
        this.lineRightAnimated = new AnimatedFloat(this, 350L, cubicBezierInterpolator);
        this.resourcesProvider = resourcesProvider;
        setFillViewport(true);
        setWillNotDraw(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.tabsContainer = linearLayout;
        linearLayout.setOrientation(0);
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(this.tabsContainer);
        Paint paint = new Paint();
        this.rectPaint = paint;
        paint.setAntiAlias(true);
        this.rectPaint.setStyle(Paint.Style.FILL);
        this.defaultTabLayoutParams = new LinearLayout.LayoutParams(-2, -1);
    }

    public void setViewPager(ViewPager viewPager) {
        this.pager = viewPager;
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        viewPager.setOnPageChangeListener(this.pageListener);
        notifyDataSetChanged();
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.delegatePageListener = onPageChangeListener;
    }

    public void notifyDataSetChanged() {
        this.tabsContainer.removeAllViews();
        this.tabCount = this.pager.getAdapter().getCount();
        for (int i = 0; i < this.tabCount; i++) {
            if (this.pager.getAdapter() instanceof IconTabProvider) {
                Drawable pageIconDrawable = ((IconTabProvider) this.pager.getAdapter()).getPageIconDrawable(i);
                if (pageIconDrawable != null) {
                    addIconTab(i, pageIconDrawable, this.pager.getAdapter().getPageTitle(i));
                } else {
                    addTab(i, this.pager.getAdapter().getPageTitle(i));
                }
            } else {
                addTab(i, this.pager.getAdapter().getPageTitle(i));
            }
        }
        updateTabStyles();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: org.telegram.ui.Components.PagerSlidingTabStrip.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                PagerSlidingTabStrip.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                PagerSlidingTabStrip pagerSlidingTabStrip = PagerSlidingTabStrip.this;
                pagerSlidingTabStrip.currentPosition = pagerSlidingTabStrip.pager.getCurrentItem();
                PagerSlidingTabStrip pagerSlidingTabStrip2 = PagerSlidingTabStrip.this;
                pagerSlidingTabStrip2.scrollToChild(pagerSlidingTabStrip2.currentPosition, 0);
            }
        });
    }

    public View getTab(int i) {
        if (i < 0 || i >= this.tabsContainer.getChildCount()) {
            return null;
        }
        return this.tabsContainer.getChildAt(i);
    }

    private void addIconTab(final int i, Drawable drawable, CharSequence charSequence) {
        ImageView imageView = new ImageView(getContext()) { // from class: org.telegram.ui.Components.PagerSlidingTabStrip.2
            @Override // android.widget.ImageView, android.view.View
            protected void onDraw(Canvas canvas) {
                super.onDraw(canvas);
                if (PagerSlidingTabStrip.this.pager.getAdapter() instanceof IconTabProvider) {
                    ((IconTabProvider) PagerSlidingTabStrip.this.pager.getAdapter()).customOnDraw(canvas, this, i);
                }
            }

            @Override // android.widget.ImageView, android.view.View
            public void setSelected(boolean z) {
                super.setSelected(z);
                Drawable background = getBackground();
                if (background != null) {
                    Theme.setSelectorDrawableColor(background, PagerSlidingTabStrip.this.getGlassIconColor(z ? 0.1f : 0.05f), true);
                }
            }
        };
        imageView.setFocusable(true);
        RippleDrawable rippleDrawable = (RippleDrawable) Theme.createSelectorDrawable(getGlassIconColor(0.05f), 1, AndroidUtilities.m1124dp(18.0f));
        Theme.setRippleDrawableForceSoftware(rippleDrawable);
        imageView.setBackground(rippleDrawable);
        imageView.setImageDrawable(drawable);
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PagerSlidingTabStrip$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addIconTab$0(i, view);
            }
        });
        this.tabsContainer.addView(imageView);
        imageView.setSelected(i == this.currentPosition);
        imageView.setContentDescription(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addIconTab$0(int i, View view) {
        if (!(this.pager.getAdapter() instanceof IconTabProvider) || ((IconTabProvider) this.pager.getAdapter()).canScrollToTab(i)) {
            this.pager.setCurrentItem(i, false);
        }
    }

    private void addTab(final int i, CharSequence charSequence) {
        TextTab textTab = new TextTab(getContext(), i);
        textTab.setTextSize(1, 14.0f);
        textTab.setTypeface(AndroidUtilities.bold());
        textTab.setTextColor(getGlassIconColor(0.6f));
        textTab.setFocusable(true);
        textTab.setGravity(17);
        textTab.setText(charSequence);
        ScaleStateListAnimator.apply(textTab, 0.025f, 1.2f);
        textTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.PagerSlidingTabStrip$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$addTab$1(i, view);
            }
        });
        textTab.setPadding(AndroidUtilities.m1124dp(16.0f), 0, AndroidUtilities.m1124dp(16.0f), 0);
        this.tabsContainer.addView(textTab, LayoutHelper.createLinear(-2, -2, 10.0f, 0.0f, 10.0f, 0.0f));
        textTab.setSelected(i == this.currentPosition);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$addTab$1(int i, View view) {
        if (!(this.pager.getAdapter() instanceof IconTabProvider) || ((IconTabProvider) this.pager.getAdapter()).canScrollToTab(i)) {
            this.pager.setCurrentItem(i, false);
        }
    }

    private void updateTabStyles() {
        for (int i = 0; i < this.tabCount; i++) {
            View childAt = this.tabsContainer.getChildAt(i);
            childAt.setLayoutParams(this.defaultTabLayoutParams);
            if (this.shouldExpand) {
                childAt.setPadding(0, 0, 0, 0);
                childAt.setLayoutParams(new LinearLayout.LayoutParams(-1, -1, 1.0f));
            } else if (this.pager.getAdapter() instanceof IconTabProvider) {
                int tabPadding = ((IconTabProvider) this.pager.getAdapter()).getTabPadding(i);
                childAt.setPadding(tabPadding, 0, tabPadding, 0);
            } else {
                int i2 = this.tabPadding;
                childAt.setPadding(i2, 0, i2, 0);
            }
        }
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (!this.shouldExpand || View.MeasureSpec.getMode(i) == 0) {
            return;
        }
        this.tabsContainer.measure(getMeasuredWidth() | TLObject.FLAG_30, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scrollToChild(int i, int i2) {
        View childAt;
        if (this.tabCount == 0 || (childAt = this.tabsContainer.getChildAt(i)) == null) {
            return;
        }
        int left = childAt.getLeft() + i2;
        if (i > 0 || i2 > 0) {
            left -= this.scrollOffset;
        }
        if (left != this.lastScrollX) {
            this.lastScrollX = left;
            scrollTo(left, 0);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        float f2;
        int i;
        if (isInEditMode() || this.tabCount == 0) {
            super.onDraw(canvas);
            return;
        }
        int height = getHeight();
        if (this.underlineHeight != 0) {
            this.rectPaint.setColor(this.underlineColor);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(0.0f, height - this.underlineHeight, this.tabsContainer.getWidth(), height);
            int i2 = this.underlineHeight;
            canvas.drawRoundRect(rectF, i2 / 2.0f, i2 / 2.0f, this.rectPaint);
        }
        View childAt = this.tabsContainer.getChildAt(this.currentPosition);
        if (childAt != null) {
            float left = childAt.getLeft() + childAt.getPaddingLeft();
            float right = childAt.getRight() - childAt.getPaddingRight();
            if (this.currentPositionOffset > 0.0f && (i = this.currentPosition) < this.tabCount - 1) {
                View childAt2 = this.tabsContainer.getChildAt(i + 1);
                float left2 = childAt2.getLeft() + childAt2.getPaddingLeft();
                float right2 = childAt2.getRight() - childAt2.getPaddingRight();
                float f3 = this.currentPositionOffset;
                f = (left2 * f3) + ((1.0f - f3) * left);
                f2 = (right2 * f3) + ((1.0f - f3) * right);
                this.lineLeftAnimated.set(f, true);
                this.lineRightAnimated.set(f2, true);
                if (childAt instanceof TextTab) {
                    ((TextTab) childAt).setSelectedProgress(1.0f - this.currentPositionOffset);
                }
                if (childAt2 instanceof TextTab) {
                    ((TextTab) childAt2).setSelectedProgress(this.currentPositionOffset);
                }
            } else {
                f = this.lineLeftAnimated.set(left);
                f2 = this.lineRightAnimated.set(right);
            }
            if (this.indicatorHeight != 0) {
                this.rectPaint.setColor(this.indicatorColor);
                RectF rectF2 = AndroidUtilities.rectTmp;
                rectF2.set(f - AndroidUtilities.m1124dp(11.0f), getPaddingTop(), f2 + AndroidUtilities.m1124dp(11.0f), height - getPaddingBottom());
                rectF2.offset(getPaddingLeft(), 0.0f);
                canvas.drawRoundRect(rectF2, rectF2.height() / 2.0f, rectF2.height() / 2.0f, this.rectPaint);
            }
        }
        super.onDraw(canvas);
    }

    private class PageListener implements ViewPager.OnPageChangeListener {
        private PageListener() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
            PagerSlidingTabStrip.this.currentPosition = i;
            PagerSlidingTabStrip.this.currentPositionOffset = f;
            if (PagerSlidingTabStrip.this.tabsContainer.getChildAt(i) != null) {
                PagerSlidingTabStrip.this.scrollToChild(i, (int) (r0.tabsContainer.getChildAt(i).getWidth() * f));
                PagerSlidingTabStrip.this.invalidate();
                ViewPager.OnPageChangeListener onPageChangeListener = PagerSlidingTabStrip.this.delegatePageListener;
                if (onPageChangeListener != null) {
                    onPageChangeListener.onPageScrolled(i, f, i2);
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                PagerSlidingTabStrip pagerSlidingTabStrip = PagerSlidingTabStrip.this;
                pagerSlidingTabStrip.scrollToChild(pagerSlidingTabStrip.pager.getCurrentItem(), 0);
            }
            ViewPager.OnPageChangeListener onPageChangeListener = PagerSlidingTabStrip.this.delegatePageListener;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageScrollStateChanged(i);
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            ViewPager.OnPageChangeListener onPageChangeListener = PagerSlidingTabStrip.this.delegatePageListener;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(i);
            }
            int i2 = 0;
            while (i2 < PagerSlidingTabStrip.this.tabsContainer.getChildCount()) {
                PagerSlidingTabStrip.this.tabsContainer.getChildAt(i2).setSelected(i2 == i);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getGlassIconColor(float f) {
        return ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_glass_defaultIcon, this.resourcesProvider), (int) (f * 255.0f));
    }

    @Override // android.widget.HorizontalScrollView, android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        if (this.shouldExpand) {
            return;
        }
        post(new Runnable() { // from class: org.telegram.ui.Components.PagerSlidingTabStrip$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.notifyDataSetChanged();
            }
        });
    }

    public void setIndicatorColor(int i) {
        this.indicatorColor = i;
        invalidate();
    }

    public void setIndicatorColorResource(int i) {
        this.indicatorColor = getResources().getColor(i);
        invalidate();
    }

    public int getIndicatorColor() {
        return this.indicatorColor;
    }

    public void setIndicatorHeight(int i) {
        this.indicatorHeight = i;
        invalidate();
    }

    public int getIndicatorHeight() {
        return this.indicatorHeight;
    }

    public void setUnderlineColor(int i) {
        this.underlineColor = i;
        invalidate();
    }

    public void setUnderlineColorResource(int i) {
        this.underlineColor = getResources().getColor(i);
        invalidate();
    }

    public int getUnderlineColor() {
        return this.underlineColor;
    }

    public void setUnderlineHeight(int i) {
        this.underlineHeight = i;
        invalidate();
    }

    public int getUnderlineHeight() {
        return this.underlineHeight;
    }

    public void setDividerPadding(int i) {
        this.dividerPadding = i;
        invalidate();
    }

    public int getDividerPadding() {
        return this.dividerPadding;
    }

    public void setScrollOffset(int i) {
        this.scrollOffset = i;
        invalidate();
    }

    public int getScrollOffset() {
        return this.scrollOffset;
    }

    public void setShouldExpand(boolean z) {
        this.shouldExpand = z;
        this.tabsContainer.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        updateTabStyles();
        requestLayout();
    }

    public boolean getShouldExpand() {
        return this.shouldExpand;
    }

    public void setTabPaddingLeftRight(int i) {
        this.tabPadding = i;
        updateTabStyles();
    }

    public int getTabPaddingLeftRight() {
        return this.tabPadding;
    }

    private class TextTab extends TextView {
        final int position;

        public TextTab(Context context, int i) {
            super(context);
            this.position = i;
        }

        @Override // android.widget.TextView, android.view.View
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            if (PagerSlidingTabStrip.this.pager.getAdapter() instanceof IconTabProvider) {
                ((IconTabProvider) PagerSlidingTabStrip.this.pager.getAdapter()).customOnDraw(canvas, this, this.position);
            }
        }

        @Override // android.widget.TextView, android.view.View
        public void setSelected(boolean z) {
            super.setSelected(z);
            Drawable background = getBackground();
            if (background != null) {
                Theme.setSelectorDrawableColor(background, PagerSlidingTabStrip.this.getGlassIconColor(z ? 0.1f : 0.05f), true);
            }
            setTextColor(PagerSlidingTabStrip.this.getGlassIconColor(z ? 0.8f : 0.4f));
        }

        public void setSelectedProgress(float f) {
            setTextColor(PagerSlidingTabStrip.this.getGlassIconColor(AndroidUtilities.lerp(0.4f, 0.8f, f)));
        }
    }
}
