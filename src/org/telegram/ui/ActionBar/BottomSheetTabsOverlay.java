package org.telegram.ui.ActionBar;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.RenderNode;
import android.graphics.Shader;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.OverScroller;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.zxing.common.detector.MathUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.BotFullscreenButtons$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.C2665R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.Utilities;
import org.telegram.ui.ActionBar.BottomSheetTabs;
import org.telegram.ui.ActionBar.BottomSheetTabsOverlay;
import org.telegram.ui.Components.AnimatedFloat;
import org.telegram.ui.Components.ButtonBounce;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Text;
import org.telegram.ui.GradientClip;
import org.telegram.ui.bots.BotWebViewSheet;

/* JADX INFO: loaded from: classes3.dex */
public class BottomSheetTabsOverlay extends View {
    private OverlayAccessibilityHelper accessibilityHelper;
    private View actionBarLayout;
    private final AnimatedFloat animatedCount;
    private ValueAnimator animator;
    private Bitmap blurBitmap;
    private Paint blurBitmapPaint;
    private BitmapShader blurBitmapShader;
    private Matrix blurMatrix;
    private final Path clipPath;
    private final RectF clipRect;
    private Drawable closeAllButtonBackground;
    private boolean closeAllButtonBackgroundDark;
    private Text closeAllButtonText;
    private float dismissProgress;
    private Sheet dismissingSheet;
    private BottomSheetTabs.TabDrawable dismissingTab;
    private GradientClip gradientClip;
    private boolean hitCloseAllButton;
    private boolean horizontallySwiping;
    public boolean isOpen;
    private float lastY;
    private final int maximumVelocity;
    private final int minimumVelocity;
    private int navigationBarInset;
    public float offset;
    private ValueAnimator openAnimator;
    private float openProgress;
    private float openingProgress;
    private Sheet openingSheet;
    private BottomSheetTabs.TabDrawable openingTab;
    private float openingTabScroll;
    private final int[] pos;
    private final int[] pos2;
    private final int[] pos3;
    private TabPreview pressTab;
    private boolean pressTabClose;
    private final RectF rect;
    private final RectF rect2;
    private ValueAnimator scrollAnimator;
    private final OverScroller scroller;
    private boolean slowerDismiss;
    private long startTime;
    private float startX;
    private float startY;
    private final ArrayList<TabPreview> tabs;
    private BottomSheetTabs tabsView;
    private final RectF tabsViewBounds;
    private VelocityTracker velocityTracker;
    private boolean verticallyScrolling;

    public interface Sheet {
        void dismiss(boolean z);

        int getNavigationBarColor(int i);

        /* JADX INFO: renamed from: getWindowView */
        SheetView mo7262getWindowView();

        boolean hadDialog();

        void release();

        BottomSheetTabs.WebTabData saveState();

        boolean setDialog(BottomSheetTabDialog bottomSheetTabDialog);

        default void setLastVisible(boolean z) {
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface SheetView {
        float drawInto(Canvas canvas, RectF rectF, float f, RectF rectF2, float f2, boolean z);

        Context getContext();

        RectF getRect();

        void setDrawingFromOverlay(boolean z);
    }

    public BottomSheetTabsOverlay(Context context) {
        super(context);
        this.animatedCount = new AnimatedFloat(this, 0L, 350L, CubicBezierInterpolator.EASE_OUT_QUINT);
        this.tabsViewBounds = new RectF();
        this.tabs = new ArrayList<>();
        this.pos = new int[2];
        this.pos2 = new int[2];
        this.pos3 = new int[2];
        this.rect = new RectF();
        this.rect2 = new RectF();
        this.clipRect = new RectF();
        this.clipPath = new Path();
        setWillNotDraw(false);
        this.scroller = new OverScroller(context);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.maximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.minimumVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        OverlayAccessibilityHelper overlayAccessibilityHelper = new OverlayAccessibilityHelper(this);
        this.accessibilityHelper = overlayAccessibilityHelper;
        ViewCompat.setAccessibilityDelegate(this, overlayAccessibilityHelper);
        setImportantForAccessibility(2);
        ViewCompat.setOnApplyWindowInsetsListener(this, new OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda7
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.onApplyWindowInsets(view, windowInsetsCompat);
            }
        });
    }

    @Override // android.view.View
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        OverlayAccessibilityHelper overlayAccessibilityHelper;
        if (this.openProgress <= 0.0f || (overlayAccessibilityHelper = this.accessibilityHelper) == null || !overlayAccessibilityHelper.dispatchHoverEvent(motionEvent)) {
            return super.dispatchHoverEvent(motionEvent);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        this.navigationBarInset = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.navigationBars()).bottom;
        invalidate();
        return WindowInsetsCompat.CONSUMED;
    }

    public void setTabsView(BottomSheetTabs bottomSheetTabs) {
        this.tabsView = bottomSheetTabs;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if ((AndroidUtilities.isTablet() && motionEvent.getAction() == 0 && !this.tabsViewBounds.contains(motionEvent.getX(), motionEvent.getY())) || this.openProgress <= 0.0f) {
            return false;
        }
        if (this.velocityTracker == null) {
            this.velocityTracker = VelocityTracker.obtain();
        }
        this.velocityTracker.addMovement(motionEvent);
        if (motionEvent.getAction() == 0) {
            this.startTime = System.currentTimeMillis();
            this.startX = motionEvent.getX();
            this.startY = motionEvent.getY();
            this.pressTab = getTabAt(motionEvent.getX(), motionEvent.getY());
            Drawable drawable = this.closeAllButtonBackground;
            boolean z = drawable != null && drawable.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
            this.hitCloseAllButton = z;
            if (z) {
                this.pressTab = null;
            }
            Drawable drawable2 = this.closeAllButtonBackground;
            if (drawable2 != null) {
                drawable2.setHotspot(motionEvent.getX(), motionEvent.getY());
                this.closeAllButtonBackground.setState(this.hitCloseAllButton ? new int[]{R.attr.state_pressed, R.attr.state_enabled} : new int[0]);
            }
            this.verticallyScrolling = false;
            this.horizontallySwiping = false;
            this.pressTabClose = false;
            TabPreview tabPreview = this.pressTab;
            if (tabPreview != null) {
                tabPreview.cancelDismissAnimator();
                boolean zContains = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                this.pressTabClose = zContains;
                if (zContains) {
                    this.pressTab.tabDrawable.closeRipple.setHotspot((int) (motionEvent.getX() - this.rect.left), (int) (motionEvent.getY() - this.rect.centerY()));
                }
                this.pressTab.setPressed(!this.pressTabClose);
                this.pressTab.tabDrawable.closeRipple.setState(this.pressTabClose ? new int[]{R.attr.state_pressed, R.attr.state_enabled} : new int[0]);
            }
            this.lastY = motionEvent.getY();
            if (!this.scroller.isFinished()) {
                this.scroller.abortAnimation();
            }
            ValueAnimator valueAnimator = this.scrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.scrollAnimator = null;
            }
        } else if (motionEvent.getAction() == 2) {
            TabPreview tabPreview2 = this.pressTab;
            if (tabPreview2 != null) {
                if (tabPreview2.isPressed()) {
                    if (!this.horizontallySwiping && !this.verticallyScrolling && MathUtils.distance(this.startX, motionEvent.getY(), motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        this.horizontallySwiping = true;
                    }
                    if (!this.verticallyScrolling && !this.horizontallySwiping && MathUtils.distance(motionEvent.getX(), this.startY, motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        if (!this.scroller.isFinished()) {
                            this.scroller.abortAnimation();
                        }
                        ValueAnimator valueAnimator2 = this.scrollAnimator;
                        if (valueAnimator2 != null) {
                            valueAnimator2.cancel();
                            this.scrollAnimator = null;
                        }
                        this.verticallyScrolling = true;
                    }
                    if (this.tabsView != null && (this.verticallyScrolling || this.horizontallySwiping)) {
                        this.pressTab.setPressed(false);
                        this.pressTab.cancelDismissAnimator();
                    }
                } else {
                    if (!this.pressTabClose && !this.horizontallySwiping && !this.verticallyScrolling && MathUtils.distance(this.startX, motionEvent.getY(), motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        this.horizontallySwiping = true;
                    }
                    if (!this.pressTabClose && !this.verticallyScrolling && !this.horizontallySwiping && MathUtils.distance(motionEvent.getX(), this.startY, motionEvent.getX(), motionEvent.getY()) > AndroidUtilities.touchSlop) {
                        if (!this.scroller.isFinished()) {
                            this.scroller.abortAnimation();
                        }
                        ValueAnimator valueAnimator3 = this.scrollAnimator;
                        if (valueAnimator3 != null) {
                            valueAnimator3.cancel();
                            this.scrollAnimator = null;
                        }
                        this.verticallyScrolling = true;
                    }
                    if (this.pressTabClose) {
                        boolean zContains2 = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                        this.pressTabClose = zContains2;
                        if (!zContains2) {
                            this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
                        }
                    }
                }
                if (!this.pressTab.isPressed()) {
                    if (this.horizontallySwiping) {
                        this.pressTab.dismissProgress = (motionEvent.getX() - this.startX) / AndroidUtilities.dp(300.0f);
                    } else if (this.verticallyScrolling) {
                        float y = motionEvent.getY() - this.lastY;
                        if (this.offset < getScrollMin()) {
                            y *= 1.0f - (Utilities.clamp((getScrollMin() - this.offset) / getScrollStep(), 1.0f, 0.0f) * 0.5f);
                        }
                        setScrollOffset(Utilities.clamp(((getScrollOffset() * getScrollStep()) - y) / getScrollStep(), getScrollMax(), getScrollMin() - (getScrollStep() * 1.4f)));
                        invalidate();
                    }
                }
                invalidate();
            }
            Drawable drawable3 = this.closeAllButtonBackground;
            if (drawable3 != null && this.hitCloseAllButton) {
                boolean z2 = this.pressTab == null && drawable3 != null && drawable3.getBounds().contains((int) motionEvent.getX(), (int) motionEvent.getY());
                this.hitCloseAllButton = z2;
                if (!z2) {
                    this.closeAllButtonBackground.setState(new int[0]);
                }
            }
            this.lastY = motionEvent.getY();
        } else if (motionEvent.getAction() == 1) {
            TabPreview tabPreview3 = this.pressTab;
            if (tabPreview3 != null) {
                if (this.tabsView != null && Math.abs(tabPreview3.dismissProgress) > 0.4f) {
                    final TabPreview tabPreview4 = this.pressTab;
                    this.tabsView.removeTab(tabPreview4.tabData, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda4
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$dispatchTouchEvent$0(tabPreview4, (Boolean) obj);
                        }
                    });
                } else {
                    this.pressTab.animateDismiss(0.0f);
                    if (this.tabsView != null && this.pressTab.isPressed()) {
                        closeTabsView();
                        TabPreview tabPreview5 = this.pressTab;
                        tabPreview5.webView = null;
                        this.tabsView.openTab(tabPreview5.tabData);
                    } else if (this.verticallyScrolling) {
                        if (this.offset < getScrollMin() - (getScrollWindow() * 0.15f)) {
                            closeTabsView();
                        } else if (this.offset < getScrollMin()) {
                            scrollTo(getScrollMin());
                        } else {
                            this.velocityTracker.computeCurrentVelocity(1000, this.maximumVelocity);
                            float yVelocity = this.velocityTracker.getYVelocity();
                            float fAbs = Math.abs(yVelocity);
                            float f = this.minimumVelocity;
                            OverScroller overScroller = this.scroller;
                            if (fAbs > f) {
                                overScroller.fling(0, (int) (getScrollOffset() * getScrollStep()), 0, (int) (-yVelocity), 0, 0, (int) (getScrollMin() * getScrollStep()), (int) (getScrollMax() * getScrollStep()), 0, (int) (getScrollStep() * 0.1f));
                            } else {
                                overScroller.startScroll(0, (int) (getScrollOffset() * getScrollStep()), 0, 0, 0);
                            }
                        }
                        this.velocityTracker.recycle();
                        this.velocityTracker = null;
                        postInvalidateOnAnimation();
                    }
                }
                this.pressTab.setPressed(false);
                if (this.pressTabClose) {
                    this.pressTabClose = this.pressTab.tabDrawable.closeRipple.getBounds().contains((int) (motionEvent.getX() - this.pressTab.clickBounds.left), (int) ((motionEvent.getY() - this.pressTab.clickBounds.top) - AndroidUtilities.dp(24.0f)));
                }
                if (this.pressTabClose) {
                    final TabPreview tabPreview6 = this.pressTab;
                    this.tabsView.removeTab(tabPreview6.tabData, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda5
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$dispatchTouchEvent$1(tabPreview6, (Boolean) obj);
                        }
                    });
                }
                this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
            } else if (this.hitCloseAllButton) {
                this.tabsView.removeAll();
                closeTabsView();
            } else if (MathUtils.distance(this.startX, this.startY, motionEvent.getX(), motionEvent.getY()) <= AndroidUtilities.touchSlop && !this.verticallyScrolling && !this.horizontallySwiping && System.currentTimeMillis() - this.startTime <= ViewConfiguration.getTapTimeout() * 1.2f) {
                closeTabsView();
            }
            this.pressTab = null;
            this.pressTabClose = false;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
            this.hitCloseAllButton = false;
            Drawable drawable4 = this.closeAllButtonBackground;
            if (drawable4 != null) {
                drawable4.setState(new int[0]);
            }
        } else if (motionEvent.getAction() == 3) {
            TabPreview tabPreview7 = this.pressTab;
            if (tabPreview7 != null) {
                tabPreview7.animateDismiss(0.0f);
                this.pressTab.setPressed(false);
                this.pressTab.tabDrawable.closeRipple.setState(new int[0]);
            }
            this.pressTab = null;
            this.pressTabClose = false;
            VelocityTracker velocityTracker2 = this.velocityTracker;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.velocityTracker = null;
            }
            this.hitCloseAllButton = false;
            Drawable drawable5 = this.closeAllButtonBackground;
            if (drawable5 != null) {
                drawable5.setState(new int[0]);
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchTouchEvent$0(TabPreview tabPreview, Boolean bool) {
        if (bool.booleanValue()) {
            tabPreview.animateDismiss(tabPreview.dismissProgress < 0.0f ? -1.0f : 1.0f);
            scrollTo(Utilities.clamp(this.offset, getScrollMax(false), getScrollMin(false)));
            if (this.tabsView.getTabs().isEmpty()) {
                closeTabsView();
                return;
            }
            return;
        }
        tabPreview.animateDismiss(0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dispatchTouchEvent$1(TabPreview tabPreview, Boolean bool) {
        if (bool.booleanValue()) {
            tabPreview.animateDismiss(1.0f);
            scrollTo(Utilities.clamp(this.offset, getScrollMax(false), getScrollMin(false)));
            if (this.tabsView.getTabs().isEmpty()) {
                closeTabsView();
                return;
            }
            return;
        }
        tabPreview.animateDismiss(0.0f);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.scroller.computeScrollOffset()) {
            setScrollOffset(this.scroller.getCurrY() / getScrollStep());
            postInvalidateOnAnimation();
        }
    }

    public float getScrollOffset() {
        return this.offset;
    }

    public void setScrollOffset(float f) {
        this.offset = f;
    }

    private float getScrollStep() {
        return AndroidUtilities.dp(200.0f);
    }

    public float getScrollRange() {
        return getScrollRange(true);
    }

    public float getScrollRange(boolean z) {
        float f = 0.0f;
        for (int i = 0; i < this.tabs.size(); i++) {
            f += this.tabs.get(i).tabDrawable.index >= 0 ? 1.0f : 0.0f;
        }
        return z ? this.animatedCount.set(f) : f;
    }

    public float getScrollWindow() {
        return Math.min(3.0f, getScrollRange());
    }

    public float getScrollWindow(boolean z) {
        return Math.min(3.0f, getScrollRange(z));
    }

    public float getScrollMin() {
        return getScrollMin(true);
    }

    public float getScrollMin(boolean z) {
        return ((-getScrollWindow()) / 3.0f) * Utilities.clamp(getScrollRange(z), 1.0f, 0.0f);
    }

    public float getScrollMax() {
        return getScrollMax(true);
    }

    public float getScrollMax(boolean z) {
        return (getScrollRange(z) - getScrollWindow(z)) - ((getScrollWindow(z) / 3.0f) * Utilities.clamp(4.0f - getScrollRange(z), 0.5f, 0.0f));
    }

    private TabPreview getTabAt(float f, float f2) {
        if (this.openProgress < 1.0f) {
            return null;
        }
        for (int size = this.tabs.size() - 1; size >= 0; size--) {
            TabPreview tabPreview = this.tabs.get(size);
            if (Math.abs(tabPreview.dismissProgress) < 0.4f && tabPreview.clickBounds.contains(f, f2)) {
                return tabPreview;
            }
        }
        return null;
    }

    public void setSlowerDismiss(boolean z) {
        this.slowerDismiss = z;
    }

    public void stopAnimations() {
        ValueAnimator valueAnimator = this.animator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.animator = null;
        }
    }

    public boolean dismissSheet(final Sheet sheet) {
        ValueAnimator valueAnimator;
        if (sheet == null || this.tabsView == null) {
            return false;
        }
        if ((this.dismissingSheet != null || this.openingSheet != null) && (valueAnimator = this.animator) != null) {
            valueAnimator.end();
            this.animator = null;
        }
        this.dismissingSheet = sheet;
        sheet.setLastVisible(false);
        ValueAnimator valueAnimator2 = this.animator;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
        }
        BottomSheetTabs.WebTabData webTabDataSaveState = sheet.saveState();
        this.dismissingTab = this.tabsView.pushTab(webTabDataSaveState);
        post(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                BottomSheetTabsOverlay.$r8$lambda$hXGnNPWO7I1wkl5xjJT0SgMoWSw(sheet);
            }
        });
        invalidate();
        this.dismissProgress = 0.0f;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.animator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                this.f$0.lambda$dismissSheet$4(valueAnimator3);
            }
        });
        this.animator.addListener(new C28552(webTabDataSaveState, sheet));
        AndroidUtilities.applySpring(this.animator, 220.0d, 30.0d, 1.0d);
        this.animator.setDuration((long) (r12.getDuration() * 1.1f));
        this.animator.start();
        this.slowerDismiss = false;
        return true;
    }

    public static /* synthetic */ void $r8$lambda$hXGnNPWO7I1wkl5xjJT0SgMoWSw(Sheet sheet) {
        if (sheet == null || sheet.mo7262getWindowView() == null) {
            return;
        }
        sheet.mo7262getWindowView().setDrawingFromOverlay(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissSheet$4(ValueAnimator valueAnimator) {
        this.dismissProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    /* JADX INFO: renamed from: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$2 */
    /* JADX INFO: loaded from: classes6.dex */
    public class C28552 extends AnimatorListenerAdapter {
        final /* synthetic */ Sheet val$sheet;
        final /* synthetic */ BottomSheetTabs.WebTabData val$tab;

        public C28552(BottomSheetTabs.WebTabData webTabData, Sheet sheet) {
            this.val$tab = webTabData;
            this.val$sheet = sheet;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            int i;
            int i2;
            if (BottomSheetTabsOverlay.this.animator != null && BottomSheetTabsOverlay.this.animator.equals(animator)) {
                BottomSheetTabsOverlay.this.animator = null;
            }
            final BottomSheetTabs.WebTabData webTabData = this.val$tab;
            View view = webTabData.webView;
            if (view == null) {
                view = webTabData.view2;
            }
            if (view != null && webTabData.previewBitmap == null && (i = webTabData.viewWidth) > 0 && (i2 = webTabData.viewHeight) > 0) {
                if (Build.VERSION.SDK_INT >= 26) {
                    float f = -webTabData.viewScroll;
                    final Sheet sheet = this.val$sheet;
                    BottomSheetTabsOverlay.renderHardwareViewToBitmap(view, f, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$2$$ExternalSyntheticLambda0
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            BottomSheetTabsOverlay.C28552.$r8$lambda$GCfik7AYPJcOu1GrqTlmVf7Z84w(webTabData, sheet, (Bitmap) obj);
                        }
                    });
                    BottomSheetTabsOverlay.this.dismissingSheet = null;
                    BottomSheetTabsOverlay.this.dismissingTab = null;
                    BottomSheetTabsOverlay.this.invalidate();
                    return;
                }
                webTabData.previewBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.RGB_565);
                Canvas canvas = new Canvas(this.val$tab.previewBitmap);
                canvas.translate(0.0f, -this.val$tab.viewScroll);
                view.draw(canvas);
            }
            this.val$sheet.mo7262getWindowView().setDrawingFromOverlay(false);
            this.val$sheet.release();
            BottomSheetTabsOverlay.this.dismissingSheet = null;
            BottomSheetTabsOverlay.this.dismissingTab = null;
            BottomSheetTabsOverlay.this.invalidate();
        }

        public static /* synthetic */ void $r8$lambda$GCfik7AYPJcOu1GrqTlmVf7Z84w(BottomSheetTabs.WebTabData webTabData, Sheet sheet, Bitmap bitmap) {
            webTabData.previewBitmap = bitmap;
            sheet.mo7262getWindowView().setDrawingFromOverlay(false);
            sheet.release();
        }
    }

    public boolean onBackPressed() {
        if (!this.isOpen) {
            return false;
        }
        closeTabsView();
        return true;
    }

    private void prepareBlur(View view) {
        AndroidUtilities.makingGlobalBlurBitmap = true;
        this.blurBitmap = AndroidUtilities.makeBlurBitmap(view, 14.0f, 14);
        AndroidUtilities.makingGlobalBlurBitmap = false;
        Paint paint = new Paint(1);
        this.blurBitmapPaint = paint;
        Bitmap bitmap = this.blurBitmap;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        this.blurBitmapShader = bitmapShader;
        paint.setShader(bitmapShader);
        ColorMatrix colorMatrix = new ColorMatrix();
        AndroidUtilities.adjustSaturationColorMatrix(colorMatrix, Theme.isCurrentThemeDark() ? 0.08f : 0.25f);
        this.blurBitmapPaint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        this.blurMatrix = new Matrix();
    }

    public void openTabsView() {
        BottomSheetTabs bottomSheetTabs = this.tabsView;
        if (bottomSheetTabs == null || !(bottomSheetTabs.getParent() instanceof View)) {
            return;
        }
        if (!BotWebViewSheet.activeSheets.isEmpty()) {
            Iterator it = new HashSet(BotWebViewSheet.activeSheets).iterator();
            while (it.hasNext()) {
                ((BotWebViewSheet) it.next()).dismiss(true);
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.openTabsView();
                }
            }, 100L);
            return;
        }
        stopAnimations();
        View view = (View) this.tabsView.getParent();
        this.actionBarLayout = view;
        int[] iArr = this.pos;
        if (view != null) {
            view.getLocationOnScreen(iArr);
        } else {
            iArr[1] = 0;
            iArr[0] = 0;
        }
        getLocationOnScreen(this.pos2);
        RectF rectF = this.tabsViewBounds;
        int i = this.pos[0];
        int i2 = this.pos2[0];
        rectF.set(i - i2, r2[1] - r5[1], (i - i2) + this.actionBarLayout.getWidth(), (this.pos[1] - this.pos2[1]) + this.actionBarLayout.getHeight());
        prepareBlur(this.actionBarLayout);
        clearTabs();
        prepareTabs();
        animateOpen(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearTabs() {
        this.tabs.clear();
    }

    private void prepareTabs() {
        BottomSheetTabs.TabDrawable tabDrawable;
        ArrayList<BottomSheetTabs.WebTabData> tabs = this.tabsView.getTabs();
        ArrayList<BottomSheetTabs.TabDrawable> tabDrawables = this.tabsView.getTabDrawables();
        for (int size = tabs.size() - 1; size >= 0; size--) {
            BottomSheetTabs.WebTabData webTabData = tabs.get(size);
            int i = 0;
            while (true) {
                if (i >= tabDrawables.size()) {
                    tabDrawable = null;
                    break;
                }
                tabDrawable = tabDrawables.get(i);
                if (tabDrawable.tab == webTabData) {
                    break;
                } else {
                    i++;
                }
            }
            if (tabDrawable != null) {
                this.tabs.add(new TabPreview(this, webTabData, tabDrawable));
            }
        }
        this.animatedCount.set(this.tabs.size(), true);
        setScrollOffset(getScrollMax());
    }

    public void closeTabsView() {
        animateOpen(false);
    }

    private void scrollTo(float f) {
        ValueAnimator valueAnimator = this.scrollAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.scrollAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.offset, f);
        this.scrollAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda8
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$scrollTo$5(valueAnimator2);
            }
        });
        this.scrollAnimator.setDuration(250L);
        this.scrollAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.scrollAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$scrollTo$5(ValueAnimator valueAnimator) {
        this.offset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }

    private void animateOpen(boolean z) {
        if (this.isOpen == z) {
            return;
        }
        ValueAnimator valueAnimator = this.openAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.isOpen = z;
        BottomSheetTabs bottomSheetTabs = this.tabsView;
        if (bottomSheetTabs != null) {
            bottomSheetTabs.drawTabs = false;
            bottomSheetTabs.invalidate();
        }
        setModalAccessibility(z);
        invalidate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.openProgress, z ? 1.0f : 0.0f);
        this.openAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$animateOpen$6(valueAnimator2);
            }
        });
        this.openAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (BottomSheetTabsOverlay.this.tabsView != null) {
                    BottomSheetTabsOverlay.this.tabsView.drawTabs = true;
                    BottomSheetTabsOverlay.this.tabsView.invalidate();
                }
                BottomSheetTabsOverlay bottomSheetTabsOverlay = BottomSheetTabsOverlay.this;
                bottomSheetTabsOverlay.openProgress = bottomSheetTabsOverlay.isOpen ? 1.0f : 0.0f;
                BottomSheetTabsOverlay.this.invalidate();
                BottomSheetTabsOverlay bottomSheetTabsOverlay2 = BottomSheetTabsOverlay.this;
                if (bottomSheetTabsOverlay2.isOpen || bottomSheetTabsOverlay2.openingSheet != null) {
                    return;
                }
                BottomSheetTabsOverlay.this.clearTabs();
            }
        });
        this.openAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.openAnimator.setDuration(320L);
        this.openAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateOpen$6(ValueAnimator valueAnimator) {
        this.openProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate();
    }

    private void setModalAccessibility(boolean z) {
        setImportantForAccessibility(z ? 1 : 2);
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                View childAt = viewGroup.getChildAt(i);
                if (childAt != this) {
                    childAt.setImportantForAccessibility(z ? 4 : 0);
                }
            }
        }
        OverlayAccessibilityHelper overlayAccessibilityHelper = this.accessibilityHelper;
        if (overlayAccessibilityHelper != null) {
            overlayAccessibilityHelper.invalidateRoot();
        }
        if (z) {
            sendAccessibilityEvent(32);
        }
    }

    public class OverlayAccessibilityHelper extends ExploreByTouchHelper {
        private final Rect tmpRect;

        public OverlayAccessibilityHelper(View view) {
            super(view);
            this.tmpRect = new Rect();
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public int getVirtualViewAt(float f, float f2) {
            if (BottomSheetTabsOverlay.this.openProgress < 0.5f) {
                return -1;
            }
            if (BottomSheetTabsOverlay.this.closeAllButtonBackground != null && BottomSheetTabsOverlay.this.closeAllButtonBackground.getBounds().contains((int) f, (int) f2)) {
                return 1;
            }
            for (int size = BottomSheetTabsOverlay.this.tabs.size() - 1; size >= 0; size--) {
                TabPreview tabPreview = (TabPreview) BottomSheetTabsOverlay.this.tabs.get(size);
                if (Math.abs(tabPreview.dismissProgress) < 0.4f && tabPreview.clickBounds.contains(f, f2)) {
                    Rect bounds = tabPreview.tabDrawable.closeRipple.getBounds();
                    if (!bounds.isEmpty()) {
                        RectF rectF = tabPreview.clickBounds;
                        if (bounds.contains((int) (f - rectF.left), (int) ((f2 - rectF.top) - AndroidUtilities.dp(24.0f)))) {
                            return size + CastStatusCodes.AUTHENTICATION_FAILED;
                        }
                    }
                    return size + 1000;
                }
            }
            return -1;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void getVisibleVirtualViews(List<Integer> list) {
            if (BottomSheetTabsOverlay.this.openProgress < 0.5f) {
                return;
            }
            if (BottomSheetTabsOverlay.this.closeAllButtonBackground != null && !BottomSheetTabsOverlay.this.closeAllButtonBackground.getBounds().isEmpty()) {
                list.add(1);
            }
            for (int i = 0; i < BottomSheetTabsOverlay.this.tabs.size(); i++) {
                TabPreview tabPreview = (TabPreview) BottomSheetTabsOverlay.this.tabs.get(i);
                if (Math.abs(tabPreview.dismissProgress) < 0.4f && !tabPreview.clickBounds.isEmpty()) {
                    list.add(Integer.valueOf(i + 1000));
                    BottomSheetTabs.TabDrawable tabDrawable = tabPreview.tabDrawable;
                    if (tabDrawable != null && !tabDrawable.closeRipple.getBounds().isEmpty()) {
                        list.add(Integer.valueOf(i + CastStatusCodes.AUTHENTICATION_FAILED));
                    }
                }
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            int i2;
            boolean z;
            String string;
            String string2;
            accessibilityNodeInfoCompat.setClassName("android.widget.Button");
            accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
            if (i == 1) {
                Drawable drawable = BottomSheetTabsOverlay.this.closeAllButtonBackground;
                Rect rect = this.tmpRect;
                if (drawable != null) {
                    rect.set(BottomSheetTabsOverlay.this.closeAllButtonBackground.getBounds());
                } else {
                    rect.set(0, 0, 1, 1);
                    accessibilityNodeInfoCompat.setVisibleToUser(false);
                }
                accessibilityNodeInfoCompat.setBoundsInParent(this.tmpRect);
                accessibilityNodeInfoCompat.setContentDescription(LocaleController.getString(C2665R.string.BotCloseAllTabs));
                return;
            }
            if (i >= 2000) {
                i2 = i - CastStatusCodes.AUTHENTICATION_FAILED;
                z = true;
            } else {
                if (i < 1000) {
                    this.tmpRect.set(0, 0, 1, 1);
                    accessibilityNodeInfoCompat.setBoundsInParent(this.tmpRect);
                    accessibilityNodeInfoCompat.setVisibleToUser(false);
                    return;
                }
                i2 = i - 1000;
                z = false;
            }
            if (i2 < 0 || i2 >= BottomSheetTabsOverlay.this.tabs.size()) {
                this.tmpRect.set(0, 0, 1, 1);
                accessibilityNodeInfoCompat.setBoundsInParent(this.tmpRect);
                accessibilityNodeInfoCompat.setVisibleToUser(false);
                return;
            }
            TabPreview tabPreview = (TabPreview) BottomSheetTabsOverlay.this.tabs.get(i2);
            BottomSheetTabs.WebTabData webTabData = tabPreview.tabData;
            String title = (webTabData == null || webTabData.getTitle() == null) ? _UrlKt.FRAGMENT_ENCODE_SET : tabPreview.tabData.getTitle();
            if (z) {
                Rect bounds = tabPreview.tabDrawable.closeRipple.getBounds();
                RectF rectF = tabPreview.clickBounds;
                int i3 = (int) (rectF.left + bounds.left);
                int iDp = (int) (rectF.top + AndroidUtilities.dp(24.0f) + bounds.top);
                RectF rectF2 = tabPreview.clickBounds;
                this.tmpRect.set(i3, iDp, (int) (rectF2.left + bounds.right), (int) (rectF2.top + AndroidUtilities.dp(24.0f) + bounds.bottom));
                accessibilityNodeInfoCompat.setBoundsInParent(this.tmpRect);
                if (TextUtils.isEmpty(title)) {
                    string2 = LocaleController.getString(C2665R.string.Close);
                } else {
                    string2 = LocaleController.getString(C2665R.string.Close) + ", " + title;
                }
                accessibilityNodeInfoCompat.setContentDescription(string2);
                return;
            }
            Rect rect2 = this.tmpRect;
            RectF rectF3 = tabPreview.clickBounds;
            rect2.set((int) rectF3.left, (int) rectF3.top, (int) rectF3.right, (int) rectF3.bottom);
            accessibilityNodeInfoCompat.setBoundsInParent(this.tmpRect);
            if (TextUtils.isEmpty(title)) {
                string = LocaleController.getString(C2665R.string.Open);
            } else {
                string = LocaleController.getString(C2665R.string.Open) + ", " + title;
            }
            accessibilityNodeInfoCompat.setContentDescription(string);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            int i3;
            boolean z;
            if (i2 != 16) {
                return false;
            }
            if (i == 1) {
                if (BottomSheetTabsOverlay.this.tabsView != null) {
                    BottomSheetTabsOverlay.this.tabsView.removeAll();
                }
                BottomSheetTabsOverlay.this.closeTabsView();
                return true;
            }
            if (i < 2000) {
                if (i >= 1000) {
                    i3 = i - 1000;
                    z = false;
                }
                return false;
            }
            i3 = i - CastStatusCodes.AUTHENTICATION_FAILED;
            z = true;
            if (i3 >= 0 && i3 < BottomSheetTabsOverlay.this.tabs.size()) {
                final TabPreview tabPreview = (TabPreview) BottomSheetTabsOverlay.this.tabs.get(i3);
                BottomSheetTabsOverlay bottomSheetTabsOverlay = BottomSheetTabsOverlay.this;
                if (z) {
                    if (bottomSheetTabsOverlay.tabsView != null) {
                        BottomSheetTabsOverlay.this.tabsView.removeTab(tabPreview.tabData, new Utilities.Callback() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$OverlayAccessibilityHelper$$ExternalSyntheticLambda0
                            @Override // org.telegram.messenger.Utilities.Callback
                            public final void run(Object obj) {
                                this.f$0.lambda$onPerformActionForVirtualView$0(tabPreview, (Boolean) obj);
                            }
                        });
                    }
                    return true;
                }
                if (bottomSheetTabsOverlay.tabsView != null) {
                    BottomSheetTabsOverlay.this.closeTabsView();
                    tabPreview.webView = null;
                    BottomSheetTabsOverlay.this.tabsView.openTab(tabPreview.tabData);
                }
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPerformActionForVirtualView$0(TabPreview tabPreview, Boolean bool) {
            if (bool.booleanValue()) {
                tabPreview.animateDismiss(1.0f);
                if (BottomSheetTabsOverlay.this.tabsView.getTabs().isEmpty()) {
                    BottomSheetTabsOverlay.this.closeTabsView();
                    return;
                }
                return;
            }
            tabPreview.animateDismiss(0.0f);
        }
    }

    private void drawDismissingTab(Canvas canvas) {
        if (this.dismissingSheet != null) {
            getLocationOnScreen(this.pos2);
            this.tabsView.getLocationOnScreen(this.pos);
            this.tabsView.getTabBounds(this.rect, 0.0f);
            RectF rectF = this.rect;
            int i = this.pos[0];
            int[] iArr = this.pos2;
            rectF.offset(i - iArr[0], r1[1] - iArr[1]);
            canvas.save();
            canvas.clipRect(0, 0, getMeasuredWidth(), getMeasuredHeight() - this.navigationBarInset);
            SheetView sheetViewMo7262getWindowView = this.dismissingSheet.mo7262getWindowView();
            RectF rectF2 = this.rect;
            float f = this.dismissProgress;
            float fDrawInto = sheetViewMo7262getWindowView.drawInto(canvas, rectF2, f, this.clipRect, f, false);
            if (this.dismissingTab != null) {
                this.clipPath.rewind();
                this.clipPath.addRoundRect(this.clipRect, fDrawInto, fDrawInto, Path.Direction.CW);
                canvas.save();
                canvas.clipPath(this.clipPath);
                float fDp = this.clipRect.top - (AndroidUtilities.dp(50.0f) * (1.0f - this.dismissProgress));
                RectF rectF3 = this.rect;
                RectF rectF4 = this.clipRect;
                rectF3.set(rectF4.left, fDp, rectF4.right, AndroidUtilities.dp(50.0f) + fDp);
                this.tabsView.setupTab(this.dismissingTab);
                this.dismissingTab.draw(canvas, this.rect, fDrawInto, this.dismissProgress, 1.0f);
                canvas.restore();
            }
            canvas.restore();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return drawable == this.closeAllButtonBackground || super.verifyDrawable(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x02d1  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void drawTabsPreview(Canvas canvas) {
        float f;
        TabPreview tabPreview;
        int i;
        int i2;
        float f2;
        float f3;
        int i3;
        float f4;
        int i4;
        int i5;
        float f5;
        float f6;
        int i6;
        int i7;
        float f7;
        float f8 = 0.0f;
        if (this.openProgress > 0.0f || this.openingProgress > 0.0f) {
            canvas.save();
            View view = this.actionBarLayout;
            int[] iArr = this.pos;
            int i8 = 1;
            if (view != null) {
                view.getLocationOnScreen(iArr);
                getLocationOnScreen(this.pos2);
                RectF rectF = this.tabsViewBounds;
                int i9 = this.pos[0];
                int i10 = this.pos2[0];
                rectF.set(i9 - i10, r3[1] - r5[1], (i9 - i10) + this.actionBarLayout.getWidth(), (this.pos[1] - this.pos2[1]) + this.actionBarLayout.getHeight());
            } else {
                iArr[1] = 0;
                iArr[0] = 0;
                this.tabsViewBounds.set(0.0f, 0.0f, 0.0f, 0.0f);
            }
            canvas.clipRect(this.tabsViewBounds);
            RectF rectF2 = this.tabsViewBounds;
            canvas.translate(rectF2.left, rectF2.top);
            float fWidth = this.tabsViewBounds.width();
            float fHeight = this.tabsViewBounds.height();
            float f9 = 255.0f;
            if (this.blurBitmap != null) {
                this.blurMatrix.reset();
                float fWidth2 = this.tabsViewBounds.width() / this.blurBitmap.getWidth();
                this.blurMatrix.postScale(fWidth2, fWidth2);
                this.blurBitmapShader.setLocalMatrix(this.blurMatrix);
                this.blurBitmapPaint.setAlpha((int) (this.openProgress * 255.0f));
                canvas.drawRect(0.0f, 0.0f, fWidth, fHeight, this.blurBitmapPaint);
            }
            Canvas canvas2 = canvas;
            canvas2.saveLayerAlpha(0.0f, 0.0f, fWidth, fHeight, 255, 31);
            float fDp = AndroidUtilities.statusBarHeight + AndroidUtilities.dp(40.0f) + AndroidUtilities.dp(55.0f);
            float fDp2 = AndroidUtilities.dp(68.0f);
            int iMin = (int) Math.min(AndroidUtilities.dp(340.0f), 0.95f * fWidth);
            int iHeight = (int) (AndroidUtilities.isTablet() ? this.tabsViewBounds.height() * 0.5f : 0.75f * fHeight);
            float f10 = fWidth / 2.0f;
            float f11 = 0.0f;
            int i11 = 0;
            while (true) {
                f = 1.0f;
                if (i11 >= this.tabs.size()) {
                    break;
                }
                if (this.tabs.get(i11).tabDrawable.index < 0) {
                    f = 0.0f;
                }
                f11 += f;
                i11++;
            }
            float f12 = this.animatedCount.set(f11);
            float fLerp = AndroidUtilities.lerp(0.0f, 1.0f - Utilities.clamp(getScrollWindow() <= 0.0f ? 0.0f : ((getScrollMin() - getScrollOffset()) / (getScrollWindow() * 0.15f)) * 0.2f, 1.0f, 0.0f), this.openProgress);
            int i12 = -1;
            int i13 = 0;
            while (i13 < this.tabs.size() + i8) {
                if (i13 != this.tabs.size()) {
                    tabPreview = this.tabs.get(i13);
                } else if (i12 < 0 || this.openingProgress <= 0.5f) {
                    f2 = fDp2;
                    i = iMin;
                    i2 = iHeight;
                    f5 = fLerp;
                    i5 = i13;
                    f3 = f;
                    i3 = i8;
                    f4 = f9;
                    i4 = i12;
                    i12 = i4;
                    i13 = i5 + 1;
                    fLerp = f5;
                    f9 = f4;
                    i8 = i3;
                    f = f3;
                    fDp2 = f2;
                    iHeight = i2;
                    iMin = i;
                    f8 = 0.0f;
                } else {
                    tabPreview = this.tabs.get(i12);
                }
                f4 = f9;
                if (i13 < this.tabs.size()) {
                    i3 = i8;
                    if (tabPreview.tabDrawable == this.openingTab && this.openingProgress > 0.5f) {
                        f2 = fDp2;
                        i = iMin;
                        i2 = iHeight;
                        f5 = fLerp;
                        i12 = i13;
                        i5 = i12;
                        f3 = f;
                        i13 = i5 + 1;
                        fLerp = f5;
                        f9 = f4;
                        i8 = i3;
                        f = f3;
                        fDp2 = f2;
                        iHeight = i2;
                        iMin = i;
                        f8 = 0.0f;
                    }
                } else {
                    i3 = i8;
                }
                BottomSheetTabs.TabDrawable tabDrawable = tabPreview.tabDrawable;
                BottomSheetTabs.TabDrawable tabDrawable2 = this.openingTab;
                float f13 = tabDrawable == tabDrawable2 ? f : fLerp;
                float f14 = tabDrawable == tabDrawable2 ? this.openingProgress : f8;
                float position = (f12 - f) - tabDrawable.getPosition();
                float fMax = tabPreview.tabDrawable == this.openingTab ? this.openingTabScroll : (position - Math.max(getScrollMin(), getScrollOffset())) / getScrollWindow();
                Math.max(fMax, 0.0f);
                f2 = fDp2;
                Math.max(Math.min(fMax, 1.0f), -4.0f);
                float fDp3 = (AndroidUtilities.dp(6.0f) * Math.min(5.0f, position)) + fDp;
                float f15 = iHeight;
                float f16 = fDp3 + ((((fHeight - f2) - (0.26f * f15)) - fDp3) * fMax);
                float f17 = iMin / 2.0f;
                i = iMin;
                i2 = iHeight;
                this.rect2.set(f10 - f17, f16, f10 + f17, f16 + f15);
                BottomSheetTabs.TabDrawable tabDrawable3 = tabPreview.tabDrawable;
                BottomSheetTabs.TabDrawable tabDrawable4 = this.openingTab;
                if (tabDrawable3 != tabDrawable4) {
                    RectF rectF3 = this.rect2;
                    if ((rectF3.top > fHeight || rectF3.bottom < 0.0f || fLerp < 0.1f) && position < f12 - 3.0f) {
                        f6 = 0.1f;
                        i6 = i3;
                    } else {
                        f6 = 0.1f;
                        i6 = 0;
                    }
                    Sheet sheet = this.openingSheet;
                    if (sheet != null && tabDrawable3 == tabDrawable4) {
                        this.rect.set(sheet.mo7262getWindowView().getRect());
                        RectF rectF4 = this.rect2;
                        AndroidUtilities.lerpCentered(rectF4, this.rect, f14, rectF4);
                        i7 = i6;
                        f7 = f6;
                    } else {
                        i7 = i6;
                        f7 = f6;
                        this.tabsView.getTabBounds(this.rect, Utilities.clamp(tabDrawable3.getPosition(), 1.0f, 0.0f));
                        this.rect.offset(this.tabsView.getX(), this.tabsView.getY());
                        RectF rectF5 = this.rect;
                        RectF rectF6 = this.rect2;
                        AndroidUtilities.lerpCentered(rectF5, rectF6, fLerp, rectF6);
                    }
                    BottomSheetTabs bottomSheetTabs = this.tabsView;
                    if (bottomSheetTabs != null) {
                        bottomSheetTabs.setupTab(tabPreview.tabDrawable);
                    }
                    if (tabPreview.tabDrawable != this.openingTab) {
                        RectF rectF7 = this.rect2;
                        if (rectF7.top > fHeight || rectF7.bottom < 0.0f) {
                            f5 = fLerp;
                            i4 = i12;
                            i5 = i13;
                            f3 = 1.0f;
                        } else {
                            canvas2.save();
                            tabPreview.clickBounds.set(this.rect2);
                            tabPreview.matrix.reset();
                            tabPreview.src[0] = this.rect2.left;
                            tabPreview.src[i3] = this.rect2.top;
                            tabPreview.src[2] = this.rect2.right;
                            tabPreview.src[3] = this.rect2.top;
                            tabPreview.src[4] = this.rect2.right;
                            float[] fArr = tabPreview.src;
                            RectF rectF8 = this.rect2;
                            fArr[5] = rectF8.top + (rectF8.height() * 1.0f);
                            tabPreview.src[6] = this.rect2.left;
                            float[] fArr2 = tabPreview.src;
                            RectF rectF9 = this.rect2;
                            fArr2[7] = rectF9.top + (rectF9.height() * 1.0f);
                            tabPreview.dst[0] = this.rect2.left;
                            tabPreview.dst[i3] = this.rect2.top - AndroidUtilities.dp(0.0f);
                            tabPreview.dst[2] = this.rect2.right;
                            tabPreview.dst[3] = this.rect2.top - AndroidUtilities.dp(0.0f);
                            float f18 = f13 * (1.0f - f14);
                            tabPreview.dst[4] = this.rect2.centerX() + ((this.rect2.width() / 2.0f) * AndroidUtilities.lerp(1.0f, 0.83f, f18));
                            tabPreview.dst[5] = (this.rect2.top - AndroidUtilities.dp(0.0f)) + (((this.rect2.height() * 1.0f) + AndroidUtilities.dp(0.0f)) * AndroidUtilities.lerp(1.0f, 0.6f, f18));
                            tabPreview.dst[6] = this.rect2.centerX() - (AndroidUtilities.lerp(1.0f, 0.83f, f18) * (this.rect2.width() / 2.0f));
                            tabPreview.dst[7] = (this.rect2.top - AndroidUtilities.dp(0.0f)) + (((this.rect2.height() * 1.0f) + AndroidUtilities.dp(0.0f)) * AndroidUtilities.lerp(1.0f, 0.6f, f18));
                            tabPreview.matrix.setPolyToPoly(tabPreview.src, 0, tabPreview.dst, 0, 4);
                            canvas2.concat(tabPreview.matrix);
                            RectF rectF10 = this.rect2;
                            BottomSheetTabs.TabDrawable tabDrawable5 = tabPreview.tabDrawable;
                            float fLerp2 = tabDrawable5 == this.openingTab ? 1.0f : AndroidUtilities.lerp(tabDrawable5.getAlpha(), 1.0f, this.openProgress);
                            if (tabPreview.tabDrawable == this.openingTab) {
                                f18 = 1.0f;
                            }
                            float fLerp3 = AndroidUtilities.lerp(Utilities.clamp01((position - f12) + 2.0f), 1.0f, Utilities.clamp01((f13 - f7) / 0.8f));
                            f3 = 1.0f;
                            i4 = i12;
                            float f19 = f18;
                            f5 = fLerp;
                            float f20 = fLerp2;
                            Canvas canvas3 = canvas2;
                            TabPreview tabPreview2 = tabPreview;
                            i5 = i13;
                            float f21 = f14;
                            tabPreview2.draw(canvas3, rectF10, i7, f20, f19, f21, fLerp3);
                            Sheet sheet2 = this.openingSheet;
                            if (sheet2 == null || tabPreview2.tabDrawable != this.openingTab) {
                                canvas2 = canvas;
                            } else {
                                SheetView sheetViewMo7262getWindowView = sheet2.mo7262getWindowView();
                                RectF rectF11 = this.rect2;
                                sheetViewMo7262getWindowView.drawInto(canvas, rectF11, 1.0f, rectF11, f21, true);
                                canvas2 = canvas;
                            }
                            canvas2.restore();
                        }
                        i12 = i4;
                    }
                }
                i13 = i5 + 1;
                fLerp = f5;
                f9 = f4;
                i8 = i3;
                f = f3;
                fDp2 = f2;
                iHeight = i2;
                iMin = i;
                f8 = 0.0f;
            }
            boolean z = i8;
            float f22 = f9;
            canvas2.save();
            if (this.gradientClip == null) {
                this.gradientClip = new GradientClip();
            }
            RectF rectF12 = AndroidUtilities.rectTmp;
            rectF12.set(0.0f, 0.0f, fWidth, fDp);
            this.gradientClip.draw(canvas2, rectF12, z, this.openProgress);
            canvas2.restore();
            canvas2.restore();
            if (this.closeAllButtonText == null) {
                this.closeAllButtonText = new Text(LocaleController.getString(C2665R.string.BotCloseAllTabs), 14.0f, AndroidUtilities.bold());
            }
            if (this.closeAllButtonBackground == null || this.closeAllButtonBackgroundDark != Theme.isCurrentThemeDark()) {
                boolean zIsCurrentThemeDark = Theme.isCurrentThemeDark();
                this.closeAllButtonBackgroundDark = zIsCurrentThemeDark;
                if (zIsCurrentThemeDark) {
                    this.closeAllButtonBackground = Theme.createSimpleSelectorRoundRectDrawable(64, 553648127, 872415231);
                } else {
                    this.closeAllButtonBackground = Theme.createSimpleSelectorRoundRectDrawable(64, 771751936, 1140850688);
                }
                this.closeAllButtonBackground.setCallback(this);
            }
            float currentWidth = this.closeAllButtonText.getCurrentWidth() + AndroidUtilities.dp(24.0f);
            float f23 = (fWidth - currentWidth) / 2.0f;
            this.closeAllButtonBackground.setBounds((int) f23, (int) ((fDp - (AndroidUtilities.dp(95.0f) / 2.0f)) - AndroidUtilities.dp(14.0f)), (int) ((currentWidth + fWidth) / 2.0f), (int) ((fDp - (AndroidUtilities.dp(95.0f) / 2.0f)) + AndroidUtilities.dp(14.0f)));
            this.closeAllButtonBackground.setAlpha((int) (this.openProgress * f22));
            this.closeAllButtonBackground.draw(canvas2);
            this.closeAllButtonText.draw(canvas2, f23 + AndroidUtilities.dp(12.0f), fDp - (AndroidUtilities.dp(95.0f) / 2.0f), -1, this.openProgress);
            canvas.restore();
        }
    }

    @Override // android.view.View
    public void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        drawDismissingTab(canvas);
        drawTabsPreview(canvas);
    }

    public static class TabPreview {
        private final Paint backgroundPaint;
        private final Paint bitmapPaint;
        public final ButtonBounce bounce;
        public final RectF clickBounds = new RectF();
        private final Path clipPath;
        private ValueAnimator dismissAnimator;
        public float dismissProgress;
        private final float[] dst;
        private final RadialGradient gradient;
        private final Matrix gradientMatrix;
        private final Paint gradientPaint;
        private final Matrix matrix;
        public final View parentView;
        private final Paint shadowPaint;
        private final float[] src;
        private final RectF tabBounds;
        public final BottomSheetTabs.WebTabData tabData;
        public final BottomSheetTabs.TabDrawable tabDrawable;
        public WebView webView;

        public void cancelDismissAnimator() {
            ValueAnimator valueAnimator = this.dismissAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
        }

        public void animateDismiss(final float f) {
            cancelDismissAnimator();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.dismissProgress, f);
            this.dismissAnimator = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$TabPreview$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$animateDismiss$0(valueAnimator);
                }
            });
            this.dismissAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay.TabPreview.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    TabPreview tabPreview = TabPreview.this;
                    tabPreview.dismissProgress = f;
                    View view = tabPreview.parentView;
                    if (view != null) {
                        view.invalidate();
                    }
                }
            });
            float fAbs = Math.abs(f);
            ValueAnimator valueAnimator = this.dismissAnimator;
            if (fAbs < 0.1f) {
                AndroidUtilities.applySpring(valueAnimator, 285.0d, 20.0d);
            } else {
                valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            }
            this.dismissAnimator.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$animateDismiss$0(ValueAnimator valueAnimator) {
            this.dismissProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            View view = this.parentView;
            if (view != null) {
                view.invalidate();
            }
        }

        public boolean isPressed() {
            return this.bounce.isPressed();
        }

        public void setPressed(boolean z) {
            this.bounce.setPressed(z);
        }

        public TabPreview(View view, BottomSheetTabs.WebTabData webTabData, BottomSheetTabs.TabDrawable tabDrawable) {
            Paint paint = new Paint(1);
            this.backgroundPaint = paint;
            this.matrix = new Matrix();
            this.src = new float[8];
            this.dst = new float[8];
            this.dismissProgress = 0.0f;
            this.shadowPaint = new Paint(1);
            this.tabBounds = new RectF();
            this.clipPath = new Path();
            this.bitmapPaint = new Paint(3);
            this.gradient = new RadialGradient(0.0f, 0.0f, 255.0f, new int[]{0, 805306368}, new float[]{0.5f, 1.0f}, Shader.TileMode.CLAMP);
            this.gradientMatrix = new Matrix();
            this.gradientPaint = new Paint(1);
            this.parentView = view;
            this.tabData = webTabData;
            this.tabDrawable = tabDrawable;
            this.webView = null;
            this.bounce = new ButtonBounce(view);
            paint.setColor(webTabData.backgroundColor);
        }

        public void draw(Canvas canvas, RectF rectF, boolean z, float f, float f2, float f3, float f4) {
            float f5;
            float f6;
            Object obj;
            float fClamp = f * Utilities.clamp(1.0f - ((Math.abs(this.dismissProgress) - 0.3f) / 0.7f), 1.0f, 0.0f);
            if (fClamp <= 0.0f) {
                return;
            }
            float f7 = 1.0f - f3;
            float f8 = f2 * f7;
            float fLerp = AndroidUtilities.lerp(1.0f, 1.3f, f8);
            float currentActionBarHeight = ((AndroidUtilities.statusBarHeight + ActionBar.getCurrentActionBarHeight()) - AndroidUtilities.dp(50.0f)) * f3;
            canvas.save();
            canvas.rotate(this.dismissProgress * 20.0f, rectF.centerX() + (AndroidUtilities.dp(50.0f) * this.dismissProgress), rectF.bottom + AndroidUtilities.dp(350.0f));
            float scale = this.bounce.getScale(0.01f);
            canvas.scale(scale, scale, rectF.centerX(), rectF.centerY());
            float fLerp2 = AndroidUtilities.lerp(AndroidUtilities.dp(18.0f), AndroidUtilities.dp(18.0f), f2);
            if (z) {
                this.shadowPaint.setColor(0);
                this.shadowPaint.setShadowLayer(AndroidUtilities.dp(30.0f), 0.0f, AndroidUtilities.dp(10.0f), Theme.multAlpha(536870912, fClamp * f2 * f7));
                canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.shadowPaint);
                this.backgroundPaint.setAlpha((int) (fClamp * 255.0f));
                canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.backgroundPaint);
                canvas.restore();
                return;
            }
            this.clipPath.rewind();
            this.clipPath.addRoundRect(rectF, fLerp2, fLerp2, Path.Direction.CW);
            canvas.save();
            this.shadowPaint.setColor(0);
            float f9 = fClamp * f2;
            this.shadowPaint.setShadowLayer(AndroidUtilities.dp(30.0f), 0.0f, AndroidUtilities.dp(10.0f), Theme.multAlpha(536870912, f9 * f7));
            canvas.drawPath(this.clipPath, this.shadowPaint);
            canvas.clipPath(this.clipPath);
            float f10 = fClamp * 255.0f * f2;
            int i = (int) f10;
            this.backgroundPaint.setAlpha(i);
            canvas.drawRoundRect(rectF, fLerp2, fLerp2, this.backgroundPaint);
            canvas.save();
            canvas.translate(rectF.left, rectF.top + (AndroidUtilities.dp(50.0f) * fLerp) + currentActionBarHeight);
            canvas.scale(1.0f, AndroidUtilities.lerp(1.0f, 1.25f, f8));
            BottomSheetTabs.WebTabData webTabData = this.tabData;
            if (webTabData != null && (obj = webTabData.previewNode) != null && Build.VERSION.SDK_INT >= 29 && BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m987m(obj).hasDisplayList()) {
                RenderNode renderNodeM987m = BotFullscreenButtons$$ExternalSyntheticApiModelOutline0.m987m(this.tabData.previewNode);
                float fWidth = rectF.width() / renderNodeM987m.getWidth();
                canvas.scale(fWidth, fWidth);
                renderNodeM987m.setAlpha(f9);
                canvas.drawRenderNode(renderNodeM987m);
            } else {
                BottomSheetTabs.WebTabData webTabData2 = this.tabData;
                if (webTabData2 != null && webTabData2.previewBitmap != null) {
                    float fWidth2 = rectF.width() / this.tabData.previewBitmap.getWidth();
                    canvas.scale(fWidth2, fWidth2);
                    this.bitmapPaint.setAlpha(i);
                    canvas.drawBitmap(this.tabData.previewBitmap, 0.0f, 0.0f, this.bitmapPaint);
                } else {
                    if (this.webView != null) {
                        float fWidth3 = rectF.width() / this.webView.getWidth();
                        canvas.scale(fWidth3, fWidth3);
                        f5 = fLerp2;
                        f6 = currentActionBarHeight;
                        canvas.saveLayerAlpha(0.0f, 0.0f, this.webView.getWidth(), this.webView.getHeight(), i, 31);
                        this.webView.draw(canvas);
                        canvas.restore();
                    }
                    canvas.restore();
                    canvas.save();
                    this.gradientPaint.setAlpha((int) (f10 * f7));
                    this.gradientMatrix.reset();
                    float fHeight = rectF.height() / 255.0f;
                    this.gradientMatrix.postScale(fHeight, fHeight);
                    this.gradientMatrix.postTranslate(rectF.centerX(), rectF.top);
                    this.gradient.setLocalMatrix(this.gradientMatrix);
                    this.gradientPaint.setShader(this.gradient);
                    canvas.drawRect(rectF, this.gradientPaint);
                    canvas.restore();
                    this.tabBounds.set(rectF);
                    RectF rectF2 = this.tabBounds;
                    rectF2.bottom = rectF2.top + Math.min(rectF.height(), AndroidUtilities.dp(50.0f));
                    this.tabBounds.offset(0.0f, f6);
                    this.tabDrawable.setExpandProgress(f2);
                    canvas.scale(1.0f, fLerp, this.tabBounds.centerX(), this.tabBounds.top);
                    this.tabDrawable.draw(canvas, this.tabBounds, f5, fClamp * fClamp, f4);
                    canvas.restore();
                    canvas.restore();
                }
            }
            f6 = currentActionBarHeight;
            f5 = fLerp2;
            canvas.restore();
            canvas.save();
            this.gradientPaint.setAlpha((int) (f10 * f7));
            this.gradientMatrix.reset();
            float fHeight2 = rectF.height() / 255.0f;
            this.gradientMatrix.postScale(fHeight2, fHeight2);
            this.gradientMatrix.postTranslate(rectF.centerX(), rectF.top);
            this.gradient.setLocalMatrix(this.gradientMatrix);
            this.gradientPaint.setShader(this.gradient);
            canvas.drawRect(rectF, this.gradientPaint);
            canvas.restore();
            this.tabBounds.set(rectF);
            RectF rectF22 = this.tabBounds;
            rectF22.bottom = rectF22.top + Math.min(rectF.height(), AndroidUtilities.dp(50.0f));
            this.tabBounds.offset(0.0f, f6);
            this.tabDrawable.setExpandProgress(f2);
            canvas.scale(1.0f, fLerp, this.tabBounds.centerX(), this.tabBounds.top);
            this.tabDrawable.draw(canvas, this.tabBounds, f5, fClamp * fClamp, f4);
            canvas.restore();
            canvas.restore();
        }
    }

    public static void renderHardwareViewToBitmap(View view, float f, final Utilities.Callback<Bitmap> callback) {
        if (view == null || callback == null || view.getWidth() <= 0 || view.getHeight() <= 0) {
            if (callback != null) {
                callback.run(null);
                return;
            }
            return;
        }
        final SurfaceTexture surfaceTextureM1017m = BottomSheetTabsOverlay$$ExternalSyntheticApiModelOutline0.m1017m(false);
        surfaceTextureM1017m.setDefaultBufferSize(view.getWidth(), view.getHeight());
        final Surface surface = new Surface(surfaceTextureM1017m);
        final Bitmap bitmapCreateBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvasLockHardwareCanvas = surface.lockHardwareCanvas();
        canvasLockHardwareCanvas.translate(0.0f, f);
        view.draw(canvasLockHardwareCanvas);
        surface.unlockCanvasAndPost(canvasLockHardwareCanvas);
        PixelCopy.request(surface, bitmapCreateBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: org.telegram.ui.ActionBar.BottomSheetTabsOverlay$$ExternalSyntheticLambda9
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                BottomSheetTabsOverlay.$r8$lambda$XU58vQduemRbiaLID3mmX5TDEEs(callback, bitmapCreateBitmap, surface, surfaceTextureM1017m, i);
            }
        }, new Handler());
    }

    public static /* synthetic */ void $r8$lambda$XU58vQduemRbiaLID3mmX5TDEEs(Utilities.Callback callback, Bitmap bitmap, Surface surface, SurfaceTexture surfaceTexture, int i) {
        if (i == 0) {
            callback.run(bitmap);
        } else {
            bitmap.recycle();
            callback.run(null);
        }
        surface.release();
        surfaceTexture.release();
    }
}
