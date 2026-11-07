package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.tl.TL_wallet;
import org.telegram.ui.Cells.ChatActionCell;
import org.telegram.ui.ChatActivity;
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView;

/* JADX INFO: loaded from: classes8.dex */
public final class WalletChatSendTransition {
    private final AnimatorSet animation;
    private final Runnable awaitLanding;
    private final ChatActivity chat;
    private final Runnable completion;
    private final WalletDiamondTextureView coolDiamond;
    private final long created;
    private final WalletDiamondView diamond;
    private final PathInterpolator exitCurve;
    private boolean finished;
    private final RectF from;
    private ChatActionCell landing;
    private final View outgoing;
    private final FrameLayout overlay;
    private final WalletSendParticles particles;
    private float progress;
    private boolean ready;
    private boolean renderFailed;
    private final ViewGroup root;
    private final ChatAttachAlert sheet;
    private final WalletDiamondView source;
    private final float sourceAlpha;
    private boolean started;
    private final RectF to;
    private final TL_wallet.walletTransaction transaction;

    public WalletChatSendTransition(ViewGroup viewGroup, View view, WalletDiamondView walletDiamondView, ChatActivity chatActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable) {
        this(viewGroup, view, walletDiamondView, chatActivity, wallettransaction, runnable, null);
    }

    public WalletChatSendTransition(ChatAttachAlert chatAttachAlert, WalletDiamondView walletDiamondView, ChatActivity chatActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable) {
        this(chatAttachAlert.getContainer(), chatAttachAlert.getSheetContainer(), walletDiamondView, chatActivity, wallettransaction, runnable, chatAttachAlert);
    }

    private WalletChatSendTransition(ViewGroup viewGroup, View view, final WalletDiamondView walletDiamondView, ChatActivity chatActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable, final ChatAttachAlert chatAttachAlert) {
        this.particles = new WalletSendParticles();
        this.exitCurve = new PathInterpolator(0.3f, 0.0f, 0.8f, 0.15f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animation = animatorSet;
        this.to = new RectF();
        this.created = SystemClock.uptimeMillis();
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.awaitLanding();
            }
        };
        this.awaitLanding = runnable2;
        this.sheet = chatAttachAlert;
        this.root = viewGroup;
        this.outgoing = view;
        this.source = walletDiamondView;
        this.sourceAlpha = walletDiamondView.getAlpha();
        this.chat = chatActivity;
        this.transaction = wallettransaction;
        this.completion = runnable;
        RectF rectFBounds = WalletSendTransition.bounds(walletDiamondView, viewGroup);
        this.from = rectFBounds;
        updateSourceBounds();
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext()) { // from class: org.telegram.ui.Wallet.WalletChatSendTransition.1
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(-getLeft(), -getTop());
                WalletChatSendTransition.this.particles.draw(canvas);
                canvas.restore();
                super.dispatchDraw(canvas);
                if (WalletChatSendTransition.this.particles.isActive()) {
                    postInvalidateOnAnimation();
                }
            }
        };
        this.overlay = frameLayout;
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        frameLayout.setClickable(true);
        WalletDiamondView walletDiamondView2 = new WalletDiamondView(viewGroup.getContext(), 60, true);
        this.diamond = walletDiamondView2;
        walletDiamondView2.setContinuousRotation(540.0f);
        walletDiamondView2.copyRotationFrom(walletDiamondView);
        walletDiamondView2.setAlpha(0.0f);
        frameLayout.addView(walletDiamondView2, LayoutHelper.createFrame(60, 60, 51));
        WalletDiamondTextureView walletDiamondTextureView = new WalletDiamondTextureView(viewGroup.getContext(), new Runnable() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updateCoolPose();
            }
        }) { // from class: org.telegram.ui.Wallet.WalletChatSendTransition.2
            @Override // org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView
            public void onRenderError() {
                WalletChatSendTransition.this.renderFailed = true;
            }
        };
        this.coolDiamond = walletDiamondTextureView;
        walletDiamondTextureView.setAlpha(0.001f);
        walletDiamondTextureView.setPaused(false);
        frameLayout.addView(walletDiamondTextureView, LayoutHelper.createFrame(60, 60, 51));
        viewGroup.addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        position(rectFBounds.centerX(), rectFBounds.centerY(), rectFBounds.width());
        walletDiamondView2.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition$$ExternalSyntheticLambda3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$1(valueAnimator);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (chatAttachAlert != null) {
                    AndroidUtilities.hideKeyboard(walletDiamondView);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WalletChatSendTransition.this.finish(true);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                WalletChatSendTransition.this.finish(false);
            }
        });
        frameLayout.post(runnable2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.ready = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(ValueAnimator valueAnimator) {
        drawFrame(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public AnimatorSet animator() {
        return this.animation;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void awaitLanding() {
        if (this.finished || this.started) {
            return;
        }
        updateSourceBounds();
        position(this.from.centerX(), this.from.centerY(), this.from.width());
        ChatActionCell chatActionCellFindWalletSendLanding = this.chat.findWalletSendLanding(this.transaction);
        if (chatActionCellFindWalletSendLanding != null && chatActionCellFindWalletSendLanding.getWidth() > 0) {
            ChatActionCell chatActionCell = this.landing;
            if (chatActionCell != chatActionCellFindWalletSendLanding) {
                if (chatActionCell != null) {
                    chatActionCell.walletActionLayout.holdDiamondForFlight(false);
                }
                this.landing = chatActionCellFindWalletSendLanding;
            }
            View diamondSurface = this.landing.walletActionLayout.getDiamondSurface();
            if (this.ready && this.coolDiamond.isReady() && (diamondSurface instanceof WalletDiamondTextureView) && ((WalletDiamondTextureView) diamondSurface).isReady() && diamondSurface.getWidth() > 0 && !this.landing.isLayoutRequested()) {
                this.to.set(targetBounds(diamondSurface));
                if (this.to.centerY() > 0.0f && this.to.centerY() < this.root.getHeight() && this.sourceAlpha > 0.01f) {
                    this.started = true;
                    this.landing.walletActionLayout.holdDiamondForFlight(true);
                    this.diamond.copyRotationFrom(this.source);
                    this.diamond.setAlpha(this.sourceAlpha);
                    this.source.setAlpha(0.0f);
                    this.particles.burst(this.from.centerX(), this.from.centerY());
                    this.animation.start();
                    return;
                }
                this.to.setEmpty();
            }
        }
        if (SystemClock.uptimeMillis() - this.created > 700 || this.renderFailed || !this.root.isAttachedToWindow()) {
            this.started = true;
            this.diamond.setAlpha(0.0f);
            this.coolDiamond.setAlpha(0.0f);
            this.animation.setDuration(180L);
            this.animation.start();
            return;
        }
        this.overlay.postOnAnimation(this.awaitLanding);
    }

    private void drawFrame(float f) {
        if (this.finished) {
            return;
        }
        updateSourceBounds();
        float interpolation = this.exitCurve.getInterpolation(Math.min(1.0f, f * 2.0f));
        ChatAttachAlert chatAttachAlert = this.sheet;
        if (chatAttachAlert != null) {
            chatAttachAlert.setGramSendTransitionProgress(interpolation);
        } else {
            this.outgoing.setTranslationY(r2.getHeight() * interpolation);
        }
        if (this.landing == null || this.to.isEmpty()) {
            return;
        }
        ChatActionCell chatActionCellFindWalletSendLanding = this.chat.findWalletSendLanding(this.transaction);
        ChatActionCell chatActionCell = this.landing;
        if (chatActionCellFindWalletSendLanding != chatActionCell) {
            chatActionCell.walletActionLayout.holdDiamondForFlight(false);
            this.landing = chatActionCellFindWalletSendLanding;
        }
        ChatActionCell chatActionCell2 = this.landing;
        if (chatActionCell2 == null || this.renderFailed) {
            this.to.setEmpty();
            this.diamond.setAlpha(0.0f);
            this.coolDiamond.setAlpha(0.0f);
            return;
        }
        chatActionCell2.walletActionLayout.holdDiamondForFlight(true);
        View diamondSurface = this.landing.walletActionLayout.getDiamondSurface();
        if (diamondSurface == null || !diamondSurface.isAttachedToWindow()) {
            this.to.setEmpty();
            this.diamond.setAlpha(0.0f);
            this.coolDiamond.setAlpha(0.0f);
            return;
        }
        this.to.set(targetBounds(diamondSurface));
        this.progress = f;
        float fMax = Math.max(0.0f, Math.min(1.0f, (f - 0.25f) / 0.5f));
        float f2 = fMax * fMax * (3.0f - (fMax * 2.0f));
        this.diamond.setAlpha(this.sourceAlpha * (1.0f - f2));
        this.coolDiamond.setAlpha(f2);
        updateCoolPose();
        float f3 = 1.0f - f;
        float fCenterX = this.from.centerX() + ((this.to.centerX() - this.from.centerX()) * 0.35f);
        float fMin = Math.min(this.from.centerY(), this.to.centerY()) - AndroidUtilities.dp(150.0f);
        float f4 = f3 * f3;
        float f5 = f3 * 2.0f * f;
        float fCenterX2 = (this.from.centerX() * f4) + (fCenterX * f5);
        float f6 = f * f;
        float fCenterX3 = fCenterX2 + (this.to.centerX() * f6);
        float fCenterY = (f4 * this.from.centerY()) + (f5 * fMin) + (f6 * this.to.centerY());
        position(fCenterX3, fCenterY, this.from.width() + ((this.to.width() - this.from.width()) * f));
        if (f < 0.92f) {
            this.particles.trail(fCenterX3, fCenterY);
        }
        this.overlay.invalidate();
    }

    private void updateSourceBounds() {
        if (this.source.isAttachedToWindow() && this.source.getRootView() == this.root.getRootView()) {
            if (this.sheet == null) {
                WalletSendTransition.updateSourceBounds(this.source, this.outgoing, this.root, this.from);
                return;
            }
            this.from.set(WalletSendTransition.bounds(this.source, this.root));
            RectF rectF = this.from;
            ChatAttachAlert chatAttachAlert = this.sheet;
            rectF.offset(0.0f, chatAttachAlert.currentPanTranslationY - chatAttachAlert.getGramSendExitTranslationY());
        }
    }

    private RectF targetBounds(View view) {
        if (this.sheet == null) {
            return WalletSendTransition.bounds(view, this.root);
        }
        ViewGroup viewGroup = (ViewGroup) view.getRootView();
        RectF rectFBounds = WalletSendTransition.bounds(view, viewGroup);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        rectFBounds.offset(iArr[0], iArr[1]);
        this.root.getLocationOnScreen(iArr);
        rectFBounds.offset(-iArr[0], -iArr[1]);
        return rectFBounds;
    }

    private void position(float f, float f2, float f3) {
        float fDp = AndroidUtilities.dp(60.0f);
        float f4 = fDp / 2.0f;
        this.diamond.setTranslationX((f - this.overlay.getLeft()) - f4);
        this.diamond.setTranslationY((f2 - this.overlay.getTop()) - f4);
        float f5 = f3 / fDp;
        this.diamond.setScaleX(f5);
        this.diamond.setScaleY(f5);
        this.coolDiamond.setTranslationX(this.diamond.getTranslationX());
        this.coolDiamond.setTranslationY(this.diamond.getTranslationY());
        this.coolDiamond.setScaleX(f5);
        this.coolDiamond.setScaleY(f5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateCoolPose() {
        if (this.coolDiamond == null) {
            return;
        }
        float flightYaw = this.diamond.getFlightYaw();
        float flightPitch = this.diamond.getFlightPitch();
        if (this.landing != null) {
            float fMax = Math.max(0.0f, Math.min(1.0f, (this.progress - 0.55f) / 0.45f));
            float f = fMax * fMax * (3.0f - (fMax * 2.0f));
            flightYaw += ((float) Math.IEEEremainder(this.landing.walletActionLayout.getFlightYaw() - flightYaw, 6.283185307179586d)) * f;
            flightPitch += (this.landing.walletActionLayout.getFlightPitch() - flightPitch) * f;
        }
        this.coolDiamond.setPose(flightYaw, flightPitch, true, true);
    }

    public void cancel() {
        if (this.finished) {
            return;
        }
        if (this.animation.isStarted()) {
            this.animation.cancel();
        } else {
            finish(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish(boolean z) {
        if (this.finished) {
            return;
        }
        this.finished = true;
        this.overlay.removeCallbacks(this.awaitLanding);
        this.diamond.whenReady(null);
        ChatActionCell chatActionCell = this.landing;
        if (chatActionCell != null) {
            chatActionCell.walletActionLayout.holdDiamondForFlight(false);
            if (z && this.progress >= 1.0f && !this.to.isEmpty() && this.landing.isAttachedToWindow() && GramWallet.messageMatchesTransaction(this.landing.getMessageObject(), this.transaction)) {
                this.landing.walletActionLayout.playLanding((((this.to.centerY() - (Math.min(this.from.centerY(), this.to.centerY()) - AndroidUtilities.dp(150.0f))) * 2.0f) / 0.6f) / AndroidUtilities.density);
            }
        }
        this.coolDiamond.setPaused(true);
        this.overlay.removeView(this.coolDiamond);
        this.diamond.setPaused(true);
        this.overlay.removeView(this.diamond);
        this.overlay.setClickable(false);
        this.source.setAlpha(this.sourceAlpha);
        ChatAttachAlert chatAttachAlert = this.sheet;
        if (chatAttachAlert == null) {
            this.outgoing.setTranslationY(0.0f);
        } else {
            chatAttachAlert.setGramSendTransitionProgress(1.0f);
        }
        final ViewGroup viewGroup = this.root;
        if (this.sheet != null && z && this.particles.isActive() && this.chat.getParentLayout() != null) {
            ViewGroup view = this.chat.getParentLayout().getView();
            if (view.isAttachedToWindow()) {
                this.root.getLocationOnScreen(new int[2]);
                view.getLocationOnScreen(new int[2]);
                this.root.removeView(this.overlay);
                this.overlay.setTranslationX(r2[0] - r1[0]);
                this.overlay.setTranslationY(r2[1] - r1[1]);
                view.addView(this.overlay, new ViewGroup.LayoutParams(-1, -1));
                viewGroup = view;
            }
        }
        this.completion.run();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletChatSendTransition$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$finish$2(viewGroup);
            }
        }, 650L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$finish$2(ViewGroup viewGroup) {
        viewGroup.removeView(this.overlay);
    }
}
