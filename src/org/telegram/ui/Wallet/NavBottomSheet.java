package org.telegram.ui.Wallet;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ViewPagerFixed;

/* JADX INFO: loaded from: classes8.dex */
public class NavBottomSheet extends BottomSheet {
    private boolean adapterAttached;
    private Integer backgroundColorOverride;
    private FrameLayout footerContainer;
    private final ArrayList<View> pageViews;
    private final ViewPagerFixed viewPager;

    public interface NavPage {
        float top();

        default void update() {
        }
    }

    public NavBottomSheet(Context context, Theme.ResourcesProvider resourcesProvider, View... viewArr) {
        this(context, resourcesProvider, (List<View>) (viewArr == null ? null : Arrays.asList(viewArr)));
    }

    public NavBottomSheet(Context context, Theme.ResourcesProvider resourcesProvider, List<View> list) {
        super(context, true, resourcesProvider);
        ArrayList<View> arrayList = new ArrayList<>();
        this.pageViews = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
        NavContainerView navContainerView = new NavContainerView(context);
        this.containerView = navContainerView;
        ViewPagerFixed viewPagerFixed = new ViewPagerFixed(context) { // from class: org.telegram.ui.Wallet.NavBottomSheet.1
            @Override // org.telegram.ui.Components.ViewPagerFixed
            public void onTabAnimationUpdate(boolean z) {
                ((BottomSheet) NavBottomSheet.this).containerView.invalidate();
            }
        };
        this.viewPager = viewPagerFixed;
        int i = this.backgroundPaddingLeft;
        viewPagerFixed.setPadding(i, 0, i, AndroidUtilities.navigationBarHeight);
        navContainerView.addView(viewPagerFixed, LayoutHelper.createFrame(-1, -1, 119));
    }

    public NavBottomSheet setFixedFooter(View view) {
        FrameLayout frameLayout = this.footerContainer;
        if (frameLayout == null) {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            this.footerContainer = frameLayout2;
            frameLayout2.setClipChildren(false);
            this.footerContainer.setClipToPadding(false);
            this.containerView.addView(this.footerContainer, LayoutHelper.createFrame(-1, -2, 80));
        } else {
            frameLayout.removeAllViews();
        }
        this.footerContainer.addView(view, LayoutHelper.createFrame(-1, -2, 80));
        ViewPagerFixed viewPagerFixed = this.viewPager;
        int i = this.backgroundPaddingLeft;
        viewPagerFixed.setPadding(i, 0, i, 0);
        ((NavContainerView) this.containerView).requestLayout();
        return this;
    }

    public NavBottomSheet setBackgroundOverride(int i) {
        this.backgroundColorOverride = Integer.valueOf(i);
        setBackgroundColor(i);
        fixNavigationBar(i);
        ((NavContainerView) this.containerView).invalidate();
        return this;
    }

    public NavBottomSheet addPage(View view) {
        this.pageViews.add(view);
        if (this.adapterAttached) {
            this.viewPager.rebuild(false);
            this.viewPager.fillTabs(false);
        }
        return this;
    }

    public boolean openPage(int i) {
        if (i < 0 || i >= this.pageViews.size() || i == this.viewPager.getCurrentPosition()) {
            return false;
        }
        closeKeyboard();
        return this.viewPager.scrollToPosition(i);
    }

    public boolean goBack() {
        if (this.viewPager.getCurrentPosition() <= 0) {
            return false;
        }
        closeKeyboard();
        ViewPagerFixed viewPagerFixed = this.viewPager;
        viewPagerFixed.scrollToPosition(viewPagerFixed.getCurrentPosition() - 1);
        return true;
    }

    public void closeKeyboard() {
        for (View view : this.viewPager.getViewPages()) {
            if (view != null) {
                AndroidUtilities.hideKeyboard(view);
            }
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    public void show() {
        if (!this.adapterAttached) {
            this.adapterAttached = true;
            this.viewPager.setAdapter(new ViewPagerFixed.Adapter() { // from class: org.telegram.ui.Wallet.NavBottomSheet.2
                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public int getItemViewType(int i) {
                    return i;
                }

                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public int getItemCount() {
                    return NavBottomSheet.this.pageViews.size();
                }

                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public View createView(int i) {
                    return (View) NavBottomSheet.this.pageViews.get(i);
                }

                /* JADX WARN: Multi-variable type inference failed */
                @Override // org.telegram.ui.Components.ViewPagerFixed.Adapter
                public void bindView(View view, int i, int i2) {
                    if (view instanceof NavPage) {
                        ((NavPage) view).update();
                    }
                }
            });
        }
        super.show();
        Integer num = this.backgroundColorOverride;
        if (num != null) {
            setOverlayNavBarColor(num.intValue());
        }
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet, android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$9() {
        if (goBack()) {
            return;
        }
        super.lambda$openCrafting$9();
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canDismissWithSwipe() {
        return this.viewPager.getCurrentPosition() == 0;
    }

    @Override // org.telegram.ui.ActionBar.BottomSheet
    public boolean canSwipeToBack(MotionEvent motionEvent) {
        return this.viewPager.getCurrentPosition() == 0;
    }

    public static class Page extends FrameLayout implements NavPage {
        private final FrameLayout content;

        public Page(Context context) {
            super(context);
            setClipChildren(false);
            setClipToPadding(false);
            FrameLayout frameLayout = new FrameLayout(context);
            this.content = frameLayout;
            addView(frameLayout, LayoutHelper.createFrame(-1, -2, 80));
        }

        public FrameLayout getContent() {
            return this.content;
        }

        @Override // org.telegram.ui.Wallet.NavBottomSheet.NavPage
        public float top() {
            return Math.max(0.0f, getHeight() - this.content.getMeasuredHeight());
        }
    }

    public class NavContainerView extends FrameLayout {
        private final Paint backgroundPaint;
        private final Path clipPath;
        private final AnimatedFloat isActionBar;
        private float top;

        public NavContainerView(Context context) {
            super(context);
            this.isActionBar = new AnimatedFloat(this, 250L, CubicBezierInterpolator.EASE_OUT_QUINT);
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.clipPath = new Path();
            setWillNotDraw(false);
            paint.setColor(NavBottomSheet.this.getThemedColor(Theme.key_dialogBackground));
        }

        @Override // android.widget.FrameLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int measuredHeight;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            if (NavBottomSheet.this.footerContainer != null) {
                NavBottomSheet.this.footerContainer.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(0, 0));
                measuredHeight = NavBottomSheet.this.footerContainer.getMeasuredHeight();
            } else {
                measuredHeight = 0;
            }
            NavBottomSheet.this.viewPager.measure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.max(0, size2 - measuredHeight), TLObject.FLAG_30));
            setMeasuredDimension(size, size2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private float navTopFor(View view) {
            if (view instanceof NavPage) {
                return ((NavPage) view).top();
            }
            return 0.0f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int themedColor;
            Paint paint = this.backgroundPaint;
            Integer num = NavBottomSheet.this.backgroundColorOverride;
            NavBottomSheet navBottomSheet = NavBottomSheet.this;
            if (num == null) {
                themedColor = navBottomSheet.getThemedColor(Theme.key_dialogBackground);
            } else {
                themedColor = navBottomSheet.backgroundColorOverride.intValue();
            }
            paint.setColor(themedColor);
            View[] viewPages = NavBottomSheet.this.viewPager.getViewPages();
            this.top = 0.0f;
            for (GLSurfaceView gLSurfaceView : viewPages) {
                if (gLSurfaceView != 0) {
                    this.top += navTopFor(gLSurfaceView) * Utilities.clamp(1.0f - Math.abs(gLSurfaceView.getTranslationX() / Math.max(1, gLSurfaceView.getMeasuredWidth())), 1.0f, 0.0f);
                    if (gLSurfaceView.getVisibility() == 0 && (gLSurfaceView instanceof NavPage)) {
                        ((NavPage) gLSurfaceView).update();
                    }
                }
            }
            float f = this.isActionBar.set(this.top <= ((float) AndroidUtilities.statusBarHeight) ? 1.0f : 0.0f);
            this.top = Math.max(AndroidUtilities.statusBarHeight, this.top) - (AndroidUtilities.statusBarHeight * f);
            RectF rectF = AndroidUtilities.rectTmp;
            rectF.set(((BottomSheet) NavBottomSheet.this).backgroundPaddingLeft, this.top, getWidth() - ((BottomSheet) NavBottomSheet.this).backgroundPaddingLeft, getHeight() + AndroidUtilities.dp(8.0f));
            float fLerp = AndroidUtilities.lerp(AndroidUtilities.dp(14.0f), 0, f);
            canvas.drawRoundRect(rectF, fLerp, fLerp, this.backgroundPaint);
            NavBottomSheet navBottomSheet2 = NavBottomSheet.this;
            if (navBottomSheet2.topBulletinContainer != null) {
                NavBottomSheet.this.topBulletinContainer.setTranslationY(Math.max((((BottomSheet) navBottomSheet2).containerView.getY() + this.top) + ((BottomSheet) NavBottomSheet.this).backgroundPaddingTop, (AndroidUtilities.statusBarHeight + AndroidUtilities.dp(56.0f)) + NavBottomSheet.this.topBulletinContainer.getHeight()) - NavBottomSheet.this.topBulletinContainer.getBottom());
            }
            canvas.save();
            this.clipPath.rewind();
            this.clipPath.addRoundRect(rectF, fLerp, fLerp, Path.Direction.CW);
            canvas.clipPath(this.clipPath);
            super.dispatchDraw(canvas);
            canvas.restore();
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0 && motionEvent.getY() < this.top) {
                NavBottomSheet.this.dismiss();
                return true;
            }
            return super.dispatchTouchEvent(motionEvent);
        }
    }
}
