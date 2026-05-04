package org.telegram.p029ui.ActionBar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.NestedScrollingParentHelper;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.system.VibratorUtils;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.camera.CameraView;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.Components.AnimatedEmojiSpan;
import org.telegram.p029ui.Components.AnimationProperties;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes3.dex */
public class BottomSheet extends Dialog implements BaseFragment.AttachedSheet {
    private static final boolean AVOID_SYSTEM_CUTOUT_FULLSCREEN = false;
    private boolean allowCustomAnimation;
    private boolean allowDrawContent;
    protected boolean allowNestedScroll;
    private boolean applyBottomPadding;
    private boolean applyTopPadding;
    public BaseFragment attachedFragment;
    private OnBackAnimationCallback backAnimationCallback;
    protected ColorDrawable backDrawable;
    protected int backgroundPaddingLeft;
    protected int backgroundPaddingTop;
    protected int behindKeyboardColor;
    protected int behindKeyboardColorKey;
    private boolean bigTitle;
    private int bottomInset;
    protected boolean calcMandatoryInsets;
    private boolean canDismissWithSwipe;
    private boolean canDismissWithTouchOutside;
    private int cellType;
    public ContainerView container;
    protected ViewGroup containerView;
    protected int currentAccount;
    private float currentPanTranslationY;
    protected AnimatorSet currentSheetAnimation;
    protected int currentSheetAnimationType;
    private View customView;
    protected int customViewGravity;
    protected BottomSheetDelegateInterface delegate;
    protected boolean dimBehind;
    protected int dimBehindAlpha;
    private boolean disableScroll;
    private Runnable dismissRunnable;
    private boolean dismissed;
    public boolean drawDoubleNavigationBar;
    public boolean drawNavigationBar;
    private boolean focusable;
    private int focusableSoftInputMode;
    private boolean forceKeyboardOnDismiss;
    private boolean fullHeight;
    protected boolean fullWidth;
    private float hideSystemVerticalInsetsProgress;
    private int internalBackgroundColor;
    private boolean isBackCallbackRegistered;
    protected boolean isFullscreen;
    protected boolean isPortrait;
    private int[] itemIcons;
    private ArrayList<BottomSheetCell> itemViews;
    private CharSequence[] items;
    private ValueAnimator keyboardContentAnimator;
    protected int keyboardHeight;
    protected boolean keyboardVisible;
    private WindowInsets lastInsets;
    private int lastKeyboardHeight;
    private int layoutCount;
    private int leftInset;
    private boolean multipleLinesTitle;
    protected int navBarColor;
    protected int navBarColorKey;
    protected float navigationBarAlpha;
    protected ValueAnimator navigationBarAnimation;
    protected int navigationBarHeight;
    protected View nestedScrollChild;
    private AnimationNotificationsLocker notificationsLocker;
    public boolean occupyNavigationBar;
    public boolean occupyNavigationBarWithoutKeyboard;
    private OnBackInvokedDispatcher onBackInvokedDispatcher;
    private DialogInterface.OnClickListener onClickListener;
    private DialogInterface.OnDismissListener onHideListener;
    protected Interpolator openInterpolator;
    private boolean openNoDelay;
    protected int openedLayerNum;
    private int overlayDrawNavBarColor;
    public boolean pauseAllHeavyOperations;
    protected int playingImagesLayerNum;
    private boolean predictiveBackAnimationInProgress;
    protected Theme.ResourcesProvider resourcesProvider;
    private int rightInset;
    public boolean scrollNavBar;
    private Integer selectedPos;
    protected Drawable shadowDrawable;
    private boolean showWithoutAnimation;
    boolean showing;
    private boolean skipDismissAnimation;
    private long smoothContainerViewLayoutUntil;
    public boolean smoothKeyboardAnimationEnabled;
    public boolean smoothKeyboardByBottom;
    protected Runnable startAnimationRunnable;
    private int statusBarHeight;
    private int tag;
    private CharSequence title;
    private TextView titleView;
    public FrameLayout topBulletinContainer;
    private int touchSlop;
    private boolean transitionFromRight;
    public boolean useBackgroundTopPadding;
    private boolean useFastDismiss;
    protected boolean useHardwareLayer;
    protected boolean useLightNavBar;
    protected boolean useLightStatusBar;
    protected boolean useSmoothKeyboard;
    protected boolean waitingKeyboard;

    /* JADX INFO: loaded from: classes6.dex */
    public static class BottomSheetDelegate implements BottomSheetDelegateInterface {
        @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
        public boolean canDismiss() {
            return true;
        }

        @Override // org.telegram.ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
        public void onOpenAnimationEnd() {
        }

        public void onOpenAnimationStart() {
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public interface BottomSheetDelegateInterface {
        boolean canDismiss();

        void onOpenAnimationEnd();
    }

    protected void appendOpenAnimator(boolean z, ArrayList<Animator> arrayList) {
    }

    protected boolean canSwipeToBack(MotionEvent motionEvent) {
        return false;
    }

    protected int getTargetOpenTranslationY() {
        return 0;
    }

    public ArrayList<ThemeDescription> getThemeDescriptions() {
        return null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isFullyVisible() {
        return false;
    }

    protected void mainContainerDispatchDraw(Canvas canvas) {
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onContainerDraw(Canvas canvas) {
    }

    protected boolean onContainerTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    protected void onContainerViewTranslation() {
    }

    protected boolean onCustomCloseAnimation() {
        return false;
    }

    protected boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        return false;
    }

    protected boolean onCustomMeasure(View view, int i, int i2) {
        return false;
    }

    protected boolean onCustomOpenAnimation() {
        return false;
    }

    public void onDismissAnimationStart() {
    }

    protected void onInsetsChanged() {
    }

    public void onOpenAnimationEnd() {
    }

    protected boolean onScrollUp(float f) {
        return false;
    }

    protected void onScrollUpBegin(float f) {
    }

    protected void onScrollUpEnd(float f) {
    }

    protected void onSmoothContainerViewLayout(float f) {
    }

    protected void onSwipeStarts() {
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void setKeyboardHeightFromParent(int i) {
    }

    public /* synthetic */ void setLastVisible(boolean z) {
        BaseFragment.AttachedSheet.CC.$default$setLastVisible(this, z);
    }

    protected boolean shouldOverlayCameraViewOverNavBar() {
        return false;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean showDialog(Dialog dialog) {
        return false;
    }

    public void setDisableScroll(boolean z) {
        this.disableScroll = z;
    }

    public void transitionFromRight(boolean z) {
        this.transitionFromRight = z;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public class ContainerView extends FrameLayout {
        private boolean allowedSwipeToBack;
        private Paint backgroundPaint;
        private AnimatorSet currentAnimation;
        private final Paint internalBackgroundPaint;
        private int internalPaddingBottom;
        private boolean keyboardChanged;
        private boolean maybeStartTracking;
        private NestedScrollingParentHelper nestedScrollingParentHelper;
        private Rect rect;
        private boolean startedTracking;
        private int startedTrackingPointerId;
        private int startedTrackingX;
        private int startedTrackingY;
        private float swipeBackX;
        private VelocityTracker velocityTracker;

        /* JADX INFO: renamed from: y */
        private float f1875y;

        @Override // android.view.View
        public boolean hasOverlappingRendering() {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public boolean onNestedFling(View view, float f, float f2, boolean z) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public boolean onNestedPreFling(View view, float f, float f2) {
            return false;
        }

        public ContainerView(Context context) {
            super(context);
            this.velocityTracker = null;
            this.startedTrackingPointerId = -1;
            this.maybeStartTracking = false;
            this.startedTracking = false;
            this.currentAnimation = null;
            this.rect = new Rect();
            this.backgroundPaint = new Paint();
            this.f1875y = 0.0f;
            this.swipeBackX = 0.0f;
            this.internalBackgroundPaint = new Paint(1);
            this.nestedScrollingParentHelper = new NestedScrollingParentHelper(this);
            setWillNotDraw(false);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public boolean onStartNestedScroll(View view, View view2, int i) {
            BottomSheet bottomSheet = BottomSheet.this;
            View view3 = bottomSheet.nestedScrollChild;
            if ((view3 != null && view != view3) || bottomSheet.dismissed) {
                return false;
            }
            BottomSheet bottomSheet2 = BottomSheet.this;
            return bottomSheet2.allowNestedScroll && i == 2 && !bottomSheet2.canDismissWithSwipe();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void onNestedScrollAccepted(View view, View view2, int i) {
            this.nestedScrollingParentHelper.onNestedScrollAccepted(view, view2, i);
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void onStopNestedScroll(View view) {
            this.nestedScrollingParentHelper.onStopNestedScroll(view);
            if (BottomSheet.this.dismissed) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            if (bottomSheet.allowNestedScroll) {
                bottomSheet.containerView.getTranslationY();
                checkDismiss(0.0f, 0.0f);
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
            if (i4 != 0) {
                float translationY = BottomSheet.this.containerView.getTranslationY() - i4;
                if (translationY < 0.0f) {
                    translationY = 0.0f;
                }
                BottomSheet.this.containerView.setTranslationY(translationY);
                BottomSheet.this.onContainerViewTranslation();
                BottomSheet.this.container.invalidate();
            }
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
            if (BottomSheet.this.dismissed || !BottomSheet.this.allowNestedScroll) {
                return;
            }
            cancelCurrentAnimation();
            float translationY = BottomSheet.this.containerView.getTranslationY();
            if (translationY <= 0.0f || i2 <= 0) {
                return;
            }
            float f = translationY - i2;
            iArr[1] = i2;
            BottomSheet.this.containerView.setTranslationY(f >= 0.0f ? f : 0.0f);
            BottomSheet.this.onContainerViewTranslation();
            BottomSheet.this.container.invalidate();
        }

        @Override // android.view.ViewGroup
        public int getNestedScrollAxes() {
            return this.nestedScrollingParentHelper.getNestedScrollAxes();
        }

        private void checkDismiss(float f, float f2) {
            if ((BottomSheet.this.containerView.getTranslationY() >= AndroidUtilities.getPixelsInCM(0.8f, false) || (f2 >= 3500.0f && Math.abs(f2) >= Math.abs(f))) && (f2 >= 0.0f || Math.abs(f2) < 3500.0f)) {
                boolean z = BottomSheet.this.allowCustomAnimation;
                BottomSheet.this.allowCustomAnimation = false;
                BottomSheet.this.useFastDismiss = true;
                BottomSheet.this.dismiss();
                BottomSheet.this.allowCustomAnimation = z;
                return;
            }
            this.maybeStartTracking = false;
            this.currentAnimation = new AnimatorSet();
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$checkDismiss$0(valueAnimator);
                }
            });
            this.currentAnimation.playTogether(ObjectAnimator.ofFloat(BottomSheet.this.containerView, "translationY", 0.0f), valueAnimatorOfFloat);
            this.currentAnimation.setDuration((int) ((Math.max(0.0f, r0) / AndroidUtilities.getPixelsInCM(0.8f, false)) * 250.0f));
            this.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (ContainerView.this.currentAnimation != null && ContainerView.this.currentAnimation.equals(animator)) {
                        ContainerView.this.currentAnimation = null;
                    }
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                }
            });
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
            this.currentAnimation.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$checkDismiss$0(ValueAnimator valueAnimator) {
            ContainerView containerView = BottomSheet.this.container;
            if (containerView != null) {
                containerView.invalidate();
            }
            BottomSheet.this.onContainerViewTranslation();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancelCurrentAnimation() {
            AnimatorSet animatorSet = this.currentAnimation;
            if (animatorSet != null) {
                animatorSet.cancel();
                this.currentAnimation = null;
            }
            BottomSheet.this.onSwipeStarts();
        }

        public boolean processTouchEvent(MotionEvent motionEvent, boolean z) {
            if (BottomSheet.this.dismissed) {
                return false;
            }
            if (BottomSheet.this.onContainerTouchEvent(motionEvent)) {
                return true;
            }
            if (BottomSheet.this.canSwipeToBack(motionEvent) || this.allowedSwipeToBack) {
                if (motionEvent != null && ((motionEvent.getAction() == 0 || motionEvent.getAction() == 2) && !this.startedTracking && !this.maybeStartTracking && motionEvent.getPointerCount() == 1)) {
                    this.allowedSwipeToBack = true;
                    this.startedTrackingX = (int) motionEvent.getX();
                    this.startedTrackingY = (int) motionEvent.getY();
                    this.startedTrackingPointerId = motionEvent.getPointerId(0);
                    this.maybeStartTracking = true;
                    cancelCurrentAnimation();
                } else if (motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                    float x = motionEvent.getX() - this.startedTrackingX;
                    float y = motionEvent.getY() - this.startedTrackingY;
                    if (this.velocityTracker == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    }
                    this.velocityTracker.addMovement(motionEvent);
                    if (!BottomSheet.this.disableScroll && this.maybeStartTracking && !this.startedTracking && x > 0.0f && x / 3.0f > Math.abs(y) && Math.abs(x) >= BottomSheet.this.touchSlop) {
                        this.startedTrackingX = (int) motionEvent.getX();
                        this.maybeStartTracking = false;
                        this.startedTracking = true;
                    } else if (this.startedTracking) {
                        float f = this.swipeBackX + x;
                        this.swipeBackX = f;
                        BottomSheet.this.containerView.setTranslationX(Math.max(f, 0.0f));
                        this.startedTrackingX = (int) motionEvent.getX();
                        BottomSheet.this.container.invalidate();
                    }
                } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                    if (this.velocityTracker == null) {
                        this.velocityTracker = VelocityTracker.obtain();
                    }
                    float xVelocity = this.velocityTracker.getXVelocity();
                    float yVelocity = this.velocityTracker.getYVelocity();
                    if (this.swipeBackX < BottomSheet.this.containerView.getMeasuredWidth() / 3.0f && (xVelocity < 3500.0f || xVelocity < yVelocity)) {
                        float fMax = Math.max(this.swipeBackX, 0.0f);
                        this.swipeBackX = fMax;
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fMax, 0.0f);
                        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda2
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$processTouchEvent$1(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                ContainerView.this.swipeBackX = 0.0f;
                                BottomSheet.this.containerView.setTranslationX(0.0f);
                                BottomSheet.this.container.invalidate();
                            }
                        });
                        valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        valueAnimatorOfFloat.setDuration(220L);
                        valueAnimatorOfFloat.start();
                    } else {
                        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.swipeBackX, getMeasuredWidth());
                        valueAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda3
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$processTouchEvent$2(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat2.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.3
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                BottomSheet.this.skipDismissAnimation = true;
                                BottomSheet.this.containerView.setTranslationX(r2.getMeasuredWidth());
                                BottomSheet.this.dismiss();
                                BottomSheet.this.container.invalidate();
                            }
                        });
                        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
                        valueAnimatorOfFloat2.setInterpolator(cubicBezierInterpolator);
                        valueAnimatorOfFloat2.setDuration(320L);
                        valueAnimatorOfFloat2.start();
                        ValueAnimator valueAnimatorOfFloat3 = ValueAnimator.ofFloat(1.0f, 0.0f);
                        valueAnimatorOfFloat3.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda4
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$processTouchEvent$3(valueAnimator);
                            }
                        });
                        valueAnimatorOfFloat3.setInterpolator(cubicBezierInterpolator);
                        valueAnimatorOfFloat3.setDuration(320L);
                        valueAnimatorOfFloat3.start();
                    }
                    this.maybeStartTracking = false;
                    this.startedTracking = false;
                    this.startedTrackingPointerId = -1;
                    this.allowedSwipeToBack = false;
                }
            } else if (BottomSheet.this.canDismissWithTouchOutside() && motionEvent != null && ((motionEvent.getAction() == 0 || motionEvent.getAction() == 2) && !this.startedTracking && !this.maybeStartTracking && motionEvent.getPointerCount() == 1)) {
                this.startedTrackingX = (int) motionEvent.getX();
                int y2 = (int) motionEvent.getY();
                this.startedTrackingY = y2;
                if (BottomSheet.this.isTouchOutside(this.startedTrackingX, y2)) {
                    BottomSheet.this.onDismissWithTouchOutside();
                    return true;
                }
                BottomSheet.this.onScrollUpBegin(this.f1875y);
                this.startedTrackingPointerId = motionEvent.getPointerId(0);
                this.maybeStartTracking = true;
                cancelCurrentAnimation();
                VelocityTracker velocityTracker = this.velocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
            } else if (BottomSheet.this.canDismissWithSwipe() && motionEvent != null && motionEvent.getAction() == 2 && motionEvent.getPointerId(0) == this.startedTrackingPointerId) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                float fAbs = Math.abs((int) (motionEvent.getX() - this.startedTrackingX));
                float y3 = ((int) motionEvent.getY()) - this.startedTrackingY;
                boolean zOnScrollUp = BottomSheet.this.onScrollUp(this.f1875y + y3);
                this.velocityTracker.addMovement(motionEvent);
                if (!BottomSheet.this.disableScroll && this.maybeStartTracking && !this.startedTracking && y3 > 0.0f && y3 / 3.0f > Math.abs(fAbs) && Math.abs(y3) >= BottomSheet.this.touchSlop) {
                    this.startedTrackingY = (int) motionEvent.getY();
                    this.maybeStartTracking = false;
                    this.startedTracking = true;
                    requestDisallowInterceptTouchEvent(true);
                } else if (this.startedTracking) {
                    float f2 = this.f1875y + y3;
                    this.f1875y = f2;
                    if (!zOnScrollUp) {
                        this.f1875y = Math.max(f2, 0.0f);
                    }
                    BottomSheet.this.containerView.setTranslationY(Math.max(this.f1875y, 0.0f));
                    BottomSheet.this.onContainerViewTranslation();
                    this.startedTrackingY = (int) motionEvent.getY();
                    BottomSheet.this.container.invalidate();
                }
            } else if (motionEvent == null || (motionEvent.getPointerId(0) == this.startedTrackingPointerId && (motionEvent.getAction() == 3 || motionEvent.getAction() == 1 || motionEvent.getAction() == 6))) {
                if (this.velocityTracker == null) {
                    this.velocityTracker = VelocityTracker.obtain();
                }
                this.velocityTracker.computeCurrentVelocity(MediaDataController.MAX_STYLE_RUNS_COUNT);
                BottomSheet.this.onScrollUpEnd(this.f1875y);
                if (this.startedTracking || this.f1875y > 0.0f) {
                    checkDismiss(this.velocityTracker.getXVelocity(), this.velocityTracker.getYVelocity());
                } else {
                    this.maybeStartTracking = false;
                }
                this.startedTracking = false;
                VelocityTracker velocityTracker2 = this.velocityTracker;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.velocityTracker = null;
                }
                this.startedTrackingPointerId = -1;
            }
            return (!z && this.maybeStartTracking) || this.startedTracking || !(BottomSheet.this.canDismissWithSwipe() || BottomSheet.this.canSwipeToBack(motionEvent));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processTouchEvent$1(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.swipeBackX = fFloatValue;
            BottomSheet.this.containerView.setTranslationX(fFloatValue);
            BottomSheet.this.container.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processTouchEvent$2(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.swipeBackX = fFloatValue;
            BottomSheet.this.containerView.setTranslationX(fFloatValue);
            BottomSheet.this.container.invalidate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$processTouchEvent$3(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.backDrawable.setAlpha(bottomSheet.dimBehind ? (int) (bottomSheet.dimBehindAlpha * fFloatValue) : 0);
        }

        public void resetTouch() {
            this.startedTracking = false;
            this.maybeStartTracking = false;
            this.startedTrackingPointerId = -1;
            VelocityTracker velocityTracker = this.velocityTracker;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.velocityTracker = null;
            }
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            if (BottomSheet.this.predictiveBackAnimationInProgress) {
                return true;
            }
            return processTouchEvent(motionEvent, false);
        }

        /* JADX WARN: Removed duplicated region for block: B:47:0x0120  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int bottomInset;
            int iMakeMeasureSpec;
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            View rootView = getRootView();
            getWindowVisibleDisplayFrame(this.rect);
            BottomSheet bottomSheet = BottomSheet.this;
            int i3 = bottomSheet.keyboardHeight;
            Rect rect = this.rect;
            if (rect.bottom != 0 && rect.top != 0) {
                int height = (int) ((rootView.getHeight() - (this.rect.top != 0 ? AndroidUtilities.statusBarHeight * (1.0f - BottomSheet.this.hideSystemVerticalInsetsProgress) : 0.0f)) - (AndroidUtilities.getViewInset(rootView) * (1.0f - BottomSheet.this.hideSystemVerticalInsetsProgress)));
                BottomSheet bottomSheet2 = BottomSheet.this;
                Rect rect2 = this.rect;
                bottomSheet2.keyboardHeight = Math.max(0, height - (rect2.bottom - rect2.top));
                if (BottomSheet.this.keyboardHeight < AndroidUtilities.m1124dp(20.0f)) {
                    BottomSheet.this.keyboardHeight = 0;
                } else {
                    BottomSheet bottomSheet3 = BottomSheet.this;
                    bottomSheet3.lastKeyboardHeight = bottomSheet3.keyboardHeight;
                }
                BottomSheet.this.bottomInset -= BottomSheet.this.keyboardHeight;
            } else {
                bottomSheet.keyboardHeight = 0;
            }
            BottomSheet bottomSheet4 = BottomSheet.this;
            int i4 = bottomSheet4.keyboardHeight;
            if (i3 != i4) {
                this.keyboardChanged = true;
            }
            boolean z = bottomSheet4.keyboardVisible;
            bottomSheet4.keyboardVisible = i4 > AndroidUtilities.m1124dp(20.0f);
            BottomSheet bottomSheet5 = BottomSheet.this;
            if (z != bottomSheet5.keyboardVisible && Build.VERSION.SDK_INT >= 34) {
                bottomSheet5.updateBackCallbackState();
            }
            if (BottomSheet.this.lastInsets != null) {
                BottomSheet bottomSheet6 = BottomSheet.this;
                bottomSheet6.bottomInset = bottomSheet6.lastInsets.getSystemWindowInsetBottom();
                BottomSheet bottomSheet7 = BottomSheet.this;
                bottomSheet7.leftInset = bottomSheet7.lastInsets.getSystemWindowInsetLeft();
                BottomSheet bottomSheet8 = BottomSheet.this;
                bottomSheet8.rightInset = bottomSheet8.lastInsets.getSystemWindowInsetRight();
                if (Build.VERSION.SDK_INT >= 29) {
                    BottomSheet.this.bottomInset += BottomSheet.this.getAdditionalMandatoryOffsets();
                }
                BottomSheet bottomSheet9 = BottomSheet.this;
                if (bottomSheet9.keyboardVisible) {
                    Rect rect3 = this.rect;
                    if (rect3.bottom != 0 && rect3.top != 0) {
                        bottomSheet9.bottomInset -= BottomSheet.this.keyboardHeight;
                    }
                }
                BottomSheet bottomSheet10 = BottomSheet.this;
                bottomInset = (bottomSheet10.drawNavigationBar || bottomSheet10.occupyNavigationBar || bottomSheet10.occupyNavigationBarWithoutKeyboard) ? size2 : size2 - bottomSheet10.getBottomInset();
            }
            this.internalPaddingBottom = size2 - bottomInset;
            setMeasuredDimension(size, size2);
            BottomSheet bottomSheet11 = BottomSheet.this;
            bottomSheet11.navigationBarHeight = 0;
            if (bottomSheet11.lastInsets != null) {
                if (!BottomSheet.this.occupyNavigationBar) {
                    int systemWindowInsetBottom = (int) (r3.lastInsets.getSystemWindowInsetBottom() * (1.0f - BottomSheet.this.hideSystemVerticalInsetsProgress));
                    if (Build.VERSION.SDK_INT >= 29) {
                        systemWindowInsetBottom += BottomSheet.this.getAdditionalMandatoryOffsets();
                    }
                    if (!BottomSheet.this.occupyNavigationBarWithoutKeyboard || systemWindowInsetBottom > AndroidUtilities.navigationBarHeight + AndroidUtilities.m1124dp(10.0f)) {
                        size2 -= systemWindowInsetBottom;
                    }
                    BottomSheet.this.navigationBarHeight = Math.min(systemWindowInsetBottom, AndroidUtilities.navigationBarHeight);
                }
            }
            int i5 = size2;
            if (BottomSheet.this.lastInsets != null) {
                size -= BottomSheet.this.getRightInset() + BottomSheet.this.getLeftInset();
            }
            int i6 = size;
            BottomSheet bottomSheet12 = BottomSheet.this;
            bottomSheet12.isPortrait = i6 < i5;
            ViewGroup viewGroup = bottomSheet12.containerView;
            if (viewGroup != null) {
                if (!bottomSheet12.fullWidth) {
                    if (AndroidUtilities.isTablet()) {
                        Point point = AndroidUtilities.displaySize;
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(((int) (Math.min(point.x, point.y) * 0.8f)) + (BottomSheet.this.backgroundPaddingLeft * 2), TLObject.FLAG_30);
                    } else {
                        BottomSheet bottomSheet13 = BottomSheet.this;
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(bottomSheet13.getBottomSheetWidth(bottomSheet13.isPortrait, i6, i5) + (BottomSheet.this.backgroundPaddingLeft * 2), TLObject.FLAG_30);
                    }
                    BottomSheet.this.containerView.measure(iMakeMeasureSpec, View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
                } else {
                    viewGroup.measure(View.MeasureSpec.makeMeasureSpec((bottomSheet12.backgroundPaddingLeft * 2) + i6, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE));
                }
            }
            int childCount = getChildCount();
            for (int i7 = 0; i7 < childCount; i7++) {
                View childAt = getChildAt(i7);
                if (childAt.getVisibility() != 8) {
                    BottomSheet bottomSheet14 = BottomSheet.this;
                    if (childAt != bottomSheet14.containerView && !bottomSheet14.onCustomMeasure(childAt, i6, i5)) {
                        measureChildWithMargins(childAt, View.MeasureSpec.makeMeasureSpec(i6, TLObject.FLAG_30), 0, View.MeasureSpec.makeMeasureSpec(i5, TLObject.FLAG_30), 0);
                    }
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x00e1  */
        /* JADX WARN: Removed duplicated region for block: B:78:0x01f7  */
        /* JADX WARN: Removed duplicated region for block: B:83:0x0206  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0218  */
        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            int i5;
            int i6;
            BottomSheet bottomSheet;
            Runnable runnable;
            int i7;
            int i8;
            int leftInset;
            int i9;
            int i10;
            int i11;
            int leftInset2;
            int rightInset;
            int i12 = i4 - this.internalPaddingBottom;
            BottomSheet.this.layoutCount--;
            ViewGroup viewGroup = BottomSheet.this.containerView;
            if (viewGroup != null) {
                int measuredHeight = (i12 - i2) - viewGroup.getMeasuredHeight();
                if (BottomSheet.this.lastInsets != null) {
                    leftInset2 = i + BottomSheet.this.getLeftInset();
                    rightInset = i3 - BottomSheet.this.getRightInset();
                    BottomSheet bottomSheet2 = BottomSheet.this;
                    if (bottomSheet2.useSmoothKeyboard) {
                        measuredHeight = 0;
                    } else if (!bottomSheet2.occupyNavigationBar) {
                        measuredHeight = (int) (measuredHeight - ((bottomSheet2.lastInsets.getSystemWindowInsetBottom() * (1.0f - BottomSheet.this.hideSystemVerticalInsetsProgress)) - (BottomSheet.this.drawNavigationBar ? 0 : r9.getBottomInset())));
                        if (Build.VERSION.SDK_INT >= 29) {
                            measuredHeight -= BottomSheet.this.getAdditionalMandatoryOffsets();
                        }
                    }
                } else {
                    leftInset2 = i;
                    rightInset = i3;
                }
                int measuredWidth = ((rightInset - leftInset2) - BottomSheet.this.containerView.getMeasuredWidth()) / 2;
                if (BottomSheet.this.lastInsets != null) {
                    measuredWidth += BottomSheet.this.getLeftInset();
                }
                BottomSheet bottomSheet3 = BottomSheet.this;
                if (bottomSheet3.smoothKeyboardAnimationEnabled && bottomSheet3.startAnimationRunnable == null && this.keyboardChanged && !bottomSheet3.dismissed) {
                    BottomSheet bottomSheet4 = BottomSheet.this;
                    boolean z2 = bottomSheet4.smoothKeyboardByBottom;
                    ViewGroup viewGroup2 = bottomSheet4.containerView;
                    if (!z2 ? viewGroup2.getTop() != measuredHeight : viewGroup2.getBottom() != BottomSheet.this.containerView.getMeasuredHeight() + measuredHeight) {
                    }
                } else {
                    if (BottomSheet.this.smoothContainerViewLayoutUntil > 0 && System.currentTimeMillis() < BottomSheet.this.smoothContainerViewLayoutUntil) {
                        BottomSheet bottomSheet5 = BottomSheet.this;
                        bottomSheet5.containerView.setTranslationY(bottomSheet5.smoothKeyboardByBottom ? r10.getBottom() - (BottomSheet.this.containerView.getMeasuredHeight() + measuredHeight) : r10.getTop() - measuredHeight);
                        BottomSheet.this.onContainerViewTranslation();
                        BottomSheet bottomSheet6 = BottomSheet.this;
                        bottomSheet6.onSmoothContainerViewLayout(bottomSheet6.containerView.getTranslationY());
                        if (BottomSheet.this.keyboardContentAnimator != null) {
                            BottomSheet.this.keyboardContentAnimator.cancel();
                        }
                        BottomSheet bottomSheet7 = BottomSheet.this;
                        bottomSheet7.keyboardContentAnimator = ValueAnimator.ofFloat(bottomSheet7.containerView.getTranslationY(), 0.0f);
                        BottomSheet.this.keyboardContentAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$ContainerView$$ExternalSyntheticLambda0
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                this.f$0.lambda$onLayout$4(valueAnimator);
                            }
                        });
                        BottomSheet.this.keyboardContentAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.ContainerView.4
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                BottomSheet.this.containerView.setTranslationY(0.0f);
                                BottomSheet.this.onContainerViewTranslation();
                                BottomSheet bottomSheet8 = BottomSheet.this;
                                bottomSheet8.onSmoothContainerViewLayout(bottomSheet8.containerView.getTranslationY());
                                ContainerView.this.invalidate();
                            }
                        });
                        BottomSheet.this.keyboardContentAnimator.setDuration(250L).setInterpolator(AdjustPanLayoutHelper.keyboardInterpolator);
                        BottomSheet.this.keyboardContentAnimator.start();
                        BottomSheet.this.smoothContainerViewLayoutUntil = -1L;
                    }
                    ViewGroup viewGroup3 = BottomSheet.this.containerView;
                    viewGroup3.layout(measuredWidth, measuredHeight, viewGroup3.getMeasuredWidth() + measuredWidth, BottomSheet.this.containerView.getMeasuredHeight() + measuredHeight);
                    i5 = leftInset2;
                    i6 = rightInset;
                }
            } else {
                i5 = i;
                i6 = i3;
            }
            int childCount = getChildCount();
            for (int i13 = 0; i13 < childCount; i13++) {
                View childAt = getChildAt(i13);
                if (childAt.getVisibility() != 8) {
                    BottomSheet bottomSheet8 = BottomSheet.this;
                    if (childAt != bottomSheet8.containerView) {
                        if (!bottomSheet8.onCustomLayout(childAt, i5, i2, i6, i12 - (bottomSheet8.drawNavigationBar ? bottomSheet8.getBottomInset() : 0))) {
                            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                            int measuredWidth2 = childAt.getMeasuredWidth();
                            int measuredHeight2 = childAt.getMeasuredHeight();
                            int i14 = layoutParams.gravity;
                            if (i14 == -1) {
                                i14 = 51;
                            }
                            int i15 = i14 & 112;
                            int i16 = i14 & 7;
                            if (i16 == 1) {
                                i7 = (((i6 - i5) - measuredWidth2) / 2) + layoutParams.leftMargin;
                                i8 = layoutParams.rightMargin;
                            } else if (i16 == 5) {
                                i7 = i6 - measuredWidth2;
                                i8 = layoutParams.rightMargin;
                            } else {
                                leftInset = layoutParams.leftMargin;
                                if (i15 != 16) {
                                    i9 = (((i12 - i2) - measuredHeight2) / 2) + layoutParams.topMargin;
                                    i10 = layoutParams.bottomMargin;
                                } else if (i15 == 80) {
                                    i9 = (i12 - i2) - measuredHeight2;
                                    i10 = layoutParams.bottomMargin;
                                } else {
                                    i11 = layoutParams.topMargin;
                                    if (BottomSheet.this.lastInsets != null) {
                                        leftInset += BottomSheet.this.getLeftInset();
                                    }
                                    childAt.layout(leftInset, i11, measuredWidth2 + leftInset, measuredHeight2 + i11);
                                }
                                i11 = i9 - i10;
                                if (BottomSheet.this.lastInsets != null) {
                                }
                                childAt.layout(leftInset, i11, measuredWidth2 + leftInset, measuredHeight2 + i11);
                            }
                            leftInset = i7 - i8;
                            if (i15 != 16) {
                            }
                            i11 = i9 - i10;
                            if (BottomSheet.this.lastInsets != null) {
                            }
                            childAt.layout(leftInset, i11, measuredWidth2 + leftInset, measuredHeight2 + i11);
                        }
                    }
                }
            }
            if (BottomSheet.this.layoutCount == 0 && (runnable = (bottomSheet = BottomSheet.this).startAnimationRunnable) != null && !bottomSheet.waitingKeyboard) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                BottomSheet.this.startAnimationRunnable.run();
                BottomSheet.this.startAnimationRunnable = null;
            }
            BottomSheet bottomSheet9 = BottomSheet.this;
            if (bottomSheet9.waitingKeyboard && bottomSheet9.keyboardVisible) {
                Runnable runnable2 = bottomSheet9.startAnimationRunnable;
                if (runnable2 != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable2);
                    BottomSheet.this.startAnimationRunnable.run();
                }
                BottomSheet.this.waitingKeyboard = false;
            }
            this.keyboardChanged = false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayout$4(ValueAnimator valueAnimator) {
            BottomSheet.this.containerView.setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
            BottomSheet.this.onContainerViewTranslation();
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.onSmoothContainerViewLayout(bottomSheet.containerView.getTranslationY());
            invalidate();
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (BottomSheet.this.predictiveBackAnimationInProgress) {
                return true;
            }
            if (BottomSheet.this.canDismissWithSwipe() || BottomSheet.this.canSwipeToBack(motionEvent)) {
                return processTouchEvent(motionEvent, true);
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public void requestDisallowInterceptTouchEvent(boolean z) {
            if (this.maybeStartTracking && !this.startedTracking) {
                onTouchEvent(null);
            }
            super.requestDisallowInterceptTouchEvent(z);
        }

        /* JADX WARN: Removed duplicated region for block: B:37:0x0106  */
        @Override // android.view.ViewGroup, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void dispatchDraw(Canvas canvas) {
            BottomSheet bottomSheet = BottomSheet.this;
            if (bottomSheet.containerView != null && this.internalPaddingBottom > 0) {
                this.internalBackgroundPaint.setColor(bottomSheet.internalBackgroundColor);
                canvas.drawRect(0.0f, ((getMeasuredHeight() - this.internalPaddingBottom) + BottomSheet.this.containerView.getTranslationY()) - 1.0f, getMeasuredWidth(), getMeasuredHeight() + BottomSheet.this.containerView.getTranslationY(), this.internalBackgroundPaint);
            }
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                BottomSheet bottomSheet2 = BottomSheet.this;
                int i2 = bottomSheet2.navBarColorKey;
                if (i2 >= 0) {
                    this.backgroundPaint.setColor(bottomSheet2.getThemedColor(i2));
                } else {
                    this.backgroundPaint.setColor(bottomSheet2.navBarColor);
                }
            } else {
                this.backgroundPaint.setColor(-16777216);
            }
            BottomSheet bottomSheet3 = BottomSheet.this;
            if (bottomSheet3.drawDoubleNavigationBar && !bottomSheet3.shouldOverlayCameraViewOverNavBar()) {
                drawNavigationBar(canvas, 1.0f);
            }
            if (this.backgroundPaint.getAlpha() < 255) {
                BottomSheet bottomSheet4 = BottomSheet.this;
                if (bottomSheet4.drawNavigationBar) {
                    float fMax = (bottomSheet4.scrollNavBar || (i >= 29 && bottomSheet4.getAdditionalMandatoryOffsets() > 0)) ? Math.max(0.0f, BottomSheet.this.getBottomInset() - (BottomSheet.this.containerView.getMeasuredHeight() - BottomSheet.this.containerView.getTranslationY())) : 0.0f;
                    BottomSheet bottomSheet5 = BottomSheet.this;
                    int bottomInset = bottomSheet5.drawNavigationBar ? bottomSheet5.getBottomInset() : 0;
                    canvas.save();
                    canvas.clipRect(BottomSheet.this.containerView.getLeft() + BottomSheet.this.backgroundPaddingLeft, ((getMeasuredHeight() - bottomInset) + fMax) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + fMax, Region.Op.DIFFERENCE);
                    super.dispatchDraw(canvas);
                    canvas.restore();
                } else {
                    super.dispatchDraw(canvas);
                }
            }
            if (!BottomSheet.this.shouldOverlayCameraViewOverNavBar()) {
                BottomSheet bottomSheet6 = BottomSheet.this;
                drawNavigationBar(canvas, bottomSheet6.drawDoubleNavigationBar ? bottomSheet6.navigationBarAlpha * 0.7f : 1.0f);
            }
            BottomSheet bottomSheet7 = BottomSheet.this;
            if (bottomSheet7.drawNavigationBar && bottomSheet7.rightInset != 0 && BottomSheet.this.rightInset > BottomSheet.this.leftInset) {
                BottomSheet bottomSheet8 = BottomSheet.this;
                if (bottomSheet8.fullWidth) {
                    Point point = AndroidUtilities.displaySize;
                    if (point.x > point.y) {
                        int right = bottomSheet8.containerView.getRight();
                        canvas.drawRect(right - r2.backgroundPaddingLeft, BottomSheet.this.containerView.getTranslationY(), BottomSheet.this.containerView.getRight() + BottomSheet.this.rightInset, getMeasuredHeight(), this.backgroundPaint);
                    }
                }
            }
            BottomSheet bottomSheet9 = BottomSheet.this;
            if (bottomSheet9.drawNavigationBar && bottomSheet9.leftInset != 0 && BottomSheet.this.leftInset > BottomSheet.this.rightInset) {
                BottomSheet bottomSheet10 = BottomSheet.this;
                if (bottomSheet10.fullWidth) {
                    Point point2 = AndroidUtilities.displaySize;
                    if (point2.x > point2.y) {
                        canvas.drawRect(0.0f, bottomSheet10.containerView.getTranslationY(), BottomSheet.this.containerView.getLeft() + BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight(), this.backgroundPaint);
                    }
                }
            }
            if (BottomSheet.this.containerView.getTranslationY() < 0.0f) {
                Paint paint = this.backgroundPaint;
                BottomSheet bottomSheet11 = BottomSheet.this;
                int i3 = bottomSheet11.behindKeyboardColorKey;
                paint.setColor(i3 >= 0 ? bottomSheet11.getThemedColor(i3) : bottomSheet11.behindKeyboardColor);
                int left = BottomSheet.this.containerView.getLeft();
                canvas.drawRect(left + r1.backgroundPaddingLeft, BottomSheet.this.containerView.getMeasuredHeight() + BottomSheet.this.containerView.getY(), BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight(), this.backgroundPaint);
            }
        }

        @Override // android.view.ViewGroup
        protected boolean drawChild(Canvas canvas, View view, long j) {
            if (view instanceof CameraView) {
                if (BottomSheet.this.shouldOverlayCameraViewOverNavBar()) {
                    drawNavigationBar(canvas, 1.0f);
                }
                return super.drawChild(canvas, view, j);
            }
            return super.drawChild(canvas, view, j);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
        @Override // android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onDraw(Canvas canvas) {
            boolean z;
            if (this.backgroundPaint.getAlpha() < 255) {
                BottomSheet bottomSheet = BottomSheet.this;
                if (bottomSheet.drawNavigationBar) {
                    float fMax = 0.0f;
                    if (bottomSheet.scrollNavBar || (Build.VERSION.SDK_INT >= 29 && bottomSheet.getAdditionalMandatoryOffsets() > 0)) {
                        fMax = Math.max(0.0f, BottomSheet.this.getBottomInset() - (BottomSheet.this.containerView.getMeasuredHeight() - BottomSheet.this.containerView.getTranslationY()));
                    }
                    BottomSheet bottomSheet2 = BottomSheet.this;
                    int bottomInset = bottomSheet2.drawNavigationBar ? bottomSheet2.getBottomInset() : 0;
                    canvas.save();
                    canvas.clipRect(BottomSheet.this.containerView.getLeft() + BottomSheet.this.backgroundPaddingLeft, ((getMeasuredHeight() - bottomInset) + fMax) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + fMax, Region.Op.DIFFERENCE);
                    z = true;
                } else {
                    z = false;
                }
            }
            super.onDraw(canvas);
            BottomSheet bottomSheet3 = BottomSheet.this;
            if (bottomSheet3.drawNavigationBar && bottomSheet3.lastInsets != null) {
                BottomSheet bottomSheet4 = BottomSheet.this;
                if (bottomSheet4.keyboardHeight != 0) {
                    Paint paint = this.backgroundPaint;
                    int i = bottomSheet4.behindKeyboardColorKey;
                    paint.setColor(i >= 0 ? bottomSheet4.getThemedColor(i) : bottomSheet4.behindKeyboardColor);
                    float left = BottomSheet.this.containerView.getLeft() + BottomSheet.this.backgroundPaddingLeft;
                    int measuredHeight = getMeasuredHeight();
                    BottomSheet bottomSheet5 = BottomSheet.this;
                    float bottomInset2 = (measuredHeight - bottomSheet5.keyboardHeight) - (bottomSheet5.drawNavigationBar ? bottomSheet5.getBottomInset() : 0);
                    float right = BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft;
                    int measuredHeight2 = getMeasuredHeight();
                    canvas.drawRect(left, bottomInset2, right, measuredHeight2 - (BottomSheet.this.drawNavigationBar ? r4.getBottomInset() : 0), this.backgroundPaint);
                }
            }
            BottomSheet.this.onContainerDraw(canvas);
            if (z) {
                canvas.restore();
            }
        }

        public void drawNavigationBar(Canvas canvas, float f) {
            float fMax;
            int i = Build.VERSION.SDK_INT;
            if (i >= 26) {
                BottomSheet bottomSheet = BottomSheet.this;
                int i2 = bottomSheet.navBarColorKey;
                if (i2 >= 0) {
                    this.backgroundPaint.setColor(bottomSheet.getThemedColor(i2));
                } else {
                    this.backgroundPaint.setColor(bottomSheet.navBarColor);
                }
            } else {
                this.backgroundPaint.setColor(-16777216);
            }
            if (!BottomSheet.this.transitionFromRight || BottomSheet.this.containerView.getVisibility() == 0) {
                BottomSheet bottomSheet2 = BottomSheet.this;
                float f2 = 0.0f;
                if ((!bottomSheet2.drawNavigationBar || bottomSheet2.bottomInset == 0) && BottomSheet.this.currentPanTranslationY == 0.0f) {
                    return;
                }
                BottomSheet bottomSheet3 = BottomSheet.this;
                int bottomInset = bottomSheet3.drawNavigationBar ? bottomSheet3.getBottomInset() : 0;
                BottomSheet bottomSheet4 = BottomSheet.this;
                if (bottomSheet4.scrollNavBar || (i >= 29 && bottomSheet4.getAdditionalMandatoryOffsets() > 0)) {
                    BottomSheet bottomSheet5 = BottomSheet.this;
                    if (bottomSheet5.drawDoubleNavigationBar) {
                        fMax = Math.max(0.0f, Math.min(bottomInset - bottomSheet5.currentPanTranslationY, BottomSheet.this.containerView.getTranslationY()));
                    } else {
                        fMax = Math.max(0.0f, BottomSheet.this.getBottomInset() - (bottomSheet5.containerView.getMeasuredHeight() - BottomSheet.this.containerView.getTranslationY()));
                    }
                } else {
                    fMax = 0.0f;
                }
                int alpha = this.backgroundPaint.getAlpha();
                float alpha2 = BottomSheet.this.transitionFromRight ? BottomSheet.this.containerView.getAlpha() * f : f;
                int x = BottomSheet.this.transitionFromRight ? (int) BottomSheet.this.containerView.getX() : BottomSheet.this.containerView.getLeft();
                if (alpha2 < 1.0f) {
                    this.backgroundPaint.setAlpha((int) (alpha * alpha2));
                }
                canvas.drawRect(BottomSheet.this.backgroundPaddingLeft + x, ((getMeasuredHeight() - bottomInset) + fMax) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + fMax, this.backgroundPaint);
                this.backgroundPaint.setAlpha(alpha);
                if (BottomSheet.this.overlayDrawNavBarColor != 0) {
                    this.backgroundPaint.setColor(BottomSheet.this.overlayDrawNavBarColor);
                    int alpha3 = this.backgroundPaint.getAlpha();
                    float navigationBarThirdButtonsFactor = AndroidUtilities.getNavigationBarThirdButtonsFactor(bottomInset);
                    if (alpha2 < 1.0f) {
                        this.backgroundPaint.setAlpha((int) (alpha3 * alpha2 * navigationBarThirdButtonsFactor));
                    } else {
                        f2 = fMax;
                    }
                    if (this.backgroundPaint.getAlpha() > 0) {
                        canvas.drawRect(x + BottomSheet.this.backgroundPaddingLeft, ((getMeasuredHeight() - bottomInset) + f2) - BottomSheet.this.currentPanTranslationY, BottomSheet.this.containerView.getRight() - BottomSheet.this.backgroundPaddingLeft, getMeasuredHeight() + f2, this.backgroundPaint);
                    }
                    this.backgroundPaint.setAlpha(alpha3);
                }
            }
        }
    }

    protected int getBottomSheetWidth(boolean z, int i, int i2) {
        return z ? i : (int) Math.max(i * 0.8f, Math.min(AndroidUtilities.m1124dp(480.0f), i));
    }

    public void setHideSystemVerticalInsets(boolean z) {
        ValueAnimator duration = ValueAnimator.ofFloat(this.hideSystemVerticalInsetsProgress, z ? 1.0f : 0.0f).setDuration(180L);
        duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda11
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$setHideSystemVerticalInsets$0(valueAnimator);
            }
        });
        duration.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setHideSystemVerticalInsets$0(ValueAnimator valueAnimator) {
        this.hideSystemVerticalInsetsProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.container.requestLayout();
        this.containerView.requestLayout();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getAdditionalMandatoryOffsets() {
        WindowInsets windowInsets;
        if (this.calcMandatoryInsets && (windowInsets = this.lastInsets) != null) {
            Insets systemGestureInsets = windowInsets.getSystemGestureInsets();
            if (!this.keyboardVisible && this.drawNavigationBar && systemGestureInsets != null && (systemGestureInsets.left != 0 || systemGestureInsets.right != 0)) {
                return systemGestureInsets.bottom;
            }
        }
        return 0;
    }

    public boolean isKeyboardVisible() {
        return this.keyboardVisible;
    }

    public int getSystemBottomInset() {
        WindowInsets windowInsets = this.lastInsets;
        if (windowInsets != null) {
            return windowInsets.getSystemWindowInsetBottom();
        }
        return 0;
    }

    public void setCalcMandatoryInsets(boolean z) {
        this.calcMandatoryInsets = z;
        this.drawNavigationBar = z;
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class BottomSheetCell extends FrameLayout {
        private boolean checked;
        int currentType;
        private ImageView imageView;
        private ImageView imageView2;
        public boolean isSelected;
        private final Theme.ResourcesProvider resourcesProvider;
        private AnimatedEmojiSpan.TextViewEmojis textView;

        public BottomSheetCell(Context context, int i) {
            this(context, i, null);
        }

        public BottomSheetCell(Context context, int i, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.isSelected = false;
            this.resourcesProvider = resourcesProvider;
            this.currentType = i;
            if (i != Builder.CELL_TYPE_CALL) {
                setBackgroundDrawable(Theme.getSelectorDrawable(false, resourcesProvider));
            }
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER;
            imageView.setScaleType(scaleType);
            this.imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(Theme.key_dialogIcon), PorterDuff.Mode.MULTIPLY));
            addView(this.imageView, LayoutHelper.createFrame(56, 48, (LocaleController.isRTL ? 5 : 3) | 16));
            ImageView imageView2 = new ImageView(context);
            this.imageView2 = imageView2;
            imageView2.setScaleType(scaleType);
            this.imageView2.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_radioBackgroundChecked, resourcesProvider), PorterDuff.Mode.SRC_IN));
            addView(this.imageView2, LayoutHelper.createFrame(56, 48, (LocaleController.isRTL ? 3 : 5) | 16));
            AnimatedEmojiSpan.TextViewEmojis textViewEmojis = new AnimatedEmojiSpan.TextViewEmojis(context);
            this.textView = textViewEmojis;
            textViewEmojis.setLines(1);
            this.textView.setSingleLine(true);
            this.textView.setGravity(1);
            this.textView.setEllipsize(TextUtils.TruncateAt.END);
            if (i == 0 || i == Builder.CELL_TYPE_CALL) {
                this.textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.textView.setTextSize(1, 16.0f);
                addView(this.textView, LayoutHelper.createFrame(-2, -2, (LocaleController.isRTL ? 5 : 3) | 16));
                return;
            }
            if (i == 1) {
                this.textView.setGravity(17);
                this.textView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.textView.setTextSize(1, 14.0f);
                this.textView.setTypeface(AndroidUtilities.bold());
                addView(this.textView, LayoutHelper.createFrame(-1, -1.0f));
                return;
            }
            if (i == 2) {
                this.textView.setGravity(17);
                this.textView.setTextColor(getThemedColor(Theme.key_featuredStickers_buttonText));
                this.textView.setTextSize(1, 14.0f);
                this.textView.setTypeface(AndroidUtilities.bold());
                this.textView.setBackground(Theme.AdaptiveRipple.filledRect(getThemedColor(Theme.key_featuredStickers_addButton), 6.0f));
                addView(this.textView, LayoutHelper.createFrame(-1, -1.0f, 0, 16.0f, 16.0f, 16.0f, 16.0f));
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int i3 = this.currentType;
            int i4 = i3 == 2 ? 80 : 48;
            if (i3 == 0) {
                i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i), TLObject.FLAG_30);
            }
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(i4), TLObject.FLAG_30));
        }

        public void setTextColor(int i) {
            this.textView.setTextColor(i);
        }

        public void setIconColor(int i) {
            this.imageView.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.MULTIPLY));
        }

        public void setGravity(int i) {
            this.textView.setGravity(i);
        }

        public void setTextAndIcon(CharSequence charSequence, int i) {
            setTextAndIcon(charSequence, i, null, false);
        }

        public void setTextAndIcon(CharSequence charSequence, Drawable drawable) {
            setTextAndIcon(charSequence, 0, drawable, false);
        }

        public void setTextAndIcon(CharSequence charSequence, int i, Drawable drawable, boolean z) {
            this.textView.setText(charSequence);
            if (i != 0 || drawable != null) {
                if (drawable != null) {
                    this.imageView.setImageDrawable(drawable);
                } else {
                    this.imageView.setImageResource(i);
                }
                this.imageView.setVisibility(0);
                if (z) {
                    this.textView.setPadding(AndroidUtilities.m1124dp(LocaleController.isRTL ? 21.0f : 72.0f), 0, AndroidUtilities.m1124dp(LocaleController.isRTL ? 72.0f : 21.0f), 0);
                    this.imageView.setPadding(LocaleController.isRTL ? 0 : AndroidUtilities.m1124dp(5.0f), 0, LocaleController.isRTL ? AndroidUtilities.m1124dp(5.0f) : 5, 0);
                    return;
                } else {
                    this.textView.setPadding(AndroidUtilities.m1124dp(LocaleController.isRTL ? 16.0f : 72.0f), 0, AndroidUtilities.m1124dp(LocaleController.isRTL ? 72.0f : 16.0f), 0);
                    this.imageView.setPadding(0, 0, 0, 0);
                    return;
                }
            }
            this.imageView.setVisibility(4);
            this.textView.setPadding(AndroidUtilities.m1124dp(z ? 21.0f : 16.0f), 0, AndroidUtilities.m1124dp(z ? 21.0f : 16.0f), 0);
        }

        public void setChecked(boolean z) {
            ImageView imageView = this.imageView2;
            this.checked = z;
            imageView.setImageResource(z ? C2888R.drawable.checkbig : 0);
        }

        public boolean isChecked() {
            return this.checked;
        }

        public AnimatedEmojiSpan.TextViewEmojis getTextView() {
            return this.textView;
        }

        public ImageView getImageView() {
            return this.imageView;
        }

        protected int getThemedColor(int i) {
            return Theme.getColor(i, this.resourcesProvider);
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            if (this.isSelected) {
                accessibilityNodeInfo.setSelected(true);
            }
        }
    }

    public void setAllowNestedScroll(boolean z) {
        this.allowNestedScroll = z;
        if (z) {
            return;
        }
        this.containerView.setTranslationY(0.0f);
        onContainerViewTranslation();
    }

    public BottomSheet(Context context, boolean z) {
        this(context, z, null);
    }

    public BottomSheet(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
        this(context, z, false, resourcesProvider);
    }

    public BottomSheet(Context context, boolean z, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        super(context, C2888R.style.TransparentDialog);
        this.currentAccount = UserConfig.selectedAccount;
        this.allowDrawContent = true;
        this.useHardwareLayer = true;
        this.backDrawable = new ColorDrawable(-16777216) { // from class: org.telegram.ui.ActionBar.BottomSheet.1
            @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
            public void setAlpha(int i) {
                super.setAlpha(i);
                BottomSheet.this.container.invalidate();
            }
        };
        this.useLightStatusBar = true;
        int i = Theme.key_dialogBackground;
        this.behindKeyboardColorKey = i;
        this.canDismissWithSwipe = true;
        this.canDismissWithTouchOutside = true;
        this.allowCustomAnimation = true;
        this.statusBarHeight = AndroidUtilities.statusBarHeight;
        this.openInterpolator = CubicBezierInterpolator.EASE_OUT_QUINT;
        this.focusableSoftInputMode = 16;
        this.dimBehind = true;
        this.dimBehindAlpha = 51;
        this.allowNestedScroll = true;
        this.applyTopPadding = true;
        this.applyBottomPadding = true;
        this.itemViews = new ArrayList<>();
        this.dismissRunnable = new BottomSheet$$ExternalSyntheticLambda12(this);
        this.navigationBarAlpha = 0.0f;
        this.navBarColorKey = Theme.key_windowBackgroundGray;
        this.pauseAllHeavyOperations = true;
        this.notificationsLocker = new AnimationNotificationsLocker();
        this.useBackgroundTopPadding = true;
        this.customViewGravity = 51;
        this.smoothContainerViewLayoutUntil = -1L;
        this.resourcesProvider = resourcesProvider;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            getWindow().addFlags(-2147483392);
            if (z2) {
                this.focusableSoftInputMode = 48;
            }
        } else {
            getWindow().addFlags(-2147417856);
        }
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        Rect rect = new Rect();
        Drawable drawableMutate = context.getResources().getDrawable(C2888R.drawable.sheet_shadow_round).mutate();
        this.shadowDrawable = drawableMutate;
        int themedColor = getThemedColor(i);
        this.internalBackgroundColor = themedColor;
        drawableMutate.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.MULTIPLY));
        this.shadowDrawable.getPadding(rect);
        this.backgroundPaddingLeft = rect.left;
        this.backgroundPaddingTop = rect.top;
        ContainerView containerView = new ContainerView(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.2
            @Override // org.telegram.ui.ActionBar.BottomSheet.ContainerView, android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                try {
                    if (BottomSheet.this.allowDrawContent) {
                        return super.drawChild(canvas, view, j);
                    }
                    return false;
                } catch (Exception e) {
                    FileLog.m1136e(e);
                    return true;
                }
            }

            @Override // org.telegram.ui.ActionBar.BottomSheet.ContainerView, android.view.ViewGroup, android.view.View
            protected void dispatchDraw(Canvas canvas) {
                super.dispatchDraw(canvas);
                BottomSheet.this.mainContainerDispatchDraw(canvas);
            }

            @Override // android.view.View
            protected void onConfigurationChanged(Configuration configuration) {
                BottomSheet.this.lastInsets = null;
                BottomSheet.this.container.requestApplyInsets();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                if (Build.VERSION.SDK_INT >= 34) {
                    BottomSheet.this.registerBackCallback();
                }
                Bulletin.addDelegate(this, new Bulletin.Delegate() { // from class: org.telegram.ui.ActionBar.BottomSheet.2.1
                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean allowLayoutChanges() {
                        return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean bottomOffsetAnimated() {
                        return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ boolean clipWithGradient(int i3) {
                        return Bulletin.Delegate.CC.$default$clipWithGradient(this, i3);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ int getBottomOffset(int i3) {
                        return Bulletin.Delegate.CC.$default$getBottomOffset(this, i3);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onBottomOffsetChange(float f) {
                        Bulletin.Delegate.CC.$default$onBottomOffsetChange(this, f);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onHide(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onHide(this, bulletin);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public /* synthetic */ void onShow(Bulletin bulletin) {
                        Bulletin.Delegate.CC.$default$onShow(this, bulletin);
                    }

                    @Override // org.telegram.ui.Components.Bulletin.Delegate
                    public int getTopOffset(int i3) {
                        return AndroidUtilities.statusBarHeight;
                    }
                });
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                if (Build.VERSION.SDK_INT >= 34) {
                    BottomSheet.this.unregisterBackCallback();
                }
                Bulletin.removeDelegate(this);
            }
        };
        this.container = containerView;
        containerView.setClipChildren(false);
        this.container.setClipToPadding(false);
        this.container.setBackground(this.backDrawable);
        this.focusable = z;
        if (!z2) {
            this.container.setFitsSystemWindows(true);
            this.container.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda13
                @Override // android.view.View.OnApplyWindowInsetsListener
                public final WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                    return this.f$0.lambda$new$1(view, windowInsets);
                }
            });
        }
        if (i2 >= 30) {
            this.container.setSystemUiVisibility(1792);
        } else {
            this.container.setSystemUiVisibility(1280);
        }
        this.backDrawable.setAlpha(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ WindowInsets lambda$new$1(View view, WindowInsets windowInsets) {
        int systemWindowInsetTop = windowInsets.getSystemWindowInsetTop();
        if ((systemWindowInsetTop != 0 || AndroidUtilities.isInMultiwindow) && this.statusBarHeight != systemWindowInsetTop) {
            this.statusBarHeight = systemWindowInsetTop;
        }
        this.lastInsets = windowInsets;
        view.requestLayout();
        onInsetsChanged();
        if (Build.VERSION.SDK_INT >= 30) {
            return WindowInsets.CONSUMED;
        }
        return windowInsets.consumeSystemWindowInsets();
    }

    public void fixNavigationBar() {
        fixNavigationBar(getThemedColor(Theme.key_dialogBackground));
    }

    public void fixNavigationBar(int i) {
        this.drawNavigationBar = !this.occupyNavigationBar;
        this.drawDoubleNavigationBar = true;
        this.scrollNavBar = true;
        this.navBarColorKey = -1;
        this.navBarColor = i;
        setOverlayNavBarColor(i);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        onCreateInternal();
    }

    private void onCreateInternal() {
        Window window;
        int i;
        BaseFragment baseFragment = this.attachedFragment;
        if (baseFragment != null) {
            baseFragment.addSheet(this);
            if (this.attachedFragment.getLayoutContainer() == null) {
                return;
            }
            if (((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.attachedFragment.getLayoutContainer().getWindowToken(), 2)) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCreateInternal$2();
                    }
                }, 80L);
            } else {
                AndroidUtilities.removeFromParent(this.container);
                this.attachedFragment.getLayoutContainer().addView(this.container);
            }
            window = null;
        } else {
            window = getWindow();
            window.setWindowAnimations(C2888R.style.DialogNoAnimation);
            setContentView(this.container, new ViewGroup.LayoutParams(-1, -1));
        }
        if (this.useLightStatusBar && AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_actionBarDefault, null, true)) >= 0.721f) {
            this.container.setSystemUiVisibility(this.container.getSystemUiVisibility() | 8192);
        }
        if (this.useLightNavBar && Build.VERSION.SDK_INT >= 26) {
            AndroidUtilities.setLightNavigationBar((Dialog) this, false);
        }
        if (this.containerView == null) {
            FrameLayout frameLayout = new FrameLayout(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.3
                @Override // android.view.View
                public boolean hasOverlappingRendering() {
                    return false;
                }

                @Override // android.view.View
                public void setTranslationY(float f) {
                    super.setTranslationY(f);
                    FrameLayout frameLayout2 = BottomSheet.this.topBulletinContainer;
                    if (frameLayout2 != null) {
                        frameLayout2.setTranslationY((-(r0.container.getHeight() - BottomSheet.this.containerView.getY())) + BottomSheet.this.backgroundPaddingTop);
                    }
                    BottomSheet.this.onContainerTranslationYChanged(f);
                }
            };
            this.containerView = frameLayout;
            frameLayout.setBackgroundDrawable(this.shadowDrawable);
            this.containerView.setPadding(this.backgroundPaddingLeft, ((this.applyTopPadding ? AndroidUtilities.m1124dp(8.0f) : 0) + this.backgroundPaddingTop) - 1, this.backgroundPaddingLeft, this.applyBottomPadding ? AndroidUtilities.m1124dp(8.0f) : 0);
        }
        this.containerView.setVisibility(4);
        this.container.addView(this.containerView, 0, LayoutHelper.createFrame(-1, -2, 80));
        if (this.topBulletinContainer == null) {
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            this.topBulletinContainer = frameLayout2;
            ContainerView containerView = this.container;
            containerView.addView(frameLayout2, containerView.indexOfChild(this.containerView) + 1, LayoutHelper.createFrame(-1, -2, 80));
        }
        if (this.title != null) {
            TextView textView = new TextView(getContext()) { // from class: org.telegram.ui.ActionBar.BottomSheet.4
                @Override // android.widget.TextView, android.view.View
                protected void onMeasure(int i2, int i3) {
                    super.onMeasure(i2, i3);
                    if (BottomSheet.this.multipleLinesTitle) {
                        int measuredHeight = getMeasuredHeight();
                        if (BottomSheet.this.customView != null) {
                            ((ViewGroup.MarginLayoutParams) BottomSheet.this.customView.getLayoutParams()).topMargin = measuredHeight;
                            return;
                        }
                        if (BottomSheet.this.containerView != null) {
                            for (int i4 = 1; i4 < BottomSheet.this.containerView.getChildCount(); i4++) {
                                View childAt = BottomSheet.this.containerView.getChildAt(i4);
                                if (childAt instanceof BottomSheetCell) {
                                    ((ViewGroup.MarginLayoutParams) childAt.getLayoutParams()).topMargin = measuredHeight;
                                    measuredHeight += AndroidUtilities.m1124dp(48.0f);
                                }
                            }
                        }
                    }
                }
            };
            this.titleView = textView;
            textView.setText(this.title);
            if (this.bigTitle) {
                this.titleView.setTextColor(getThemedColor(Theme.key_dialogTextBlack));
                this.titleView.setTextSize(1, 20.0f);
                this.titleView.setTypeface(AndroidUtilities.bold());
                this.titleView.setPadding(AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(this.multipleLinesTitle ? 14.0f : 6.0f), AndroidUtilities.m1124dp(21.0f), AndroidUtilities.m1124dp(8.0f));
            } else {
                this.titleView.setTextColor(getThemedColor(Theme.key_dialogTextGray2));
                this.titleView.setTextSize(1, 16.0f);
                this.titleView.setPadding(AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(this.multipleLinesTitle ? 8.0f : 0.0f), AndroidUtilities.m1124dp(16.0f), AndroidUtilities.m1124dp(8.0f));
            }
            if (this.multipleLinesTitle) {
                this.titleView.setSingleLine(false);
                this.titleView.setMaxLines(5);
                this.titleView.setEllipsize(TextUtils.TruncateAt.END);
            } else {
                this.titleView.setLines(1);
                this.titleView.setSingleLine(true);
                this.titleView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
            }
            this.titleView.setGravity(16);
            i = 48;
            this.containerView.addView(this.titleView, LayoutHelper.createFrame(-1, this.multipleLinesTitle ? -2.0f : 48));
            this.titleView.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    return BottomSheet.$r8$lambda$Gd4n5DMvY6tsqBn0MFClxifpt3E(view, motionEvent);
                }
            });
        } else {
            i = 0;
        }
        View view = this.customView;
        if (view != null) {
            if (view.getParent() != null) {
                ((ViewGroup) this.customView.getParent()).removeView(this.customView);
            }
            if (!this.useBackgroundTopPadding) {
                this.containerView.setClipToPadding(false);
                this.containerView.setClipChildren(false);
                this.container.setClipToPadding(false);
                this.container.setClipChildren(false);
                float f = i;
                this.containerView.addView(this.customView, LayoutHelper.createFrame(-1, -2.0f, this.customViewGravity, 0.0f, f, 0.0f, 0.0f));
                ((ViewGroup.MarginLayoutParams) this.customView.getLayoutParams()).topMargin = (-this.backgroundPaddingTop) + AndroidUtilities.m1124dp(f);
            } else {
                this.containerView.addView(this.customView, LayoutHelper.createFrame(-1, -2.0f, this.customViewGravity, 0.0f, i, 0.0f, 0.0f));
            }
        } else if (this.items != null) {
            int i2 = 0;
            while (true) {
                CharSequence[] charSequenceArr = this.items;
                if (i2 >= charSequenceArr.length) {
                    break;
                }
                if (charSequenceArr[i2] != null) {
                    BottomSheetCell bottomSheetCell = new BottomSheetCell(getContext(), this.cellType, this.resourcesProvider);
                    CharSequence charSequence = this.items[i2];
                    int[] iArr = this.itemIcons;
                    bottomSheetCell.setTextAndIcon(charSequence, iArr != null ? iArr[i2] : 0, null, this.bigTitle);
                    this.containerView.addView(bottomSheetCell, LayoutHelper.createFrame(-1, 48.0f, 51, 0.0f, i, 0.0f, 0.0f));
                    i += 48;
                    bottomSheetCell.setTag(Integer.valueOf(i2));
                    bottomSheetCell.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            this.f$0.lambda$onCreateInternal$4(view2);
                        }
                    });
                    this.itemViews.add(bottomSheetCell);
                }
                i2++;
            }
        }
        if (this.attachedFragment == null && window != null) {
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = -1;
            attributes.gravity = 51;
            attributes.dimAmount = 0.0f;
            int i3 = attributes.flags & (-3);
            attributes.flags = i3;
            if (this.focusable) {
                attributes.softInputMode = this.focusableSoftInputMode;
            } else {
                attributes.flags = i3 | 131072;
            }
            if (this.isFullscreen) {
                attributes.flags |= -2147416832;
                this.container.setSystemUiVisibility(1284);
            }
            attributes.height = -1;
            if (Build.VERSION.SDK_INT >= 28) {
                attributes.layoutInDisplayCutoutMode = 1;
            }
            window.setAttributes(attributes);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateInternal$2() {
        AndroidUtilities.removeFromParent(this.container);
        this.attachedFragment.getLayoutContainer().addView(this.container);
    }

    public static /* synthetic */ boolean $r8$lambda$Gd4n5DMvY6tsqBn0MFClxifpt3E(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCreateInternal$4(View view) {
        dismissWithButtonClick(((Integer) view.getTag()).intValue());
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
    }

    public void setUseLightStatusBar(boolean z) {
        this.useLightStatusBar = z;
        float fComputePerceivedBrightness = AndroidUtilities.computePerceivedBrightness(Theme.getColor(Theme.key_actionBarDefault, null, true));
        int systemUiVisibility = this.container.getSystemUiVisibility();
        this.container.setSystemUiVisibility((!this.useLightStatusBar || fComputePerceivedBrightness < 0.721f) ? systemUiVisibility & (-8193) : systemUiVisibility | 8192);
        if (this.attachedFragment != null) {
            LaunchActivity.instance.checkSystemBarColors(true, true, true);
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isAttachedLightStatusBar() {
        return this.useLightStatusBar;
    }

    public boolean isFocusable() {
        return this.focusable;
    }

    public void setFocusable(boolean z) {
        if (this.focusable == z) {
            return;
        }
        this.focusable = z;
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (this.focusable) {
            attributes.softInputMode = this.focusableSoftInputMode;
            attributes.flags &= -131073;
        } else {
            attributes.softInputMode = 48;
            attributes.flags |= 131072;
        }
        window.setAttributes(attributes);
    }

    public void setShowWithoutAnimation(boolean z) {
        this.showWithoutAnimation = z;
    }

    public void setBackgroundColor(int i) {
        this.shadowDrawable.setColorFilter(i, PorterDuff.Mode.MULTIPLY);
        if (this.internalBackgroundColor != i) {
            this.internalBackgroundColor = i;
            ContainerView containerView = this.container;
            if (containerView != null) {
                containerView.invalidate(0, containerView.getMeasuredHeight() - this.container.internalPaddingBottom, this.container.getMeasuredWidth(), this.container.getMeasuredHeight());
            }
        }
    }

    @Override // android.app.Dialog
    public void show() {
        if (AndroidUtilities.isSafeToShow(getContext())) {
            if (this.attachedFragment != null) {
                onCreateInternal();
            } else {
                super.show();
            }
            setShowing(true);
            if (this.focusable) {
                getWindow().setSoftInputMode(this.focusableSoftInputMode);
            }
            this.dismissed = false;
            cancelSheetAnimation();
            this.containerView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.x + (this.backgroundPaddingLeft * 2), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.displaySize.y, Integer.MIN_VALUE));
            if (this.showWithoutAnimation) {
                this.backDrawable.setAlpha(this.dimBehind ? this.dimBehindAlpha : 0);
                this.containerView.setTranslationY(0.0f);
                onContainerViewTranslation();
                return;
            }
            this.backDrawable.setAlpha(0);
            this.layoutCount = 2;
            this.containerView.setTranslationY((AndroidUtilities.statusBarHeight * (1.0f - this.hideSystemVerticalInsetsProgress)) + r1.getMeasuredHeight() + (this.scrollNavBar ? Math.max(0, Math.min(AndroidUtilities.navigationBarHeight, getBottomInset())) : 0));
            onContainerViewTranslation();
            long j = this.openNoDelay ? 0L : 150L;
            if (this.waitingKeyboard) {
                j = 500;
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet.5
                @Override // java.lang.Runnable
                public void run() {
                    BottomSheet bottomSheet = BottomSheet.this;
                    if (bottomSheet.startAnimationRunnable != this || bottomSheet.dismissed) {
                        return;
                    }
                    BottomSheet bottomSheet2 = BottomSheet.this;
                    bottomSheet2.startAnimationRunnable = null;
                    bottomSheet2.startOpenAnimation();
                }
            };
            this.startAnimationRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, j);
        }
    }

    public ColorDrawable getBackDrawable() {
        return this.backDrawable;
    }

    public int getBackgroundPaddingTop() {
        return this.backgroundPaddingTop;
    }

    public void setAllowDrawContent(boolean z) {
        if (this.allowDrawContent != z) {
            this.allowDrawContent = z;
            this.container.setBackgroundDrawable(z ? this.backDrawable : null);
            this.container.invalidate();
        }
    }

    protected boolean canDismissWithSwipe() {
        return this.canDismissWithSwipe;
    }

    public void setCanDismissWithSwipe(boolean z) {
        this.canDismissWithSwipe = z;
    }

    public void setCustomView(View view) {
        this.customView = view;
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, false);
    }

    public void setTitle(CharSequence charSequence, boolean z) {
        this.title = charSequence;
        this.bigTitle = z;
    }

    public void setApplyTopPadding(boolean z) {
        this.applyTopPadding = z;
    }

    public void setApplyBottomPadding(boolean z) {
        this.applyBottomPadding = z;
    }

    protected void onDismissWithTouchOutside() {
        dismiss();
    }

    protected boolean canDismissWithTouchOutside() {
        return this.canDismissWithTouchOutside;
    }

    protected boolean isTouchOutside(float f, float f2) {
        FrameLayout frameLayout = this.topBulletinContainer;
        if (frameLayout != null) {
            float x = frameLayout.getX();
            float y = this.topBulletinContainer.getY();
            float width = this.topBulletinContainer.getWidth() + x;
            float height = this.topBulletinContainer.getHeight() + y;
            if (f >= x && f <= width && f2 >= y && f2 <= height) {
                return false;
            }
        }
        return f2 < ((float) this.containerView.getTop()) || f < ((float) this.containerView.getLeft()) || f > ((float) this.containerView.getRight());
    }

    public void setCanDismissWithTouchOutside(boolean z) {
        this.canDismissWithTouchOutside = z;
    }

    public TextView getTitleView() {
        return this.titleView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onContainerTranslationYChanged(float f) {
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    protected void cancelSheetAnimation() {
        AnimatorSet animatorSet = this.currentSheetAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.currentSheetAnimation = null;
        }
        this.currentSheetAnimationType = 0;
    }

    public void setOnHideListener(DialogInterface.OnDismissListener onDismissListener) {
        this.onHideListener = onDismissListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOpenAnimation() {
        if (this.dismissed) {
            return;
        }
        this.containerView.setVisibility(0);
        if (onCustomOpenAnimation()) {
            return;
        }
        if (this.useHardwareLayer) {
            this.container.setLayerType(2, null);
        }
        if (this.transitionFromRight) {
            this.containerView.setTranslationX(AndroidUtilities.m1124dp(48.0f));
            this.containerView.setAlpha(0.0f);
            this.containerView.setTranslationY(0.0f);
        } else {
            this.containerView.setTranslationY(getContainerViewHeight() + this.keyboardHeight + AndroidUtilities.m1124dp(10.0f) + Math.max(0, Math.min(AndroidUtilities.navigationBarHeight, getBottomInset())));
        }
        onContainerViewTranslation();
        this.currentSheetAnimationType = 1;
        ValueAnimator valueAnimator = this.navigationBarAnimation;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.navigationBarAlpha, 1.0f);
        this.navigationBarAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda14
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startOpenAnimation$5(valueAnimator2);
            }
        });
        this.currentSheetAnimation = new AnimatorSet();
        ArrayList<Animator> arrayList = new ArrayList<>();
        arrayList.add(ObjectAnimator.ofFloat(this.containerView, (Property<ViewGroup, Float>) View.TRANSLATION_X, 0.0f));
        arrayList.add(ObjectAnimator.ofFloat(this.containerView, (Property<ViewGroup, Float>) View.ALPHA, 1.0f));
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.containerView, (Property<ViewGroup, Float>) View.TRANSLATION_Y, 0.0f);
        objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda15
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$startOpenAnimation$6(valueAnimator2);
            }
        });
        arrayList.add(objectAnimatorOfFloat);
        arrayList.add(ObjectAnimator.ofInt(this.backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, this.dimBehind ? this.dimBehindAlpha : 0));
        arrayList.add(this.navigationBarAnimation);
        appendOpenAnimator(true, arrayList);
        this.currentSheetAnimation.playTogether(arrayList);
        if (this.transitionFromRight) {
            this.currentSheetAnimation.setDuration(250L);
            this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
        } else {
            this.currentSheetAnimation.setDuration(400L);
            this.currentSheetAnimation.setInterpolator(this.openInterpolator);
        }
        this.currentSheetAnimation.setStartDelay(this.waitingKeyboard ? 0L : 20L);
        this.currentSheetAnimation.setInterpolator(this.openInterpolator);
        this.notificationsLocker.lock();
        this.currentSheetAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
                if (animatorSet != null && animatorSet.equals(animator)) {
                    BottomSheet bottomSheet = BottomSheet.this;
                    bottomSheet.currentSheetAnimation = null;
                    bottomSheet.currentSheetAnimationType = 0;
                    bottomSheet.onOpenAnimationEnd();
                    BottomSheetDelegateInterface bottomSheetDelegateInterface = BottomSheet.this.delegate;
                    if (bottomSheetDelegateInterface != null) {
                        bottomSheetDelegateInterface.onOpenAnimationEnd();
                    }
                    BottomSheet bottomSheet2 = BottomSheet.this;
                    if (bottomSheet2.useHardwareLayer) {
                        bottomSheet2.container.setLayerType(0, null);
                    }
                    BottomSheet bottomSheet3 = BottomSheet.this;
                    if (bottomSheet3.isFullscreen) {
                        WindowManager.LayoutParams attributes = bottomSheet3.getWindow().getAttributes();
                        attributes.flags &= -1025;
                        BottomSheet.this.getWindow().setAttributes(attributes);
                    }
                }
                if (BottomSheet.this.pauseAllHeavyOperations) {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
                }
                BottomSheet.this.notificationsLocker.unlock();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
                if (animatorSet == null || !animatorSet.equals(animator)) {
                    return;
                }
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
            }
        });
        if (this.pauseAllHeavyOperations) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        }
        this.currentSheetAnimation.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOpenAnimation$5(ValueAnimator valueAnimator) {
        this.navigationBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOpenAnimation$6(ValueAnimator valueAnimator) {
        onContainerViewTranslation();
    }

    public void setDelegate(BottomSheetDelegateInterface bottomSheetDelegateInterface) {
        this.delegate = bottomSheetDelegateInterface;
    }

    public ContainerView getContainer() {
        return this.container;
    }

    public ViewGroup getSheetContainer() {
        return this.containerView;
    }

    public int getTag() {
        return this.tag;
    }

    public void setDimBehind(boolean z) {
        this.dimBehind = z;
    }

    public void setDimBehindAlpha(int i) {
        this.dimBehindAlpha = i;
    }

    public void setItemText(int i, CharSequence charSequence) {
        if (i < 0 || i >= this.itemViews.size()) {
            return;
        }
        this.itemViews.get(i).textView.setText(charSequence);
    }

    public void setItemColor(int i, int i2, int i3) {
        if (i < 0 || i >= this.itemViews.size()) {
            return;
        }
        BottomSheetCell bottomSheetCell = this.itemViews.get(i);
        bottomSheetCell.textView.setTextColor(i2);
        bottomSheetCell.imageView.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.MULTIPLY));
    }

    public ArrayList<BottomSheetCell> getItemViews() {
        return this.itemViews;
    }

    public void setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
        this.items = charSequenceArr;
        this.itemIcons = iArr;
        this.onClickListener = onClickListener;
    }

    public void setTitleColor(int i) {
        TextView textView = this.titleView;
        if (textView == null) {
            return;
        }
        textView.setTextColor(i);
    }

    public boolean isDismissed() {
        return this.dismissed;
    }

    public void dismissWithButtonClick(final int i) {
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        cancelSheetAnimation();
        this.currentSheetAnimationType = 2;
        this.currentSheetAnimation = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.containerView, (Property<ViewGroup, Float>) View.TRANSLATION_Y, getContainerViewHeight() + this.keyboardHeight + AndroidUtilities.m1124dp(10.0f) + Math.max(0, Math.min(AndroidUtilities.navigationBarHeight, getBottomInset())));
        objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$dismissWithButtonClick$7(valueAnimator);
            }
        });
        this.currentSheetAnimation.playTogether(objectAnimatorOfFloat, ObjectAnimator.ofInt(this.backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, 0));
        this.currentSheetAnimation.setDuration(this.cellType == Builder.CELL_TYPE_CALL ? 330L : 180L);
        this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
        this.currentSheetAnimation.addListener(new C30597(i));
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
        this.currentSheetAnimation.start();
        if (this.cellType != Builder.CELL_TYPE_CALL || this.selectedPos == null) {
            return;
        }
        int currentTextColor = getItemViews().get(this.selectedPos.intValue()).getTextView().getCurrentTextColor();
        int currentTextColor2 = getItemViews().get(i).getTextView().getCurrentTextColor();
        ValueAnimator valueAnimatorOfArgb = ValueAnimator.ofArgb(currentTextColor, currentTextColor2);
        valueAnimatorOfArgb.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$dismissWithButtonClick$8(valueAnimator);
            }
        });
        valueAnimatorOfArgb.setDuration(130L);
        CubicBezierInterpolator cubicBezierInterpolator = CubicBezierInterpolator.DEFAULT;
        valueAnimatorOfArgb.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfArgb.start();
        ValueAnimator valueAnimatorOfArgb2 = ValueAnimator.ofArgb(currentTextColor2, currentTextColor);
        valueAnimatorOfArgb2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$dismissWithButtonClick$9(i, valueAnimator);
            }
        });
        valueAnimatorOfArgb2.setDuration(130L);
        valueAnimatorOfArgb2.setInterpolator(cubicBezierInterpolator);
        valueAnimatorOfArgb2.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissWithButtonClick$7(ValueAnimator valueAnimator) {
        onContainerViewTranslation();
    }

    /* JADX INFO: renamed from: org.telegram.ui.ActionBar.BottomSheet$7 */
    /* JADX INFO: loaded from: classes6.dex */
    class C30597 extends AnimatorListenerAdapter {
        final /* synthetic */ int val$item;

        C30597(int i) {
            this.val$item = i;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet != null && animatorSet.equals(animator)) {
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
                if (bottomSheet.onClickListener != null) {
                    BottomSheet.this.onClickListener.onClick(BottomSheet.this, this.val$item);
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$7$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAnimationEnd$0();
                    }
                });
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            if (BottomSheet.this.onHideListener != null) {
                BottomSheet.this.onHideListener.onDismiss(BottomSheet.this);
            }
            try {
                BottomSheet.this.dismissInternal();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet == null || !animatorSet.equals(animator)) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.currentSheetAnimation = null;
            bottomSheet.currentSheetAnimationType = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissWithButtonClick$8(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        setItemColor(this.selectedPos.intValue(), iIntValue, iIntValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismissWithButtonClick$9(int i, ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        setItemColor(i, iIntValue, iIntValue);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.dismissed) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public int getContainerViewHeight() {
        ViewGroup viewGroup = this.containerView;
        if (viewGroup == null) {
            return 0;
        }
        return viewGroup.getMeasuredHeight();
    }

    public void forceKeyboardOnDismiss() {
        this.forceKeyboardOnDismiss = true;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /* JADX INFO: renamed from: getWindowView */
    public View mo6088getWindowView() {
        return this.container;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean isShown() {
        return !this.dismissed;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x015c  */
    @Override // android.app.Dialog, android.content.DialogInterface, org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dismiss() {
        long j;
        Bulletin visibleBulletin;
        BottomSheetDelegateInterface bottomSheetDelegateInterface = this.delegate;
        if ((bottomSheetDelegateInterface == null || bottomSheetDelegateInterface.canDismiss()) && !this.dismissed) {
            this.dismissed = true;
            DialogInterface.OnDismissListener onDismissListener = this.onHideListener;
            if (onDismissListener != null) {
                onDismissListener.onDismiss(this);
            }
            cancelSheetAnimation();
            onDismissAnimationStart();
            if (this.skipDismissAnimation) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$dismiss$10();
                    }
                });
            } else {
                if (!this.allowCustomAnimation || !onCustomCloseAnimation()) {
                    AndroidUtilities.hideKeyboard(this.container);
                    this.currentSheetAnimationType = 2;
                    ValueAnimator valueAnimator = this.navigationBarAnimation;
                    if (valueAnimator != null) {
                        valueAnimator.cancel();
                    }
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.navigationBarAlpha, 0.0f);
                    this.navigationBarAnimation = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda8
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                            this.f$0.lambda$dismiss$11(valueAnimator2);
                        }
                    });
                    this.currentSheetAnimation = new AnimatorSet();
                    ArrayList<Animator> arrayList = new ArrayList<>();
                    ViewGroup viewGroup = this.containerView;
                    if (viewGroup != null) {
                        if (this.transitionFromRight) {
                            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(viewGroup, (Property<ViewGroup, Float>) View.TRANSLATION_X, AndroidUtilities.m1124dp(48.0f));
                            objectAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda9
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    this.f$0.lambda$dismiss$12(valueAnimator2);
                                }
                            });
                            arrayList.add(objectAnimatorOfFloat);
                            arrayList.add(ObjectAnimator.ofFloat(this.containerView, (Property<ViewGroup, Float>) View.ALPHA, 0.0f));
                        } else {
                            ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(viewGroup, (Property<ViewGroup, Float>) View.TRANSLATION_Y, getContainerViewHeight() + (this.forceKeyboardOnDismiss ? this.lastKeyboardHeight : this.keyboardHeight) + AndroidUtilities.m1124dp(10.0f) + Math.max(0, Math.min(AndroidUtilities.navigationBarHeight, getBottomInset())));
                            objectAnimatorOfFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda10
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    this.f$0.lambda$dismiss$13(valueAnimator2);
                                }
                            });
                            arrayList.add(objectAnimatorOfFloat2);
                        }
                    }
                    arrayList.add(ObjectAnimator.ofInt(this.backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, 0));
                    arrayList.add(this.navigationBarAnimation);
                    appendOpenAnimator(false, arrayList);
                    this.currentSheetAnimation.playTogether(arrayList);
                    if (this.transitionFromRight) {
                        this.currentSheetAnimation.setDuration(200L);
                        this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
                        j = 0;
                    } else {
                        j = 250;
                        this.currentSheetAnimation.setDuration(250L);
                        this.currentSheetAnimation.setInterpolator(CubicBezierInterpolator.EASE_OUT);
                    }
                    this.currentSheetAnimation.addListener(new C30608());
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 512);
                    this.currentSheetAnimation.start();
                }
                visibleBulletin = Bulletin.getVisibleBulletin();
                if (visibleBulletin != null && visibleBulletin.isShowing() && visibleBulletin.hideAfterBottomSheet) {
                    if (j <= 0) {
                        visibleBulletin.hide((long) (j * 0.6f));
                    } else {
                        visibleBulletin.hide();
                    }
                }
                setShowing(false);
            }
            j = 0;
            visibleBulletin = Bulletin.getVisibleBulletin();
            if (visibleBulletin != null) {
                if (j <= 0) {
                }
            }
            setShowing(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$10() {
        try {
            dismissInternal();
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$11(ValueAnimator valueAnimator) {
        this.navigationBarAlpha = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$12(ValueAnimator valueAnimator) {
        onContainerViewTranslation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$13(ValueAnimator valueAnimator) {
        onContainerViewTranslation();
    }

    /* JADX INFO: renamed from: org.telegram.ui.ActionBar.BottomSheet$8 */
    /* JADX INFO: loaded from: classes6.dex */
    class C30608 extends AnimatorListenerAdapter {
        C30608() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet != null && animatorSet.equals(animator)) {
                BottomSheet bottomSheet = BottomSheet.this;
                bottomSheet.currentSheetAnimation = null;
                bottomSheet.currentSheetAnimationType = 0;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$8$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onAnimationEnd$0();
                    }
                });
            }
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 512);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAnimationEnd$0() {
            try {
                BottomSheet.this.dismissInternal();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            AnimatorSet animatorSet = BottomSheet.this.currentSheetAnimation;
            if (animatorSet == null || !animatorSet.equals(animator)) {
                return;
            }
            BottomSheet bottomSheet = BottomSheet.this;
            bottomSheet.currentSheetAnimation = null;
            bottomSheet.currentSheetAnimationType = 0;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void dismiss(boolean z) {
        dismiss();
    }

    public void release() {
        dismissInternal();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean attachedToParent() {
        ContainerView containerView = this.container;
        return containerView != null && containerView.isAttachedToWindow();
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public int getNavigationBarColor(int i) {
        float fClamp01;
        ViewGroup viewGroup;
        if (!attachedToParent() || (viewGroup = this.containerView) == null) {
            fClamp01 = 0.0f;
        } else if (this.transitionFromRight) {
            fClamp01 = viewGroup.getAlpha();
        } else {
            fClamp01 = Utilities.clamp01(1.0f - (this.containerView.getTranslationY() / (((getContainerViewHeight() + this.keyboardHeight) + AndroidUtilities.m1124dp(10.0f)) + (this.scrollNavBar ? Math.max(0, Math.min(AndroidUtilities.navigationBarHeight, getBottomInset())) : 0))));
        }
        return ColorUtils.blendARGB(i, this.navBarColor, fClamp01);
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public void setOnDismissListener(final Runnable runnable) {
        if (runnable != null) {
            setOnHideListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnDismissListener
                public final void onDismiss(DialogInterface dialogInterface) {
                    runnable.run();
                }
            });
        }
    }

    @Override // android.app.Dialog
    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        super.setOnDismissListener(onDismissListener);
    }

    public int getSheetAnimationType() {
        return this.currentSheetAnimationType;
    }

    public void dismissInternal() {
        BaseFragment baseFragment = this.attachedFragment;
        if (baseFragment != null) {
            baseFragment.removeSheet(this);
            AndroidUtilities.removeFromParent(this.container);
        } else {
            try {
                super.dismiss();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
    }

    /* JADX INFO: loaded from: classes6.dex */
    public static class Builder {
        public static int CELL_TYPE_CALL = 4;
        private BottomSheet bottomSheet;

        public Builder(Context context) {
            this(context, false);
        }

        public Builder(Context context, boolean z) {
            this(context, z, null);
        }

        public Builder(Context context, boolean z, Theme.ResourcesProvider resourcesProvider) {
            BottomSheet bottomSheet = new BottomSheet(context, z, resourcesProvider);
            this.bottomSheet = bottomSheet;
            bottomSheet.fixNavigationBar();
        }

        public Builder(Context context, boolean z, Theme.ResourcesProvider resourcesProvider, int i) {
            BottomSheet bottomSheet = new BottomSheet(context, z, resourcesProvider);
            this.bottomSheet = bottomSheet;
            bottomSheet.setBackgroundColor(i);
            this.bottomSheet.fixNavigationBar(i);
        }

        public Builder setItems(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.bottomSheet.items = charSequenceArr;
            this.bottomSheet.onClickListener = onClickListener;
            return this;
        }

        public Builder setItems(CharSequence[] charSequenceArr, int[] iArr, DialogInterface.OnClickListener onClickListener) {
            this.bottomSheet.items = charSequenceArr;
            this.bottomSheet.itemIcons = iArr;
            this.bottomSheet.onClickListener = onClickListener;
            return this;
        }

        public Builder setCustomView(View view) {
            this.bottomSheet.customView = view;
            return this;
        }

        public Builder setCustomView(View view, int i) {
            this.bottomSheet.customView = view;
            this.bottomSheet.customViewGravity = i;
            return this;
        }

        public Builder setTitle(CharSequence charSequence) {
            return setTitle(charSequence, false);
        }

        public Builder setTitle(CharSequence charSequence, boolean z) {
            this.bottomSheet.title = charSequence;
            this.bottomSheet.bigTitle = z;
            return this;
        }

        public Builder selectedPos(Integer num) {
            this.bottomSheet.selectedPos = num;
            return this;
        }

        public Builder setCellType(int i) {
            this.bottomSheet.cellType = i;
            return this;
        }

        public Builder setTitleMultipleLines(boolean z) {
            this.bottomSheet.multipleLinesTitle = z;
            return this;
        }

        public BottomSheet create() {
            return this.bottomSheet;
        }

        public BottomSheet setDimBehind(boolean z) {
            BottomSheet bottomSheet = this.bottomSheet;
            bottomSheet.dimBehind = z;
            return bottomSheet;
        }

        public BottomSheet show() {
            this.bottomSheet.show();
            if (!ExteraConfig.inAppVibration) {
                VibratorUtils.disableHapticFeedback(this.bottomSheet.containerView);
                VibratorUtils.disableHapticFeedback(this.bottomSheet.customView);
                VibratorUtils.disableHapticFeedback(this.bottomSheet.container);
            }
            return this.bottomSheet;
        }

        public Builder setDelegate(BottomSheetDelegate bottomSheetDelegate) {
            this.bottomSheet.setDelegate(bottomSheetDelegate);
            return this;
        }

        public Builder setApplyTopPadding(boolean z) {
            this.bottomSheet.applyTopPadding = z;
            return this;
        }

        public Builder setApplyBottomPadding(boolean z) {
            this.bottomSheet.applyBottomPadding = z;
            return this;
        }

        public Runnable getDismissRunnable() {
            return this.bottomSheet.dismissRunnable;
        }

        public Builder setOnPreDismissListener(DialogInterface.OnDismissListener onDismissListener) {
            this.bottomSheet.setOnHideListener(onDismissListener);
            return this;
        }
    }

    public int getLeftInset() {
        if (this.lastInsets != null) {
            return (int) (r0.getSystemWindowInsetLeft() * (1.0f - this.hideSystemVerticalInsetsProgress));
        }
        return 0;
    }

    public int getRightInset() {
        if (this.lastInsets != null) {
            return (int) (r0.getSystemWindowInsetRight() * (1.0f - this.hideSystemVerticalInsetsProgress));
        }
        return 0;
    }

    public int getStatusBarHeight() {
        return (int) (this.statusBarHeight * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public int getBottomInset() {
        return (int) (this.bottomInset * (1.0f - this.hideSystemVerticalInsetsProgress));
    }

    public void setCurrentPanTranslationY(float f) {
        this.currentPanTranslationY = f;
        this.container.invalidate();
    }

    public void setOverlayNavBarColor(int i) {
        this.overlayDrawNavBarColor = i;
        ContainerView containerView = this.container;
        if (containerView != null) {
            containerView.invalidate();
        }
        if (this.attachedFragment != null) {
            LaunchActivity.instance.checkSystemBarColors(true, true, true);
            AndroidUtilities.setLightNavigationBar(mo6088getWindowView(), AndroidUtilities.computePerceivedBrightness(getNavigationBarColor(getThemedColor(Theme.key_windowBackgroundGray))) >= 0.721f);
        } else {
            AndroidUtilities.setNavigationBarColor(this, this.overlayDrawNavBarColor);
            AndroidUtilities.setLightNavigationBar(this, ((double) AndroidUtilities.computePerceivedBrightness(this.overlayDrawNavBarColor)) > 0.721d);
        }
    }

    public ViewGroup getContainerView() {
        return this.containerView;
    }

    public int getCurrentAccount() {
        return this.currentAccount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getThemedColor(int i) {
        return Theme.getColor(i, this.resourcesProvider);
    }

    public void setOpenNoDelay(boolean z) {
        this.openNoDelay = z;
    }

    public int getBackgroundPaddingLeft() {
        return this.backgroundPaddingLeft;
    }

    private void setShowing(boolean z) {
        if (this.showing == z) {
            return;
        }
        this.showing = z;
        if (this.openedLayerNum > 0) {
            if (z) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, Integer.valueOf(this.openedLayerNum));
            } else {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, Integer.valueOf(this.openedLayerNum));
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public void setImageReceiverNumLevel(int i, int i2) {
        this.playingImagesLayerNum = i;
        this.openedLayerNum = i2;
    }

    public void smoothContainerViewLayout() {
        this.smoothContainerViewLayoutUntil = System.currentTimeMillis() + 80;
    }

    public void makeAttached(BaseFragment baseFragment) {
        if (AndroidUtilities.isTablet()) {
            return;
        }
        if (baseFragment == null || !baseFragment.isSupportEdgeToEdge()) {
            this.attachedFragment = baseFragment;
        }
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public boolean onAttachedBackPressed() {
        lambda$openCrafting$8();
        return true;
    }

    @Override // android.app.Dialog
    /* JADX INFO: renamed from: onBackPressed */
    public void lambda$openCrafting$8() {
        if (this.attachedFragment == null) {
            super.onBackPressed();
        } else {
            dismiss();
        }
    }

    public Theme.ResourcesProvider getResourcesProvider() {
        return this.resourcesProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBackCallbackState() {
        OnBackAnimationCallback onBackAnimationCallback;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.onBackInvokedDispatcher;
        if (onBackInvokedDispatcher == null || (onBackAnimationCallback = this.backAnimationCallback) == null) {
            return;
        }
        boolean z = this.keyboardVisible;
        if (z && this.isBackCallbackRegistered) {
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackAnimationCallback);
            this.isBackCallbackRegistered = false;
        } else {
            if (z || this.isBackCallbackRegistered) {
                return;
            }
            onBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, onBackAnimationCallback);
            this.isBackCallbackRegistered = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void registerBackCallback() {
        if (this.backAnimationCallback == null && ExteraConfig.predictiveBackAnimation) {
            ContainerView containerView = this.container;
            if (containerView != null && containerView.isAttachedToWindow()) {
                this.onBackInvokedDispatcher = this.container.findOnBackInvokedDispatcher();
            }
            if (this.onBackInvokedDispatcher == null && getWindow() != null) {
                this.onBackInvokedDispatcher = getWindow().getOnBackInvokedDispatcher();
            }
            if (this.onBackInvokedDispatcher == null && (getContext() instanceof Activity)) {
                this.onBackInvokedDispatcher = ((Activity) getContext()).getOnBackInvokedDispatcher();
            }
            if (this.onBackInvokedDispatcher == null) {
                ContainerView containerView2 = this.container;
                if (containerView2 != null) {
                    containerView2.post(new Runnable() { // from class: org.telegram.ui.ActionBar.BottomSheet$$ExternalSyntheticLambda16
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.registerBackCallback();
                        }
                    });
                    return;
                }
                return;
            }
            OnBackAnimationCallback onBackAnimationCallback = new OnBackAnimationCallback() { // from class: org.telegram.ui.ActionBar.BottomSheet.9
                public void onBackStarted(BackEvent backEvent) {
                    BottomSheet.this.predictiveBackAnimationInProgress = true;
                    ContainerView containerView3 = BottomSheet.this.container;
                    if (containerView3 != null) {
                        containerView3.resetTouch();
                    }
                }

                public void onBackProgressed(BackEvent backEvent) {
                    if (BottomSheet.this.dismissed || BottomSheet.this.container == null) {
                        return;
                    }
                    float progress = backEvent.getProgress();
                    BottomSheet.this.containerView.setTranslationY(BottomSheet.this.containerView.getMeasuredHeight() * 0.15f * progress);
                    ColorDrawable colorDrawable = BottomSheet.this.backDrawable;
                    if (colorDrawable != null) {
                        colorDrawable.setAlpha((int) (r0.dimBehindAlpha * (1.0f - progress)));
                    }
                }

                public void onBackInvoked() {
                    BottomSheetDelegateInterface bottomSheetDelegateInterface = BottomSheet.this.delegate;
                    if (bottomSheetDelegateInterface != null && !bottomSheetDelegateInterface.canDismiss()) {
                        onBackCancelled();
                        return;
                    }
                    BottomSheet.this.predictiveBackAnimationInProgress = false;
                    ContainerView containerView3 = BottomSheet.this.container;
                    if (containerView3 != null) {
                        containerView3.resetTouch();
                    }
                    BottomSheet.this.dismiss();
                }

                public void onBackCancelled() {
                    BottomSheet.this.predictiveBackAnimationInProgress = false;
                    ContainerView containerView3 = BottomSheet.this.container;
                    if (containerView3 == null) {
                        return;
                    }
                    containerView3.resetTouch();
                    BottomSheet.this.container.cancelCurrentAnimation();
                    BottomSheet.this.container.currentAnimation = new AnimatorSet();
                    BottomSheet.this.container.currentAnimation.playTogether(ObjectAnimator.ofFloat(BottomSheet.this.containerView, (Property<ViewGroup, Float>) View.TRANSLATION_Y, 0.0f));
                    BottomSheet bottomSheet = BottomSheet.this;
                    if (bottomSheet.backDrawable != null) {
                        AnimatorSet animatorSet = bottomSheet.container.currentAnimation;
                        BottomSheet bottomSheet2 = BottomSheet.this;
                        animatorSet.playTogether(ObjectAnimator.ofInt(bottomSheet2.backDrawable, (Property<ColorDrawable, Integer>) AnimationProperties.COLOR_DRAWABLE_ALPHA, bottomSheet2.dimBehind ? bottomSheet2.dimBehindAlpha : 0));
                    }
                    BottomSheet.this.container.currentAnimation.setDuration(250L);
                    BottomSheet.this.container.currentAnimation.setInterpolator(CubicBezierInterpolator.DEFAULT);
                    BottomSheet.this.container.currentAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ActionBar.BottomSheet.9.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            if (BottomSheet.this.container.currentAnimation == null || !BottomSheet.this.container.currentAnimation.equals(animator)) {
                                return;
                            }
                            BottomSheet.this.container.currentAnimation = null;
                        }
                    });
                    BottomSheet.this.container.currentAnimation.start();
                }
            };
            this.backAnimationCallback = onBackAnimationCallback;
            if (this.keyboardVisible) {
                return;
            }
            this.onBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, onBackAnimationCallback);
            this.isBackCallbackRegistered = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void unregisterBackCallback() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackAnimationCallback onBackAnimationCallback;
        if (this.isBackCallbackRegistered && (onBackInvokedDispatcher = this.onBackInvokedDispatcher) != null && (onBackAnimationCallback = this.backAnimationCallback) != null) {
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(onBackAnimationCallback);
        }
        this.isBackCallbackRegistered = false;
        this.backAnimationCallback = null;
        this.onBackInvokedDispatcher = null;
    }

    @Override // org.telegram.ui.ActionBar.BaseFragment.AttachedSheet
    public BulletinFactory getBulletinFactory() {
        return BulletinFactory.m1245of(this.topBulletinContainer, this.resourcesProvider);
    }
}
