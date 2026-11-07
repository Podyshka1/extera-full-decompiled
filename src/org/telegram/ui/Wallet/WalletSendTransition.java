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
import org.telegram.ui.Components.ChatAttachAlert;
import org.telegram.ui.Components.LayoutHelper;

/* JADX INFO: loaded from: classes8.dex */
public final class WalletSendTransition {
    private final AnimatorSet animation;
    private final Runnable awaitLanding;
    private final Runnable completion;
    private final long created;
    private final WalletDiamondView diamond;
    private final PathInterpolator exitCurve;
    private boolean finished;
    private final RectF from;
    private TransactionCell landing;
    private final View outgoing;
    private final FrameLayout overlay;
    private final WalletSendParticles particles;
    private boolean ready;
    private final ViewGroup root;
    private final ChatAttachAlert sheet;
    private final WalletDiamondView source;
    private final float sourceAlpha;
    private boolean started;
    private final RectF to;
    private final TL_wallet.walletTransaction transaction;
    private final WalletActivity wallet;

    public WalletSendTransition(ViewGroup viewGroup, View view, WalletDiamondView walletDiamondView, WalletActivity walletActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable) {
        this(viewGroup, view, walletDiamondView, walletActivity, wallettransaction, runnable, null);
    }

    public WalletSendTransition(ChatAttachAlert chatAttachAlert, WalletDiamondView walletDiamondView, WalletActivity walletActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable) {
        this(chatAttachAlert.getContainer(), chatAttachAlert.getSheetContainer(), walletDiamondView, walletActivity, wallettransaction, runnable, chatAttachAlert);
    }

    private WalletSendTransition(ViewGroup viewGroup, View view, final WalletDiamondView walletDiamondView, WalletActivity walletActivity, TL_wallet.walletTransaction wallettransaction, Runnable runnable, final ChatAttachAlert chatAttachAlert) {
        this.particles = new WalletSendParticles();
        this.exitCurve = new PathInterpolator(0.3f, 0.0f, 0.8f, 0.15f);
        AnimatorSet animatorSet = new AnimatorSet();
        this.animation = animatorSet;
        this.to = new RectF();
        this.created = SystemClock.uptimeMillis();
        Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendTransition$$ExternalSyntheticLambda0
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
        this.wallet = walletActivity;
        this.transaction = wallettransaction;
        this.completion = runnable;
        RectF rectFBounds = bounds(walletDiamondView, viewGroup);
        this.from = rectFBounds;
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext()) { // from class: org.telegram.ui.Wallet.WalletSendTransition.1
            @Override // android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.translate(-getLeft(), -getTop());
                WalletSendTransition.this.particles.draw(canvas);
                canvas.restore();
                super.dispatchDraw(canvas);
                if (WalletSendTransition.this.particles.isActive()) {
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
        viewGroup.addView(frameLayout, new ViewGroup.LayoutParams(-1, -1));
        position(rectFBounds.centerX(), rectFBounds.centerY(), rectFBounds.width());
        walletDiamondView2.whenReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendTransition$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        });
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(600L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletSendTransition$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$new$1(valueAnimator);
            }
        });
        animatorSet.playTogether(valueAnimatorOfFloat);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletSendTransition.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (chatAttachAlert != null) {
                    AndroidUtilities.hideKeyboard(walletDiamondView);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WalletSendTransition.this.finish();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                WalletSendTransition.this.finish();
            }
        });
        walletActivity.prepareSendLanding(wallettransaction);
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
        TransactionCell transactionCellFindSendLanding = this.wallet.findSendLanding(this.transaction);
        if (transactionCellFindSendLanding != null && transactionCellFindSendLanding.getWidth() > 0) {
            TransactionCell transactionCell = this.landing;
            if (transactionCell != transactionCellFindSendLanding) {
                if (transactionCell != null) {
                    transactionCell.holdForFlight(false);
                }
                this.landing = transactionCellFindSendLanding;
                transactionCellFindSendLanding.holdForFlight(true);
            }
            WalletDiamondView pendingDiamond = this.landing.getPendingDiamond();
            if (this.ready && pendingDiamond != null && pendingDiamond.getWidth() > 0 && !this.landing.isLayoutRequested()) {
                this.to.set(targetBounds(pendingDiamond));
                if (this.to.centerY() > 0.0f && this.to.centerY() < this.root.getHeight()) {
                    this.started = true;
                    this.diamond.copyRotationFrom(this.source);
                    this.diamond.setAlpha(1.0f);
                    this.source.setAlpha(0.0f);
                    this.particles.burst(this.from.centerX(), this.from.centerY());
                    this.animation.start();
                    return;
                }
            }
        }
        if (SystemClock.uptimeMillis() - this.created > 450 || !this.root.isAttachedToWindow()) {
            this.started = true;
            this.diamond.setAlpha(0.0f);
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
        WalletDiamondView pendingDiamond = this.landing.getPendingDiamond();
        if (pendingDiamond != null && this.landing.matches(this.transaction) && pendingDiamond.isAttachedToWindow()) {
            this.to.set(targetBounds(pendingDiamond));
        }
        float f2 = 1.0f - f;
        float fCenterX = this.from.centerX() + ((this.to.centerX() - this.from.centerX()) * 0.35f);
        float fMin = Math.min(this.from.centerY(), this.to.centerY()) - AndroidUtilities.dp(150.0f);
        float f3 = f2 * f2;
        float f4 = f2 * 2.0f * f;
        float fCenterX2 = (this.from.centerX() * f3) + (fCenterX * f4);
        float f5 = f * f;
        float fCenterX3 = fCenterX2 + (this.to.centerX() * f5);
        float fCenterY = (f3 * this.from.centerY()) + (f4 * fMin) + (f5 * this.to.centerY());
        position(fCenterX3, fCenterY, this.from.width() + ((this.to.width() - this.from.width()) * f));
        if (f < 0.92f) {
            this.particles.trail(fCenterX3, fCenterY);
        }
        this.overlay.invalidate();
    }

    private void updateSourceBounds() {
        ChatAttachAlert chatAttachAlert = this.sheet;
        WalletDiamondView walletDiamondView = this.source;
        if (chatAttachAlert == null) {
            updateSourceBounds(walletDiamondView, this.outgoing, this.root, this.from);
            return;
        }
        if (walletDiamondView.isAttachedToWindow() && this.source.getRootView() == this.root.getRootView()) {
            this.from.set(bounds(this.source, this.root));
            RectF rectF = this.from;
            ChatAttachAlert chatAttachAlert2 = this.sheet;
            rectF.offset(0.0f, chatAttachAlert2.currentPanTranslationY - chatAttachAlert2.getGramSendExitTranslationY());
        }
    }

    private RectF targetBounds(View view) {
        if (this.sheet == null) {
            return bounds(view, this.root);
        }
        ViewGroup viewGroup = (ViewGroup) view.getRootView();
        RectF rectFBounds = bounds(view, viewGroup);
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
    }

    public static void updateSourceBounds(View view, View view2, ViewGroup viewGroup, RectF rectF) {
        if (!view.isAttachedToWindow() || view.getWidth() <= 0 || view.getHeight() <= 0) {
            return;
        }
        RectF rectF2 = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        while (view != viewGroup) {
            view.getMatrix().mapRect(rectF2);
            if (view == view2) {
                rectF2.offset(0.0f, -view2.getTranslationY());
            }
            rectF2.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return;
            }
            view = (View) parent;
            rectF2.offset(-view.getScrollX(), -view.getScrollY());
        }
        rectF.set(rectF2);
    }

    public static RectF bounds(View view, ViewGroup viewGroup) {
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        while (view != viewGroup) {
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                break;
            }
            view = (View) parent;
            rectF.offset(-view.getScrollX(), -view.getScrollY());
        }
        return rectF;
    }

    public void cancel() {
        if (this.finished) {
            return;
        }
        if (this.animation.isStarted()) {
            this.animation.cancel();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finish() {
        if (this.finished) {
            return;
        }
        this.finished = true;
        this.overlay.removeCallbacks(this.awaitLanding);
        this.diamond.whenReady(null);
        TransactionCell transactionCell = this.landing;
        if (transactionCell != null && transactionCell.matches(this.transaction)) {
            WalletDiamondView pendingDiamond = this.landing.getPendingDiamond();
            if (pendingDiamond != null) {
                pendingDiamond.copyRotationFrom(this.diamond);
            }
            this.landing.holdForFlight(false);
            if (!this.to.isEmpty()) {
                this.landing.playLanding((((this.to.centerY() - (Math.min(this.from.centerY(), this.to.centerY()) - AndroidUtilities.dp(150.0f))) * 2.0f) / 0.6f) / AndroidUtilities.density);
            }
        }
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
        if (this.sheet != null && this.particles.isActive() && this.wallet.getParentLayout() != null) {
            ViewGroup view = this.wallet.getParentLayout().getView();
            if (view.isAttachedToWindow()) {
                this.root.getLocationOnScreen(new int[2]);
                view.getLocationOnScreen(new int[2]);
                this.root.removeView(this.overlay);
                this.overlay.setTranslationX(r4[0] - r1[0]);
                this.overlay.setTranslationY(r4[1] - r1[1]);
                view.addView(this.overlay, new ViewGroup.LayoutParams(-1, -1));
                viewGroup = view;
            }
        }
        this.completion.run();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletSendTransition$$ExternalSyntheticLambda3
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
