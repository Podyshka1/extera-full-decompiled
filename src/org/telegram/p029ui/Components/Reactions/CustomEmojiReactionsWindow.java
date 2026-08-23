package org.telegram.p029ui.Components.Reactions;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.WindowManager;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.AnimationNotificationsLocker;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ActionBar.Theme;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.AnimatedEmojiDrawable;
import org.telegram.p029ui.Components.Bulletin;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.CubicBezierInterpolator;
import org.telegram.p029ui.Components.EmojiTabsStrip;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.Premium.PremiumLockIconView;
import org.telegram.p029ui.Components.Reactions.ReactionsLayoutInBubble;
import org.telegram.p029ui.Components.ReactionsContainerLayout;
import org.telegram.p029ui.Components.StableAnimator;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.SelectAnimatedEmojiDialog;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.p028tl.TL_stars;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes7.dex */
public class CustomEmojiReactionsWindow {
    private int account;
    boolean attachToParent;
    BaseFragment baseFragment;
    private boolean cascadeAnimation;
    public ContainerView containerView;
    private float dismissProgress;
    private boolean dismissed;
    boolean enterTransitionFinished;
    float enterTransitionProgress;
    float fromRadius;
    float fromRectTranslateX;
    float fromRectTranslateY;
    private boolean invalidatePath;
    boolean isShowing;
    float keyboardHeight;
    private Runnable onDismiss;
    List reactions;
    ReactionsContainerLayout reactionsContainerLayout;
    Theme.ResourcesProvider resourcesProvider;
    SelectAnimatedEmojiDialog selectAnimatedEmojiDialog;
    public boolean transition;
    private final int type;
    private ValueAnimator valueAnimator;
    private boolean wasFocused;
    WindowManager windowManager;
    public FrameLayout windowView;
    float yTranslation;
    RectF fromRect = new RectF();
    public RectF drawingRect = new RectF();
    private final Path pathToClipApi20 = new Path();
    int[] location = new int[2];
    final AnimationNotificationsLocker notificationsLocker = new AnimationNotificationsLocker();
    HashSet animatingEnterChild = new HashSet();
    ArrayList animators = new ArrayList();
    private int frameDrawCount = 0;

    public CustomEmojiReactionsWindow(int i, BaseFragment baseFragment, List list, HashSet hashSet, final ReactionsContainerLayout reactionsContainerLayout, Theme.ResourcesProvider resourcesProvider, boolean z) {
        this.type = i;
        this.reactions = list;
        this.baseFragment = baseFragment;
        this.resourcesProvider = resourcesProvider;
        Context context = baseFragment != null ? baseFragment.getContext() : reactionsContainerLayout.getContext();
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.1
            Bulletin.Delegate bulletinDelegate = new Bulletin.Delegate() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.1.1
                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean allowLayoutChanges() {
                    return Bulletin.Delegate.CC.$default$allowLayoutChanges(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean bottomOffsetAnimated() {
                    return Bulletin.Delegate.CC.$default$bottomOffsetAnimated(this);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ boolean clipWithGradient(int i2) {
                    return Bulletin.Delegate.CC.$default$clipWithGradient(this, i2);
                }

                @Override // org.telegram.ui.Components.Bulletin.Delegate
                public /* synthetic */ int getTopOffset(int i2) {
                    return Bulletin.Delegate.CC.$default$getTopOffset(this, i2);
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
                public int getBottomOffset(int i2) {
                    return (int) CustomEmojiReactionsWindow.this.keyboardHeight;
                }
            };

            @Override // android.view.ViewGroup, android.view.View
            protected void dispatchSetPressed(boolean z2) {
            }

            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchKeyEvent(KeyEvent keyEvent) {
                if (keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 4) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                    if (customEmojiReactionsWindow.enterTransitionFinished) {
                        customEmojiReactionsWindow.dismiss();
                    }
                    return true;
                }
                return super.dispatchKeyEvent(keyEvent);
            }

            @Override // android.view.View
            protected boolean fitSystemWindows(Rect rect) {
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                if (customEmojiReactionsWindow.keyboardHeight != rect.bottom && customEmojiReactionsWindow.wasFocused) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow2.keyboardHeight = rect.bottom;
                    customEmojiReactionsWindow2.updateWindowPosition();
                }
                return super.fitSystemWindows(rect);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                Bulletin.addDelegate(this, this.bulletinDelegate);
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                Bulletin.removeDelegate(this);
            }

            @Override // android.view.View
            public void setAlpha(float f) {
                super.setAlpha(f);
            }
        };
        this.windowView = frameLayout;
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$new$0(view);
            }
        });
        this.attachToParent = i == 2 || i == 4 || i == 5 || z;
        this.containerView = new ContainerView(context);
        C48912 c48912 = new C48912(baseFragment, context, false, null, reactionsContainerLayout.getWindowType(), i != 1, resourcesProvider, 16, reactionsContainerLayout, baseFragment);
        this.selectAnimatedEmojiDialog = c48912;
        c48912.setOutlineProvider(new ViewOutlineProvider() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.3
            final Rect rect = new Rect();
            final RectF rectTmp = new RectF();
            final RectF rectF = new RectF();

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                float fLerp = AndroidUtilities.lerp(CustomEmojiReactionsWindow.this.fromRadius, AndroidUtilities.m1124dp(8.0f), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                this.rectTmp.set(0.0f, 0.0f, view.getMeasuredWidth(), view.getMeasuredHeight());
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                AndroidUtilities.lerp(customEmojiReactionsWindow.fromRect, this.rectTmp, customEmojiReactionsWindow.enterTransitionProgress, this.rectF);
                this.rectF.round(this.rect);
                outline.setRoundRect(this.rect, fLerp);
            }
        });
        this.selectAnimatedEmojiDialog.setClipToOutline(true);
        this.selectAnimatedEmojiDialog.setPaused(reactionsContainerLayout.paused, reactionsContainerLayout.pausedExceptSelected);
        this.selectAnimatedEmojiDialog.setOnLongPressedListener(new SelectAnimatedEmojiDialog.onLongPressedListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.4
            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.onLongPressedListener
            public void onLongPressed(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji) {
                if (imageViewEmoji.isDefaultReaction) {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, imageViewEmoji.reaction, true);
                } else {
                    reactionsContainerLayout.onReactionClicked(imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(Long.valueOf(imageViewEmoji.span.documentId)), true);
                }
            }
        });
        this.selectAnimatedEmojiDialog.setOnRecentClearedListener(new SelectAnimatedEmojiDialog.onRecentClearedListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.5
            @Override // org.telegram.ui.SelectAnimatedEmojiDialog.onRecentClearedListener
            public void onRecentCleared() {
                reactionsContainerLayout.clearRecentReactions();
            }
        });
        this.selectAnimatedEmojiDialog.setRecentReactions(list);
        this.selectAnimatedEmojiDialog.setSelectedReactions((HashSet<ReactionsLayoutInBubble.VisibleReaction>) hashSet);
        this.selectAnimatedEmojiDialog.setDrawBackground(false);
        this.selectAnimatedEmojiDialog.onShow(null);
        this.containerView.addView(this.selectAnimatedEmojiDialog, LayoutHelper.createFrame(-1, -2.0f, 0, 0.0f, 0.0f, 0.0f, 0.0f));
        int i2 = i == 5 ? 2 : 16;
        if (i == 5) {
            this.containerView.setClipChildren(false);
            this.containerView.setClipToPadding(false);
            this.windowView.setClipChildren(false);
            this.windowView.setClipToPadding(false);
        }
        float f = i2;
        this.windowView.addView(this.containerView, LayoutHelper.createFrame(-1, -1.0f, i == 5 ? 85 : 48, f, f, f, 16.0f));
        this.windowView.setClipChildren(false);
        if (i == 1 || (reactionsContainerLayout.getDelegate() != null && reactionsContainerLayout.getDelegate().drawBackground())) {
            this.selectAnimatedEmojiDialog.setBackgroundDelegate(new SelectAnimatedEmojiDialog.BackgroundDelegate() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda1
                @Override // org.telegram.ui.SelectAnimatedEmojiDialog.BackgroundDelegate
                public final void drawRect(Canvas canvas, int i3, int i4, int i5, int i6, float f2, float f3) {
                    this.f$0.lambda$new$1(reactionsContainerLayout, canvas, i3, i4, i5, i6, f2, f3);
                }
            });
        }
        if (this.attachToParent) {
            ((ViewGroup) reactionsContainerLayout.getParent()).addView(this.windowView);
        } else {
            WindowManager.LayoutParams layoutParamsCreateLayoutParams = createLayoutParams(false);
            WindowManager windowManager = AndroidUtilities.findActivity(context).getWindowManager();
            this.windowManager = windowManager;
            AndroidUtilities.setPreferredMaxRefreshRate(windowManager, this.windowView, layoutParamsCreateLayoutParams);
            this.windowManager.addView(this.windowView, layoutParamsCreateLayoutParams);
        }
        this.reactionsContainerLayout = reactionsContainerLayout;
        reactionsContainerLayout.setOnSwitchedToLoopView(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$2();
            }
        });
        reactionsContainerLayout.prepareAnimation(true);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$3(reactionsContainerLayout);
            }
        }, 50L);
        if (i != 5) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.stopAllHeavyOperations, 7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        if (this.enterTransitionFinished) {
            dismiss();
        }
    }

    /* JADX INFO: renamed from: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$2 */
    class C48912 extends SelectAnimatedEmojiDialog {
        final /* synthetic */ BaseFragment val$baseFragment;
        final /* synthetic */ ReactionsContainerLayout val$reactionsContainerLayout;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C48912(BaseFragment baseFragment, Context context, boolean z, Integer num, int i, boolean z2, Theme.ResourcesProvider resourcesProvider, int i2, ReactionsContainerLayout reactionsContainerLayout, BaseFragment baseFragment2) {
            super(baseFragment, context, z, num, i, z2, resourcesProvider, i2);
            this.val$reactionsContainerLayout = reactionsContainerLayout;
            this.val$baseFragment = baseFragment2;
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        public boolean prevWindowKeyboardVisible() {
            if (this.val$reactionsContainerLayout.getDelegate() != null) {
                return this.val$reactionsContainerLayout.getDelegate().needEnterText();
            }
            return false;
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        protected void onInputFocus() {
            if (CustomEmojiReactionsWindow.this.wasFocused) {
                return;
            }
            CustomEmojiReactionsWindow.this.wasFocused = true;
            CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
            if (!customEmojiReactionsWindow.attachToParent) {
                customEmojiReactionsWindow.windowManager.updateViewLayout(customEmojiReactionsWindow.windowView, customEmojiReactionsWindow.createLayoutParams(true));
            }
            BaseFragment baseFragment = this.val$baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).needEnterText();
            }
            if (this.val$reactionsContainerLayout.getDelegate() != null) {
                this.val$reactionsContainerLayout.getDelegate().needEnterText();
            }
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        protected void onReactionClick(SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji, ReactionsLayoutInBubble.VisibleReaction visibleReaction) {
            this.val$reactionsContainerLayout.onReactionClicked(imageViewEmoji, visibleReaction, false);
            AndroidUtilities.hideKeyboard(CustomEmojiReactionsWindow.this.windowView);
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        protected void onEmojiSelected(View view, Long l, TLRPC.Document document, TL_stars.TL_starGiftUnique tL_starGiftUnique, Integer num) {
            if (this.val$baseFragment != null) {
                ReactionsContainerLayout reactionsContainerLayout = this.val$reactionsContainerLayout;
                if (!reactionsContainerLayout.channelReactions && reactionsContainerLayout.getWindowType() != 13 && !UserConfig.getInstance(this.val$baseFragment.getCurrentAccount()).isPremium()) {
                    try {
                        CustomEmojiReactionsWindow.this.windowView.performHapticFeedback(3);
                    } catch (Exception unused) {
                    }
                    BulletinFactory.m1245of(CustomEmojiReactionsWindow.this.windowView, null).createEmojiBulletin(document, AndroidUtilities.replaceTags(LocaleController.getString(C2888R.string.UnlockPremiumEmojiReaction)), LocaleController.getString(C2888R.string.PremiumMore), new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$2$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onEmojiSelected$0();
                        }
                    }).show();
                    return;
                }
            }
            if (l == null && document == null) {
                return;
            }
            if (document != null) {
                AnimatedEmojiDrawable.getDocumentFetcher(UserConfig.selectedAccount).putDocument(document);
            }
            this.val$reactionsContainerLayout.onReactionClicked(view, ReactionsLayoutInBubble.VisibleReaction.fromCustomEmoji(Long.valueOf(l == null ? document.f1668id : l.longValue())), false);
            AndroidUtilities.hideKeyboard(CustomEmojiReactionsWindow.this.windowView);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onEmojiSelected$0() {
            CustomEmojiReactionsWindow.this.showUnlockPremiumAlert();
        }

        @Override // org.telegram.p029ui.SelectAnimatedEmojiDialog
        /* JADX INFO: renamed from: invalidateParent */
        protected void lambda$new$3() {
            CustomEmojiReactionsWindow.this.containerView.invalidate();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ReactionsContainerLayout reactionsContainerLayout, Canvas canvas, int i, int i2, int i3, int i4, float f, float f2) {
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(i, i2, i3, i4);
        reactionsContainerLayout.getDelegate().drawRoundRect(canvas, rectF, 0.0f, this.containerView.getX() + f, getBlurOffset() + f2, 255, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2() {
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(ReactionsContainerLayout reactionsContainerLayout) {
        this.isShowing = true;
        this.containerView.invalidate();
        reactionsContainerLayout.prepareAnimation(false);
        createTransition(true);
    }

    public void setLongPressEnabled(boolean z) {
        this.selectAnimatedEmojiDialog.setLongPressEnabled(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateWindowPosition() {
        if (this.dismissed) {
            return;
        }
        float measuredHeight = this.yTranslation;
        int iM1124dp = AndroidUtilities.m1124dp(32.0f);
        int i = this.type;
        if (i == 1 || i == 2) {
            iM1124dp = AndroidUtilities.m1124dp(24.0f);
        }
        float f = iM1124dp;
        if (this.containerView.getMeasuredHeight() + measuredHeight > (this.windowView.getMeasuredHeight() - this.keyboardHeight) - f) {
            measuredHeight = ((this.windowView.getMeasuredHeight() - this.keyboardHeight) - this.containerView.getMeasuredHeight()) - f;
        }
        if (measuredHeight < 0.0f) {
            measuredHeight = 0.0f;
        }
        this.containerView.animate().translationY(measuredHeight).setDuration(250L).setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda9
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$updateWindowPosition$4(valueAnimator);
            }
        }).setInterpolator(CubicBezierInterpolator.DEFAULT).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateWindowPosition$4(ValueAnimator valueAnimator) {
        this.containerView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WindowManager.LayoutParams createLayoutParams(boolean z) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.height = -1;
        layoutParams.width = -1;
        int i = this.type;
        layoutParams.type = (i == 0 || i == 3) ? MediaDataController.MAX_STYLE_RUNS_COUNT : 99;
        layoutParams.softInputMode = 16;
        if (z) {
            layoutParams.flags = 65792;
        } else {
            layoutParams.flags = 65800;
        }
        layoutParams.format = -3;
        return layoutParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showUnlockPremiumAlert() {
        BaseFragment baseFragment = this.baseFragment;
        if (baseFragment instanceof ChatActivity) {
            baseFragment.showDialog(new PremiumFeatureBottomSheet(this.baseFragment, 11, false));
            return;
        }
        BaseFragment lastFragment = LaunchActivity.getLastFragment();
        if (lastFragment != null) {
            lastFragment.showDialog(new PremiumFeatureBottomSheet(this.baseFragment, 11, false));
        }
    }

    private void createTransition(final boolean z) {
        ValueAnimator valueAnimatorOfFloat;
        this.fromRect.set(this.reactionsContainerLayout.rect);
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        this.fromRadius = reactionsContainerLayout.radius;
        int[] iArr = new int[2];
        if (z) {
            reactionsContainerLayout.getLocationOnScreen(this.location);
        }
        this.windowView.getLocationOnScreen(iArr);
        float fM1124dp = ((((this.location[1] - iArr[1]) - AndroidUtilities.m1124dp(44.0f)) - AndroidUtilities.m1124dp(52.0f)) - (this.selectAnimatedEmojiDialog.includeHint ? AndroidUtilities.m1124dp(26.0f) : 0)) + this.reactionsContainerLayout.getTopOffset();
        if (this.reactionsContainerLayout.showExpandableReactions()) {
            fM1124dp = (this.location[1] - iArr[1]) - AndroidUtilities.m1124dp(12.0f);
        }
        if (this.containerView.getMeasuredHeight() + fM1124dp > this.windowView.getMeasuredHeight() - AndroidUtilities.m1124dp(32.0f)) {
            fM1124dp = (this.windowView.getMeasuredHeight() - AndroidUtilities.m1124dp(32.0f)) - this.containerView.getMeasuredHeight();
        }
        if (fM1124dp < AndroidUtilities.m1124dp(16.0f)) {
            fM1124dp = AndroidUtilities.m1124dp(16.0f);
        }
        if (this.type == 5) {
            fM1124dp = Math.min(fM1124dp, 0.0f);
        }
        int i = this.type;
        if (i == 1) {
            this.containerView.setTranslationX(((this.windowView.getMeasuredWidth() - this.containerView.getMeasuredWidth()) / 2.0f) - AndroidUtilities.m1124dp(16.0f));
        } else if (i == 2 || i == 4) {
            this.containerView.setTranslationX((this.location[0] - iArr[0]) - AndroidUtilities.m1124dp(18.0f));
        } else {
            this.containerView.setTranslationX((this.location[0] - iArr[0]) - AndroidUtilities.m1124dp(2.0f));
        }
        if (!z) {
            this.yTranslation = this.containerView.getTranslationY();
        } else {
            this.yTranslation = fM1124dp;
            this.containerView.setTranslationY(fM1124dp);
        }
        RectF rectF = this.fromRect;
        float x = (this.location[0] - iArr[0]) - this.containerView.getX();
        this.fromRectTranslateX = x;
        float y = (this.location[1] - iArr[1]) - this.containerView.getY();
        this.fromRectTranslateY = y;
        rectF.offset(x, y);
        this.reactionsContainerLayout.setCustomEmojiEnterProgress(this.enterTransitionProgress);
        if (z) {
            this.cascadeAnimation = SharedConfig.getDevicePerformanceClass() >= 2 && LiteMode.isEnabled(LiteMode.FLAG_ANIMATED_EMOJI_REACTIONS);
            this.enterTransitionFinished = false;
        } else {
            this.cascadeAnimation = false;
        }
        if (this.cascadeAnimation) {
            updateCascadeEnter(0.0f, true);
        }
        updateContainersAlpha();
        this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(true);
        this.selectAnimatedEmojiDialog.emojiTabs.showRecentTabStub(z && this.cascadeAnimation);
        this.account = UserConfig.selectedAccount;
        this.notificationsLocker.lock();
        ValueAnimator valueAnimator = this.valueAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.transition = true;
        if (this.type == 4) {
            valueAnimatorOfFloat = ValueAnimator.ofFloat(this.enterTransitionProgress, z ? 1.0f : 0.0f);
        } else {
            valueAnimatorOfFloat = StableAnimator.ofFloat(this.enterTransitionProgress, z ? 1.0f : 0.0f);
        }
        this.valueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda5
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                this.f$0.lambda$createTransition$5(z, valueAnimator2);
            }
        });
        if (!z) {
            syncReactionFrames();
        }
        this.valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.updateContainersAlpha();
                CustomEmojiReactionsWindow.this.updateContentPosition();
                CustomEmojiReactionsWindow.this.checkAnimationEnd(z);
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.invalidateOutline();
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                boolean z2 = z;
                customEmojiReactionsWindow.enterTransitionProgress = z2 ? 1.0f : 0.0f;
                if (z2) {
                    customEmojiReactionsWindow.enterTransitionFinished = true;
                    customEmojiReactionsWindow.containerView.invalidate();
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                customEmojiReactionsWindow2.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(customEmojiReactionsWindow2.enterTransitionProgress, 1.0f, 0.0f));
                if (!z) {
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(false);
                    CustomEmojiReactionsWindow.this.removeView();
                    Runtime.getRuntime().gc();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow3 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow3.reactionsContainerLayout.setCustomEmojiReactionsBackground((customEmojiReactionsWindow3.type == 4 || CustomEmojiReactionsWindow.this.type == 5) ? false : true);
                }
                CustomEmojiReactionsWindow.this.transition = false;
            }
        });
        if (this.type == 4) {
            this.valueAnimator.setDuration(420L);
            this.valueAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        } else if (this.cascadeAnimation) {
            this.valueAnimator.setDuration(450L);
            this.valueAnimator.setInterpolator(new OvershootInterpolator(0.5f));
        } else {
            this.valueAnimator.setDuration(350L);
            this.valueAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
        }
        this.containerView.invalidate();
        switchLayerType(true);
        if (!z) {
            ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
            reactionsContainerLayout2.isHiddenNextReaction = true;
            reactionsContainerLayout2.invalidate();
            this.valueAnimator.setStartDelay(30L);
            this.valueAnimator.start();
        } else {
            this.reactionsContainerLayout.setCustomEmojiReactionsBackground(false);
            final ValueAnimator valueAnimator2 = this.valueAnimator;
            Objects.requireNonNull(valueAnimator2);
            HwEmojis.prepare(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    valueAnimator2.start();
                }
            }, this.cascadeAnimation);
        }
        HwEmojis.enableHw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createTransition$5(boolean z, ValueAnimator valueAnimator) {
        this.valueAnimator = null;
        this.enterTransitionProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        updateContainersAlpha();
        updateContentPosition();
        this.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(this.enterTransitionProgress, 1.0f, 0.0f));
        this.invalidatePath = true;
        this.containerView.invalidate();
        this.selectAnimatedEmojiDialog.invalidateOutline();
        if (this.cascadeAnimation) {
            updateCascadeEnter(this.enterTransitionProgress, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContainersAlpha() {
        if (this.cascadeAnimation) {
            return;
        }
        this.selectAnimatedEmojiDialog.searchBox.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiGridView.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiSearchGridView.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiTabs.setAlpha(this.enterTransitionProgress);
        this.selectAnimatedEmojiDialog.emojiTabsShadow.setAlpha(this.enterTransitionProgress);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateContentPosition() {
        this.selectAnimatedEmojiDialog.contentView.setTranslationX(this.cascadeAnimation ? 0.0f : this.containerView.enterTransitionOffsetX);
        this.selectAnimatedEmojiDialog.contentView.setTranslationY(this.containerView.enterTransitionOffsetY);
        this.selectAnimatedEmojiDialog.contentView.setPivotX(this.containerView.enterTransitionScalePx);
        this.selectAnimatedEmojiDialog.contentView.setPivotY(this.containerView.enterTransitionScalePy);
        this.selectAnimatedEmojiDialog.contentView.setScaleX(this.containerView.enterTransitionScale);
        this.selectAnimatedEmojiDialog.contentView.setScaleY(this.containerView.enterTransitionScale);
    }

    private void switchLayerType(boolean z) {
        int i = z ? 2 : 0;
        this.selectAnimatedEmojiDialog.emojiGridView.setLayerType(i, null);
        this.selectAnimatedEmojiDialog.searchBox.setLayerType(i, null);
        if (this.cascadeAnimation) {
            for (int i2 = 0; i2 < Math.min(this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildCount(), 16); i2++) {
                this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildAt(i2).setLayerType(i, null);
            }
        } else {
            this.selectAnimatedEmojiDialog.emojiTabsShadow.setLayerType(i, null);
            this.selectAnimatedEmojiDialog.emojiTabs.setLayerType(i, null);
        }
    }

    private void setScaleForChild(View view, float f) {
        if (view instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
            ((SelectAnimatedEmojiDialog.ImageViewEmoji) view).setAnimatedScale(f);
        } else if (view instanceof EmojiTabsStrip.EmojiTabButton) {
            view.setScaleX(f);
            view.setScaleY(f);
        }
    }

    private void updateCascadeEnter(float f, final boolean z) {
        int y = (int) (this.selectAnimatedEmojiDialog.getY() + this.selectAnimatedEmojiDialog.contentView.getY() + this.selectAnimatedEmojiDialog.emojiGridView.getY());
        final ArrayList arrayList = null;
        boolean z2 = false;
        for (int i = 0; i < this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i++) {
            View childAt = this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i);
            if (!this.animatingEnterChild.contains(childAt)) {
                float top = childAt.getTop() + y + (childAt.getMeasuredHeight() / 2.0f);
                RectF rectF = this.drawingRect;
                if (top < rectF.bottom && top > rectF.top && f != 0.0f) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(childAt);
                    this.animatingEnterChild.add(childAt);
                } else {
                    setScaleForChild(childAt, 0.0f);
                    z2 = true;
                }
            }
        }
        int y2 = (int) (this.selectAnimatedEmojiDialog.getY() + this.selectAnimatedEmojiDialog.contentView.getY() + this.selectAnimatedEmojiDialog.emojiTabs.getY());
        for (int i2 = 0; i2 < this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildCount(); i2++) {
            View childAt2 = this.selectAnimatedEmojiDialog.emojiTabs.contentView.getChildAt(i2);
            if (!this.animatingEnterChild.contains(childAt2)) {
                float top2 = childAt2.getTop() + y2 + (childAt2.getMeasuredHeight() / 2.0f);
                RectF rectF2 = this.drawingRect;
                if (top2 < rectF2.bottom && top2 > rectF2.top && f != 0.0f) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(childAt2);
                    this.animatingEnterChild.add(childAt2);
                } else {
                    setScaleForChild(childAt2, 0.0f);
                    z2 = true;
                }
            }
        }
        if (z2) {
            this.selectAnimatedEmojiDialog.emojiGridViewContainer.invalidate();
        }
        if (arrayList != null) {
            final ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f$0.lambda$updateCascadeEnter$6(arrayList, valueAnimator);
                }
            });
            this.animators.add(valueAnimatorOfFloat);
            valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    super.onAnimationEnd(animator);
                    CustomEmojiReactionsWindow.this.animators.remove(valueAnimatorOfFloat);
                    CustomEmojiReactionsWindow.this.checkAnimationEnd(z);
                }
            });
            if (this.type == 4) {
                valueAnimatorOfFloat.setDuration(420L);
                valueAnimatorOfFloat.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
            } else {
                valueAnimatorOfFloat.setDuration(350L);
                valueAnimatorOfFloat.setInterpolator(new OvershootInterpolator(1.0f));
            }
            valueAnimatorOfFloat.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateCascadeEnter$6(ArrayList arrayList, ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        for (int i = 0; i < arrayList.size(); i++) {
            setScaleForChild((View) arrayList.get(i), fFloatValue);
        }
        this.selectAnimatedEmojiDialog.emojiGridViewContainer.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAnimationEnd(boolean z) {
        if (this.animators.isEmpty()) {
            switchLayerType(false);
            HwEmojis.disableHw();
            this.notificationsLocker.unlock();
            this.selectAnimatedEmojiDialog.setEnterAnimationInProgress(false);
            if (z) {
                this.selectAnimatedEmojiDialog.emojiTabs.showRecentTabStub(false);
                this.selectAnimatedEmojiDialog.emojiGridView.invalidate();
                this.selectAnimatedEmojiDialog.emojiGridView.invalidateViews();
                this.selectAnimatedEmojiDialog.searchBox.checkInitialization();
                if (this.reactionsContainerLayout.getPullingLeftProgress() > 0.0f) {
                    ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
                    reactionsContainerLayout.isHiddenNextReaction = false;
                    reactionsContainerLayout.onCustomEmojiWindowOpened();
                } else {
                    ReactionsContainerLayout reactionsContainerLayout2 = this.reactionsContainerLayout;
                    reactionsContainerLayout2.isHiddenNextReaction = true;
                    reactionsContainerLayout2.onCustomEmojiWindowOpened();
                }
                this.selectAnimatedEmojiDialog.resetBackgroundBitmaps();
                syncReactionFrames();
                this.containerView.invalidate();
            }
        }
    }

    private void syncReactionFrames() {
        for (int i = 0; i < this.selectAnimatedEmojiDialog.emojiGridView.getChildCount(); i++) {
            if (this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i) instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji = (SelectAnimatedEmojiDialog.ImageViewEmoji) this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(i);
                if (imageViewEmoji.reaction != null) {
                    imageViewEmoji.notDraw = false;
                    imageViewEmoji.invalidate();
                }
            }
        }
    }

    public void removeView() {
        if (this.type != 5) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.startAllHeavyOperations, 7);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$removeView$7();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$removeView$7() {
        if (this.windowView.getParent() == null) {
            return;
        }
        if (this.attachToParent) {
            AndroidUtilities.removeFromParent(this.windowView);
        } else {
            try {
                this.windowManager.removeView(this.windowView);
            } catch (Exception unused) {
            }
        }
        Runnable runnable = this.onDismiss;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void dismiss() {
        if (this.dismissed) {
            return;
        }
        ReactionsContainerLayout reactionsContainerLayout = this.reactionsContainerLayout;
        if (reactionsContainerLayout != null) {
            reactionsContainerLayout.onCustomEmojiWindowClosing();
        }
        Bulletin.hideVisible();
        this.dismissed = true;
        AndroidUtilities.hideKeyboard(this.windowView);
        createTransition(false);
        if (this.wasFocused) {
            BaseFragment baseFragment = this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).onEditTextDialogClose(true, true);
            }
        }
    }

    public void onDismissListener(Runnable runnable) {
        this.onDismiss = runnable;
    }

    public void dismiss(boolean z) {
        if (this.dismissed && z) {
            return;
        }
        this.dismissed = true;
        if (!z) {
            removeView();
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$dismiss$8(valueAnimator);
            }
        });
        valueAnimatorOfFloat.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        valueAnimatorOfFloat.setDuration(150L);
        valueAnimatorOfFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$8(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.dismissProgress = fFloatValue;
        this.containerView.setAlpha(1.0f - fFloatValue);
    }

    public boolean isShowing() {
        return !this.dismissed;
    }

    public void dismissWithAlpha() {
        if (this.dismissed) {
            return;
        }
        Bulletin.hideVisible();
        this.dismissed = true;
        AndroidUtilities.hideKeyboard(this.windowView);
        this.windowView.animate().alpha(0.0f).setDuration(150L).setListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.Reactions.CustomEmojiReactionsWindow.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                CustomEmojiReactionsWindow.this.checkAnimationEnd(false);
                CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
                customEmojiReactionsWindow.enterTransitionProgress = 0.0f;
                customEmojiReactionsWindow.reactionsContainerLayout.setCustomEmojiEnterProgress(Utilities.clamp(0.0f, 1.0f, 0.0f));
                CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(false);
                CustomEmojiReactionsWindow.this.windowView.setVisibility(8);
                CustomEmojiReactionsWindow.this.removeView();
            }
        });
        if (this.wasFocused) {
            BaseFragment baseFragment = this.baseFragment;
            if (baseFragment instanceof ChatActivity) {
                ((ChatActivity) baseFragment).onEditTextDialogClose(true, true);
            }
        }
    }

    public class ContainerView extends FrameLayout {
        Paint backgroundPaint;
        private final Path clipPath;
        float enterTransitionOffsetX;
        float enterTransitionOffsetY;
        float enterTransitionScale;
        float enterTransitionScalePx;
        float enterTransitionScalePy;
        int[] radiusTmp;
        Drawable shadow;
        Rect shadowPad;
        HashMap transitionReactions;

        public ContainerView(Context context) {
            super(context);
            this.shadowPad = new Rect();
            this.backgroundPaint = new Paint(1);
            this.radiusTmp = new int[4];
            this.transitionReactions = new HashMap();
            this.enterTransitionOffsetX = 0.0f;
            this.enterTransitionOffsetY = 0.0f;
            this.enterTransitionScale = 1.0f;
            this.enterTransitionScalePx = 0.0f;
            this.enterTransitionScalePy = 0.0f;
            this.clipPath = new Path();
            this.shadow = ContextCompat.getDrawable(context, C2888R.drawable.reactions_bubble_shadow).mutate();
            Rect rect = this.shadowPad;
            int iM1124dp = AndroidUtilities.m1124dp(7.0f);
            rect.bottom = iM1124dp;
            rect.right = iM1124dp;
            rect.top = iM1124dp;
            rect.left = iM1124dp;
            this.shadow.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_chat_messagePanelShadow, CustomEmojiReactionsWindow.this.resourcesProvider), PorterDuff.Mode.MULTIPLY));
            if (CustomEmojiReactionsWindow.this.type == 2) {
                this.backgroundPaint.setColor(ColorUtils.blendARGB(-16777216, -1, 0.13f));
            } else {
                this.backgroundPaint.setColor(Theme.getColor(Theme.key_actionBarDefaultSubmenuBackground, CustomEmojiReactionsWindow.this.resourcesProvider));
            }
        }

        @Override // android.view.View
        public void invalidate() {
            ReactionsContainerLayout reactionsContainerLayout;
            super.invalidate();
            if (CustomEmojiReactionsWindow.this.type == 1 || !((reactionsContainerLayout = CustomEmojiReactionsWindow.this.reactionsContainerLayout) == null || reactionsContainerLayout.getDelegate() == null || !CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawBackground())) {
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.invalidateSearchBox();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
        @Override // android.widget.FrameLayout, android.view.View
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        protected void onMeasure(int i, int i2) {
            int measuredWidth;
            int iM1124dp;
            int iM1124dp2;
            int iM1124dp3;
            if (CustomEmojiReactionsWindow.this.type == 1 || CustomEmojiReactionsWindow.this.type == 2 || CustomEmojiReactionsWindow.this.type == 4) {
                measuredWidth = CustomEmojiReactionsWindow.this.reactionsContainerLayout.getMeasuredWidth();
            } else if (CustomEmojiReactionsWindow.this.type == 5) {
                measuredWidth = (AndroidUtilities.m1124dp(36.0f) * 8) + AndroidUtilities.m1124dp(12.0f);
            } else {
                measuredWidth = Math.min(View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2));
                int iM1124dp4 = (AndroidUtilities.m1124dp(36.0f) * 8) + AndroidUtilities.m1124dp(12.0f);
                if (iM1124dp4 < measuredWidth) {
                    measuredWidth = iM1124dp4;
                }
            }
            if (CustomEmojiReactionsWindow.this.type == 4) {
                iM1124dp2 = AndroidUtilities.m1124dp(36.0f) * 8;
                iM1124dp3 = AndroidUtilities.m1124dp(8.0f);
            } else {
                if (CustomEmojiReactionsWindow.this.reactionsContainerLayout.showExpandableReactions()) {
                    int iCeil = (int) Math.ceil(CustomEmojiReactionsWindow.this.reactions.size() / 8.0f);
                    if (iCeil <= 8) {
                        iM1124dp = (iCeil * AndroidUtilities.m1124dp(36.0f)) + AndroidUtilities.m1124dp(8.0f);
                    } else {
                        iM1124dp2 = AndroidUtilities.m1124dp(36.0f) * 8;
                        iM1124dp3 = AndroidUtilities.m1124dp(8.0f);
                    }
                } else {
                    iM1124dp = measuredWidth;
                }
                if (CustomEmojiReactionsWindow.this.type == 5) {
                    iM1124dp = Math.min(AndroidUtilities.m1124dp(254.0f), iM1124dp);
                }
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30));
            }
            iM1124dp = iM1124dp2 - iM1124dp3;
            if (CustomEmojiReactionsWindow.this.type == 5) {
            }
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(iM1124dp, TLObject.FLAG_30));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            float f;
            int i;
            float f2;
            int i2;
            View childAt;
            int i3;
            float f3;
            float f4;
            int i4;
            float f5;
            float f6;
            float f7;
            float f8;
            float fM1124dp;
            float fLerp;
            boolean z;
            float f9;
            float f10;
            float f11;
            float f12;
            ReactionsLayoutInBubble.VisibleReaction visibleReaction;
            Canvas canvas2 = canvas;
            CustomEmojiReactionsWindow customEmojiReactionsWindow = CustomEmojiReactionsWindow.this;
            if (customEmojiReactionsWindow.isShowing) {
                float f13 = 1.0f;
                float f14 = 0.0f;
                float fClamp = Utilities.clamp(customEmojiReactionsWindow.enterTransitionProgress, 1.0f, 0.0f);
                RectF rectF = AndroidUtilities.rectTmp;
                rectF.set(0.0f, 0.0f, getMeasuredWidth(), getMeasuredHeight());
                int i5 = 4;
                if (CustomEmojiReactionsWindow.this.type == 4) {
                    CustomEmojiReactionsWindow customEmojiReactionsWindow2 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow2.fromRect.set(customEmojiReactionsWindow2.reactionsContainerLayout.rect);
                    CustomEmojiReactionsWindow customEmojiReactionsWindow3 = CustomEmojiReactionsWindow.this;
                    customEmojiReactionsWindow3.fromRect.offset(customEmojiReactionsWindow3.fromRectTranslateX, customEmojiReactionsWindow3.fromRectTranslateY);
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow4 = CustomEmojiReactionsWindow.this;
                AndroidUtilities.lerp(customEmojiReactionsWindow4.fromRect, rectF, customEmojiReactionsWindow4.enterTransitionProgress, customEmojiReactionsWindow4.drawingRect);
                CustomEmojiReactionsWindow customEmojiReactionsWindow5 = CustomEmojiReactionsWindow.this;
                float fLerp2 = AndroidUtilities.lerp(customEmojiReactionsWindow5.fromRadius, AndroidUtilities.m1124dp(customEmojiReactionsWindow5.type == 5 ? 20.0f : 8.0f), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                this.transitionReactions.clear();
                if (CustomEmojiReactionsWindow.this.type == 1 || (CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate() != null && CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawBackground())) {
                    f = 0.05f;
                    i = 1;
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.getDelegate().drawRoundRect(canvas2, CustomEmojiReactionsWindow.this.drawingRect, fLerp2, getX(), CustomEmojiReactionsWindow.this.getBlurOffset(), 255, true);
                    canvas2 = canvas2;
                } else {
                    this.shadow.setAlpha((int) (Utilities.clamp(fClamp / 0.05f, 1.0f, 0.0f) * 255.0f));
                    Drawable drawable = this.shadow;
                    RectF rectF2 = CustomEmojiReactionsWindow.this.drawingRect;
                    int i6 = (int) rectF2.left;
                    Rect rect = this.shadowPad;
                    f = 0.05f;
                    drawable.setBounds(i6 - rect.left, ((int) rectF2.top) - rect.top, ((int) rectF2.right) + rect.right, ((int) rectF2.bottom) + rect.bottom);
                    this.shadow.draw(canvas2);
                    canvas2.drawRoundRect(CustomEmojiReactionsWindow.this.drawingRect, fLerp2, fLerp2, this.backgroundPaint);
                    i = 1;
                }
                if (CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView != null) {
                    canvas2.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow6 = CustomEmojiReactionsWindow.this;
                    RectF rectF3 = customEmojiReactionsWindow6.drawingRect;
                    canvas2.translate(rectF3.left, (rectF3.top + customEmojiReactionsWindow6.reactionsContainerLayout.hintView.getY()) - ((CustomEmojiReactionsWindow.this.type == 3 || CustomEmojiReactionsWindow.this.type == 4 || CustomEmojiReactionsWindow.this.type == 5) ? CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.top : 0.0f));
                    f2 = 255.0f;
                    canvas2.saveLayerAlpha(0.0f, 0.0f, CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getMeasuredWidth(), CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getMeasuredHeight(), (int) (CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.getAlpha() * 255.0f * (1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress)), 31);
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.hintView.draw(canvas2);
                    canvas2.restore();
                    canvas2.restore();
                } else {
                    f2 = 255.0f;
                }
                CustomEmojiReactionsWindow customEmojiReactionsWindow7 = CustomEmojiReactionsWindow.this;
                RectF rectF4 = customEmojiReactionsWindow7.drawingRect;
                float fWidth = (rectF4.left - customEmojiReactionsWindow7.reactionsContainerLayout.rect.left) + (rectF4.width() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width());
                CustomEmojiReactionsWindow customEmojiReactionsWindow8 = CustomEmojiReactionsWindow.this;
                if (customEmojiReactionsWindow8.enterTransitionProgress > f || customEmojiReactionsWindow8.type == 5) {
                    canvas2.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow9 = CustomEmojiReactionsWindow.this;
                    RectF rectF5 = customEmojiReactionsWindow9.drawingRect;
                    canvas2.translate(fWidth, (rectF5.top - customEmojiReactionsWindow9.reactionsContainerLayout.rect.top) + (rectF5.height() - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.height()));
                    CustomEmojiReactionsWindow.this.reactionsContainerLayout.drawBubbles(canvas2);
                    canvas2.restore();
                }
                if (CustomEmojiReactionsWindow.this.type == 5) {
                    this.clipPath.rewind();
                    this.clipPath.addRoundRect(CustomEmojiReactionsWindow.this.drawingRect, fLerp2, fLerp2, Path.Direction.CW);
                    canvas2.save();
                    canvas2.clipPath(this.clipPath);
                }
                this.enterTransitionOffsetX = 0.0f;
                this.enterTransitionOffsetY = 0.0f;
                this.enterTransitionScale = 1.0f;
                this.enterTransitionScalePx = 0.0f;
                this.enterTransitionScalePy = 0.0f;
                CustomEmojiReactionsWindow customEmojiReactionsWindow10 = CustomEmojiReactionsWindow.this;
                if (customEmojiReactionsWindow10.reactionsContainerLayout != null) {
                    for (int childCount = customEmojiReactionsWindow10.selectAnimatedEmojiDialog.emojiGridView.getChildCount() - i; childCount >= 0; childCount--) {
                        if (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(childCount) instanceof SelectAnimatedEmojiDialog.ImageViewEmoji) {
                            SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji = (SelectAnimatedEmojiDialog.ImageViewEmoji) CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getChildAt(childCount);
                            if (imageViewEmoji.isFirstReactions && (visibleReaction = imageViewEmoji.reaction) != null) {
                                this.transitionReactions.put(visibleReaction, imageViewEmoji);
                            }
                        }
                    }
                    int iSave = canvas2.save();
                    CustomEmojiReactionsWindow customEmojiReactionsWindow11 = CustomEmojiReactionsWindow.this;
                    RectF rectF6 = customEmojiReactionsWindow11.drawingRect;
                    canvas2.translate(rectF6.left, rectF6.top + ((customEmojiReactionsWindow11.reactionsContainerLayout.getTopOffset() + CustomEmojiReactionsWindow.this.reactionsContainerLayout.expandSize()) * (1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress)));
                    float fMax = Math.max(1.0f - (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiSearchGridView.getVisibility() == 0 ? CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiSearchGridView.getAlpha() : 0.0f), 1.0f - CustomEmojiReactionsWindow.this.enterTransitionProgress);
                    if (fMax != 1.0f) {
                        canvas2.saveLayerAlpha(0.0f, 0.0f, CustomEmojiReactionsWindow.this.drawingRect.width(), CustomEmojiReactionsWindow.this.drawingRect.height(), (int) (fMax * f2), 31);
                    }
                    int x = (int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX());
                    int y = (int) (CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY());
                    int i7 = CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiTabs.getParent() != null ? i : 0;
                    if (CustomEmojiReactionsWindow.this.type != 5) {
                        canvas2.clipRect(y, i7 != 0 ? x + (AndroidUtilities.m1124dp(36.0f) * CustomEmojiReactionsWindow.this.enterTransitionProgress) : 0.0f, y + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getMeasuredWidth(), x + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getMeasuredHeight());
                    }
                    int i8 = -1;
                    int i9 = -1;
                    while (i9 < CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getChildCount()) {
                        if (i9 == i8) {
                            childAt = CustomEmojiReactionsWindow.this.reactionsContainerLayout.nextRecentReaction;
                        } else {
                            childAt = CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getChildAt(i9);
                        }
                        if (childAt.getLeft() < 0 || childAt.getVisibility() == 8) {
                            i3 = i9;
                            f3 = f13;
                            f4 = f14;
                            i4 = i5;
                        } else {
                            canvas2.save();
                            if (childAt instanceof ReactionsContainerLayout.ReactionHolderView) {
                                ReactionsContainerLayout.ReactionHolderView reactionHolderView = (ReactionsContainerLayout.ReactionHolderView) childAt;
                                PremiumLockIconView premiumLockIconView = reactionHolderView.lockIconView;
                                if (premiumLockIconView != null) {
                                    premiumLockIconView.setAlpha(f13 - CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                }
                                SelectAnimatedEmojiDialog.ImageViewEmoji imageViewEmoji2 = (SelectAnimatedEmojiDialog.ImageViewEmoji) this.transitionReactions.get(reactionHolderView.currentReaction);
                                if (imageViewEmoji2 != null) {
                                    float x2 = childAt.getX();
                                    float y2 = childAt.getY();
                                    f5 = 2.0f;
                                    if (i9 == i8) {
                                        x2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getX();
                                        y2 -= CustomEmojiReactionsWindow.this.reactionsContainerLayout.recyclerListView.getY();
                                    }
                                    float f15 = x2;
                                    float x3 = (((imageViewEmoji2.getX() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getX()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getX()) - reactionHolderView.loopImageView.getX()) - AndroidUtilities.m1124dp(f13);
                                    float y3 = (((imageViewEmoji2.getY() + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.gridViewContainer.getY()) + CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.emojiGridView.getY()) - reactionHolderView.loopImageView.getY();
                                    float measuredWidth = imageViewEmoji2.getMeasuredWidth();
                                    if (imageViewEmoji2.selected || CustomEmojiReactionsWindow.this.type == i5) {
                                        if (CustomEmojiReactionsWindow.this.type == i5) {
                                            f9 = 0.87f * measuredWidth;
                                            x3 -= AndroidUtilities.m1124dp(0.33f);
                                            y3 -= AndroidUtilities.m1124dp(1.33f);
                                        } else {
                                            f9 = measuredWidth;
                                        }
                                        if (imageViewEmoji2.selected) {
                                            f9 *= 0.95f;
                                        }
                                        float f16 = (measuredWidth - f9) / 2.0f;
                                        x3 += f16;
                                        y3 += f16;
                                        measuredWidth = f9;
                                    }
                                    float f17 = x3;
                                    float fLerp3 = AndroidUtilities.lerp(f15, f17, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    float fLerp4 = AndroidUtilities.lerp(y2, y3, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    float f18 = f14;
                                    float measuredWidth2 = measuredWidth / reactionHolderView.loopImageView.getMeasuredWidth();
                                    fLerp = AndroidUtilities.lerp(f13, measuredWidth2, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                    float f19 = f13;
                                    if (reactionHolderView.position == 0) {
                                        fM1124dp = AndroidUtilities.m1124dp(6.0f);
                                        f11 = fM1124dp;
                                        f10 = f18;
                                        f12 = f10;
                                    } else {
                                        fM1124dp = reactionHolderView.selected ? AndroidUtilities.m1124dp(6.0f) : f18;
                                        f10 = fM1124dp;
                                        f11 = f10;
                                        f12 = f11;
                                    }
                                    canvas2.translate(fLerp3, fLerp4);
                                    canvas2.scale(fLerp, fLerp);
                                    if (this.enterTransitionOffsetX == f18 && this.enterTransitionOffsetY == f18) {
                                        CustomEmojiReactionsWindow customEmojiReactionsWindow12 = CustomEmojiReactionsWindow.this;
                                        this.enterTransitionOffsetX = AndroidUtilities.lerp((customEmojiReactionsWindow12.fromRect.left + f15) - f17, f18, customEmojiReactionsWindow12.enterTransitionProgress);
                                        CustomEmojiReactionsWindow customEmojiReactionsWindow13 = CustomEmojiReactionsWindow.this;
                                        this.enterTransitionOffsetY = AndroidUtilities.lerp((customEmojiReactionsWindow13.fromRect.top + y2) - y3, f18, customEmojiReactionsWindow13.enterTransitionProgress);
                                        this.enterTransitionScale = AndroidUtilities.lerp(f19 / measuredWidth2, f19, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        this.enterTransitionScalePx = f17;
                                        this.enterTransitionScalePy = y3;
                                    }
                                    f6 = f10;
                                    f7 = f11;
                                    f8 = f12;
                                } else {
                                    f5 = 2.0f;
                                    canvas2.translate(childAt.getX() + reactionHolderView.loopImageView.getX(), childAt.getY() + reactionHolderView.loopImageView.getY());
                                    f6 = 0.0f;
                                    f7 = 0.0f;
                                    f8 = 0.0f;
                                    fM1124dp = 0.0f;
                                    fLerp = 1.0f;
                                }
                                if (imageViewEmoji2 != null) {
                                    if (imageViewEmoji2.selected) {
                                        float measuredWidth3 = reactionHolderView.getMeasuredWidth() / f5;
                                        float measuredHeight = reactionHolderView.getMeasuredHeight() / f5;
                                        float measuredWidth4 = reactionHolderView.getMeasuredWidth() - AndroidUtilities.m1124dp(f5);
                                        float fLerp5 = AndroidUtilities.lerp(measuredWidth4, (imageViewEmoji2.getMeasuredWidth() - AndroidUtilities.m1124dp(f5)) / fLerp, CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        RectF rectF7 = AndroidUtilities.rectTmp;
                                        float f20 = fLerp5 / f5;
                                        i3 = i9;
                                        rectF7.set(measuredWidth3 - f20, measuredHeight - f20, measuredWidth3 + f20, measuredHeight + f20);
                                        float fLerp6 = AndroidUtilities.lerp(measuredWidth4 / f5, AndroidUtilities.m1124dp(4.0f), CustomEmojiReactionsWindow.this.enterTransitionProgress);
                                        canvas2.drawRoundRect(rectF7, fLerp6, fLerp6, CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.selectorPaint);
                                    } else {
                                        i3 = i9;
                                    }
                                    z = false;
                                    reactionHolderView.drawSelected = false;
                                    if (f7 != 0.0f) {
                                        ImageReceiver imageReceiver = reactionHolderView.loopImageView.getImageReceiver();
                                        reactionHolderView.checkPlayLoopImage();
                                        AnimatedEmojiDrawable animatedEmojiDrawable = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                        if (animatedEmojiDrawable != null && animatedEmojiDrawable.getImageReceiver() != null) {
                                            imageReceiver = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                        }
                                        int[] roundRadius = imageReceiver.getRoundRadius();
                                        i4 = 4;
                                        for (int i10 = 0; i10 < 4; i10++) {
                                            this.radiusTmp[i10] = roundRadius[i10];
                                        }
                                        f4 = 0.0f;
                                        imageReceiver.setRoundRadius((int) AndroidUtilities.lerp(fM1124dp, 0.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f6, 0.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f8, 0.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress), (int) AndroidUtilities.lerp(f7, 0.0f, CustomEmojiReactionsWindow.this.enterTransitionProgress));
                                        reactionHolderView.draw(canvas2);
                                        imageReceiver.setRoundRadius(this.radiusTmp);
                                    } else {
                                        reactionHolderView.draw(canvas2);
                                        f4 = 0.0f;
                                        i4 = 4;
                                    }
                                    reactionHolderView.drawSelected = true;
                                    if (!imageViewEmoji2.notDraw) {
                                        imageViewEmoji2.notDraw = true;
                                        imageViewEmoji2.invalidate();
                                    }
                                } else {
                                    i3 = i9;
                                    z = false;
                                    f4 = 0.0f;
                                    i4 = 4;
                                    if (reactionHolderView.hasEnterAnimation && reactionHolderView.loopImageView.getImageReceiver().getLottieAnimation() == null) {
                                        float alpha = reactionHolderView.enterImageView.getImageReceiver().getAlpha();
                                        reactionHolderView.enterImageView.getImageReceiver().setAlpha((1.0f - fClamp) * alpha);
                                        reactionHolderView.enterImageView.draw(canvas2);
                                        reactionHolderView.enterImageView.getImageReceiver().setAlpha(alpha);
                                    } else {
                                        reactionHolderView.checkPlayLoopImage();
                                        ImageReceiver imageReceiver2 = reactionHolderView.loopImageView.getImageReceiver();
                                        AnimatedEmojiDrawable animatedEmojiDrawable2 = reactionHolderView.loopImageView.animatedEmojiDrawable;
                                        if (animatedEmojiDrawable2 != null && animatedEmojiDrawable2.getImageReceiver() != null) {
                                            imageReceiver2 = reactionHolderView.loopImageView.animatedEmojiDrawable.getImageReceiver();
                                        }
                                        float alpha2 = imageReceiver2.getAlpha();
                                        imageReceiver2.setAlpha((1.0f - fClamp) * alpha2);
                                        reactionHolderView.loopImageView.draw(canvas2);
                                        imageReceiver2.setAlpha(alpha2);
                                    }
                                }
                                if (reactionHolderView.loopImageView.getVisibility() != 0) {
                                    invalidate();
                                }
                                f3 = 1.0f;
                            } else {
                                i3 = i9;
                                f4 = f14;
                                i4 = i5;
                                float x4 = (childAt.getX() + CustomEmojiReactionsWindow.this.drawingRect.width()) - CustomEmojiReactionsWindow.this.reactionsContainerLayout.rect.width();
                                float y4 = childAt.getY();
                                CustomEmojiReactionsWindow customEmojiReactionsWindow14 = CustomEmojiReactionsWindow.this;
                                canvas2.translate(x4, (y4 + customEmojiReactionsWindow14.fromRect.top) - customEmojiReactionsWindow14.drawingRect.top);
                                f3 = 1.0f;
                                canvas2.saveLayerAlpha(0.0f, 0.0f, childAt.getMeasuredWidth(), childAt.getMeasuredHeight(), (int) ((1.0f - fClamp) * f2), 31);
                                float f21 = CustomEmojiReactionsWindow.this.enterTransitionProgress;
                                canvas2.scale(1.0f - f21, 1.0f - f21, r9.getMeasuredWidth() >> 1, r9.getMeasuredHeight() >> 1);
                                childAt.draw(canvas2);
                                canvas2.restore();
                            }
                            canvas2.restore();
                        }
                        i9 = i3 + 1;
                        f14 = f4;
                        i5 = i4;
                        f13 = f3;
                        i8 = -1;
                    }
                    canvas2.restoreToCount(iSave);
                }
                super.dispatchDraw(canvas);
                if (CustomEmojiReactionsWindow.this.frameDrawCount < 5) {
                    if (CustomEmojiReactionsWindow.this.frameDrawCount == 3) {
                        i2 = 1;
                        CustomEmojiReactionsWindow.this.reactionsContainerLayout.setSkipDraw(true);
                    } else {
                        i2 = 1;
                    }
                    CustomEmojiReactionsWindow.this.frameDrawCount += i2;
                }
                CustomEmojiReactionsWindow.this.selectAnimatedEmojiDialog.drawBigReaction(canvas2, this);
                if (CustomEmojiReactionsWindow.this.type == 5) {
                    canvas2.restore();
                }
                if (CustomEmojiReactionsWindow.this.valueAnimator != null) {
                    invalidate();
                }
                HwEmojis.exec();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getBlurOffset() {
        if (this.type == 1) {
            return this.containerView.getY() - AndroidUtilities.statusBarHeight;
        }
        return this.containerView.getY() + this.windowView.getY();
    }

    public void setRecentReactions(List list) {
        this.selectAnimatedEmojiDialog.setRecentReactions(list);
    }

    public SelectAnimatedEmojiDialog getSelectAnimatedEmojiDialog() {
        return this.selectAnimatedEmojiDialog;
    }
}
