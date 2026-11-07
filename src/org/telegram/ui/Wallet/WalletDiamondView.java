package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;
import android.graphics.SurfaceTexture;
import android.os.PowerManager;
import android.view.Choreographer;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.SharedConfig;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView;
import org.telegram.ui.Components.Premium.GLIcon.GLIconRenderer;
import org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView;
import org.telegram.ui.Components.Premium.StarParticlesView;
import org.telegram.ui.Components.RLottieImageView;

/* JADX INFO: loaded from: classes8.dex */
public class WalletDiamondView extends FrameLayout {
    private final Choreographer.FrameCallback amountMotion;
    private final int animationSizeDp;
    private boolean attached;
    private float continuousSpeed;
    private float conversionWobble;
    private int dragPointerId;
    private SpringAnimation dragScaleSpring;
    private float dragX;
    private float dragY;
    private float editMomentum;
    private DiamondSurfaceView glView;
    private boolean hasSwipeProgress;
    private View iconView;
    private boolean inputDrivenRotation;
    private float introRoll;
    private float introYaw;
    private long lastMotionFrame;
    private long lastSwipeFrame;
    private long lastSwipeSample;
    private RLottieImageView lottieView;
    private boolean paused;
    private final int preferredSize;
    private float previousSwipeVelocity;
    private Runnable readyCallback;
    private GLIconRenderer renderer;
    private float restingAngleX;
    private float restingAngleY;
    private boolean resumeLottie;
    private ValueAnimator returnAnimator;
    private float returnOffsetX;
    private float returnOffsetY;
    private float returnProgress;
    private boolean running;
    private final Runnable startIdleRotation;
    private boolean startedLottie;
    private float swipeAngularVelocity;
    private final Choreographer.FrameCallback swipeMotion;
    private boolean swipeMotionRunning;
    private float swipeProgress;
    private SpringAnimation swipeTranslationSpring;
    private float swipeTranslationVelocity;
    private float swipeYaw;
    private GLIconTextureView textureView;
    private double tiltPhase;
    private int visibilityGeneration;

    /* JADX INFO: Access modifiers changed from: private */
    public void startIdleRotation() {
        if (this.renderer == null || !this.running || this.inputDrivenRotation) {
            return;
        }
        setIdleAnimationEnabled(true);
    }

    public WalletDiamondView(Context context, int i) {
        this(context, i, false);
    }

    public WalletDiamondView(Context context, int i, boolean z) {
        super(context);
        this.dragPointerId = -1;
        this.swipeMotion = new Choreographer.FrameCallback() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda4
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                this.f$0.advanceSwipeMotion(j);
            }
        };
        this.returnProgress = 1.0f;
        this.amountMotion = new Choreographer.FrameCallback() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda5
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                this.f$0.advanceAmountMotion(j);
            }
        };
        this.startIdleRotation = new Runnable() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.startIdleRotation();
            }
        };
        int iDp = AndroidUtilities.dp(i);
        this.preferredSize = iDp;
        this.animationSizeDp = i;
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if ((powerManager != null && powerManager.isPowerSaveMode()) || SharedConfig.getDevicePerformanceClass() == 0 || !supportsGles3(context)) {
            createLottieView();
        } else if (z) {
            GLIconTextureView gLIconTextureView = new GLIconTextureView(context, 1, 4) { // from class: org.telegram.ui.Wallet.WalletDiamondView.1
                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                    int iRound = Math.round(Math.min(i2, i3) * 3.5f);
                    surfaceTexture.setDefaultBufferSize(iRound, iRound);
                    super.onSurfaceTextureAvailable(surfaceTexture, iRound, iRound);
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                    int iRound = Math.round(Math.min(i2, i3) * 3.5f);
                    surfaceTexture.setDefaultBufferSize(iRound, iRound);
                    setDimensions(iRound, iRound);
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.TextureView.SurfaceTextureListener
                public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                    super.onSurfaceTextureUpdated(surfaceTexture);
                    int iRound = Math.round(Math.min(getWidth(), getHeight()) * 3.5f);
                    if (iRound > 0) {
                        surfaceTexture.setDefaultBufferSize(iRound, iRound);
                    }
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView
                public void onRenderError() {
                    if (WalletDiamondView.this.textureView == this) {
                        WalletDiamondView.this.showLottieFallback();
                    }
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.GLIconTextureView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return !WalletDiamondView.this.inputDrivenRotation && super.onTouchEvent(motionEvent);
                }
            };
            this.textureView = gLIconTextureView;
            GLIconRenderer gLIconRenderer = gLIconTextureView.mRenderer;
            this.renderer = gLIconRenderer;
            gLIconRenderer.diamondResolutionScale = 0.2857143f;
            this.iconView = this.textureView;
        } else {
            DiamondSurfaceView diamondSurfaceView = new DiamondSurfaceView(context) { // from class: org.telegram.ui.Wallet.WalletDiamondView.2
                @Override // org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView
                public void onRenderError() {
                    if (WalletDiamondView.this.glView == this) {
                        WalletDiamondView.this.showLottieFallback();
                    }
                }

                @Override // org.telegram.ui.Components.Premium.GLIcon.DiamondSurfaceView, android.view.View
                public boolean onTouchEvent(MotionEvent motionEvent) {
                    return !WalletDiamondView.this.inputDrivenRotation && super.onTouchEvent(motionEvent);
                }
            };
            this.glView = diamondSurfaceView;
            this.renderer = diamondSurfaceView.mRenderer;
            this.iconView = diamondSurfaceView;
        }
        GLIconRenderer gLIconRenderer2 = this.renderer;
        if (gLIconRenderer2 != null) {
            gLIconRenderer2.colorKey1 = Theme.key_starsGradient1;
            gLIconRenderer2.colorKey2 = Theme.key_starsGradient2;
            gLIconRenderer2.updateColors();
            setIdleAnimationEnabled(false);
        }
        addView(this.iconView, new FrameLayout.LayoutParams(iDp, iDp, 17));
    }

    private void setIdleAnimationEnabled(boolean z) {
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.setIdleAnimationEnabled(z);
        }
        GLIconTextureView gLIconTextureView = this.textureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setIdleAnimationEnabled(z);
        }
    }

    private void setRendererPaused(boolean z) {
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.setPaused(z);
        }
        GLIconTextureView gLIconTextureView = this.textureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setPaused(z);
        }
    }

    private void whenRendererReady(Runnable runnable) {
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.whenReady(runnable);
        }
        GLIconTextureView gLIconTextureView = this.textureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.whenReady(runnable);
        }
    }

    private void setRenderScale(float f) {
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.setRenderScale(f);
        }
        if (this.textureView != null) {
            this.renderer.diamondResolutionScale = f / 3.5f;
        }
    }

    private void createLottieView() {
        RLottieImageView rLottieImageView = new RLottieImageView(getContext());
        this.lottieView = rLottieImageView;
        rLottieImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RLottieImageView rLottieImageView2 = this.lottieView;
        int i = C2807R.raw.wallet_diamond_blue;
        int i2 = this.animationSizeDp;
        rLottieImageView2.setAnimation(i, i2, i2);
        this.lottieView.getAnimatedDrawable().setAutoRepeat(0);
        this.iconView = this.lottieView;
        setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$createLottieView$0(view);
            }
        });
        setClickable(!this.inputDrivenRotation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createLottieView$0(View view) {
        if (this.inputDrivenRotation || !this.running || this.lottieView.isPlaying()) {
            return;
        }
        this.lottieView.setProgress(0.0f);
        this.lottieView.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showLottieFallback() {
        if (this.renderer == null) {
            return;
        }
        endDrag(false);
        this.visibilityGeneration++;
        removeCallbacks(this.startIdleRotation);
        stopAmountMotion();
        whenRendererReady(null);
        setIdleAnimationEnabled(false);
        setRendererPaused(true);
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.stopThread();
        }
        GLIconTextureView gLIconTextureView = this.textureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.stopThread();
        }
        removeView(this.iconView);
        this.glView = null;
        this.textureView = null;
        this.renderer = null;
        createLottieView();
        View view = this.iconView;
        int i = this.preferredSize;
        addView(view, new FrameLayout.LayoutParams(i, i, 17));
        this.running = false;
        if (this.continuousSpeed != 0.0f) {
            this.lottieView.getAnimatedDrawable().setAutoRepeat(1);
        }
        updateAnimationState();
        notifyReady();
    }

    private static boolean supportsGles3(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ConfigurationInfo deviceConfigurationInfo = activityManager == null ? null : activityManager.getDeviceConfigurationInfo();
        return deviceConfigurationInfo != null && deviceConfigurationInfo.reqGlEsVersion >= 196608;
    }

    public void setPaused(boolean z) {
        this.paused = z;
        updateAnimationState();
    }

    public void setContinuousRotation(float f) {
        this.continuousSpeed = f;
        setInputDrivenRotation();
        setEnabled(false);
        RLottieImageView rLottieImageView = this.lottieView;
        if (rLottieImageView != null) {
            rLottieImageView.getAnimatedDrawable().setAutoRepeat(1);
        }
    }

    public void copyRotationFrom(WalletDiamondView walletDiamondView) {
        GLIconRenderer gLIconRenderer;
        if (walletDiamondView == null || (gLIconRenderer = walletDiamondView.renderer) == null || this.renderer == null) {
            return;
        }
        this.restingAngleX = gLIconRenderer.angleX;
        this.restingAngleY = gLIconRenderer.angleY;
        applyAmountRotation();
    }

    public boolean canAnimateIntro() {
        return this.renderer != null;
    }

    public boolean canAnimateFlight() {
        return this.renderer != null && isShown() && getAlpha() > 0.01f;
    }

    public float getFlightYaw() {
        if (this.renderer == null) {
            return 0.0f;
        }
        return (float) Math.toRadians(r2.angleX + r2.angleX3);
    }

    public float getFlightPitch() {
        if (this.renderer == null) {
            return 0.0f;
        }
        return (float) Math.toRadians(r2.angleY + r2.headerTilt);
    }

    public void whenReady(Runnable runnable) {
        this.readyCallback = runnable;
        if (this.renderer != null) {
            whenRendererReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.notifyReady();
                }
            });
        } else if (runnable != null) {
            post(new Runnable() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.notifyReady();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyReady() {
        Runnable runnable = this.readyCallback;
        this.readyCallback = null;
        if (runnable != null) {
            runnable.run();
        }
    }

    public void setHeaderTilt(float f) {
        GLIconRenderer gLIconRenderer = this.renderer;
        if (gLIconRenderer != null) {
            gLIconRenderer.headerTilt = f;
        }
    }

    public float getConversionWobble() {
        return this.conversionWobble;
    }

    public void setConversionWobble(float f) {
        this.conversionWobble = f;
        updateRoll();
    }

    public void setSwipeProgress(float f, boolean z) {
        long jNanoTime = System.nanoTime();
        if (!this.hasSwipeProgress) {
            this.hasSwipeProgress = true;
            this.swipeProgress = f;
            this.lastSwipeSample = jNanoTime;
            return;
        }
        float f2 = f - this.swipeProgress;
        this.swipeProgress = f;
        if (!z) {
            this.previousSwipeVelocity = 0.0f;
            this.lastSwipeSample = jNanoTime;
        } else if (f2 != 0.0f) {
            float fMax = Math.max(0.008333334f, Math.min(0.033333335f, (jNanoTime - this.lastSwipeSample) / 1.0E9f));
            this.lastSwipeSample = jNanoTime;
            float f3 = f2 / fMax;
            float fDp = (-(f3 - this.previousSwipeVelocity)) * AndroidUtilities.dp(140.0f);
            this.previousSwipeVelocity = f3;
            if (this.swipeTranslationSpring == null) {
                SpringAnimation springAnimation = new SpringAnimation(this, DynamicAnimation.TRANSLATION_X);
                this.swipeTranslationSpring = springAnimation;
                springAnimation.setSpring(new SpringForce(0.0f).setDampingRatio(0.32f).setStiffness(300.0f));
                this.swipeTranslationSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda9
                    @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                    public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f4, float f5) {
                        this.f$0.lambda$setSwipeProgress$1(dynamicAnimation, f4, f5);
                    }
                });
            }
            float fMax2 = Math.max(-AndroidUtilities.dp(1600.0f), Math.min(AndroidUtilities.dp(1600.0f), this.swipeTranslationVelocity + fDp));
            this.swipeTranslationVelocity = fMax2;
            this.swipeTranslationSpring.setStartVelocity(fMax2);
            this.swipeTranslationSpring.animateToFinalPosition(0.0f);
        }
        if (f2 == 0.0f) {
            return;
        }
        this.swipeAngularVelocity = Math.max(-720.0f, Math.min(720.0f, this.swipeAngularVelocity - (f2 * 300.0f)));
        if (this.swipeMotionRunning || !this.attached) {
            return;
        }
        this.swipeMotionRunning = true;
        this.lastSwipeFrame = 0L;
        Choreographer.getInstance().postFrameCallback(this.swipeMotion);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setSwipeProgress$1(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.swipeTranslationVelocity = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void advanceSwipeMotion(long j) {
        if (this.attached) {
            float fMin = this.lastSwipeFrame == 0 ? 0.016666668f : Math.min(0.05f, (j - r0) / 1.0E9f);
            this.lastSwipeFrame = j;
            float fExp = (float) Math.exp((-fMin) / 0.55f);
            float f = this.swipeYaw;
            float f2 = this.swipeAngularVelocity;
            this.swipeYaw = (f + ((0.55f * f2) * (1.0f - fExp))) % 360.0f;
            this.swipeAngularVelocity = f2 * fExp;
            updateSwipeRotation();
            if (Math.abs(this.swipeAngularVelocity) > 0.5f) {
                Choreographer.getInstance().postFrameCallback(this.swipeMotion);
                return;
            }
            this.swipeAngularVelocity = 0.0f;
            this.swipeMotionRunning = false;
            this.lastSwipeFrame = 0L;
        }
    }

    private void updateSwipeRotation() {
        GLIconRenderer gLIconRenderer = this.renderer;
        if (gLIconRenderer != null) {
            gLIconRenderer.angleX3 = this.swipeYaw + this.introYaw;
            return;
        }
        RLottieImageView rLottieImageView = this.lottieView;
        if (rLottieImageView != null) {
            rLottieImageView.setRotationY(this.swipeYaw + this.introYaw);
        }
    }

    private void updateRoll() {
        GLIconRenderer gLIconRenderer = this.renderer;
        if (gLIconRenderer != null) {
            gLIconRenderer.diamondRoll = this.conversionWobble + this.introRoll;
            return;
        }
        RLottieImageView rLottieImageView = this.lottieView;
        if (rLottieImageView != null) {
            rLottieImageView.setRotation(this.conversionWobble + this.introRoll);
        }
    }

    public void setStarParticlesView(StarParticlesView starParticlesView) {
        DiamondSurfaceView diamondSurfaceView = this.glView;
        if (diamondSurfaceView != null) {
            diamondSurfaceView.setStarParticlesView(starParticlesView);
        }
        GLIconTextureView gLIconTextureView = this.textureView;
        if (gLIconTextureView != null) {
            gLIconTextureView.setStarParticlesView(starParticlesView);
        }
    }

    public void setInputDrivenRotation() {
        this.inputDrivenRotation = true;
        setClipChildren(false);
        setClipToPadding(false);
        removeCallbacks(this.startIdleRotation);
        setClickable(false);
        if (this.renderer != null) {
            DiamondSurfaceView diamondSurfaceView = this.glView;
            if (diamondSurfaceView != null) {
                diamondSurfaceView.reserveRenderScale(3.5f);
            }
            setIdleAnimationEnabled(false);
            GLIconRenderer gLIconRenderer = this.renderer;
            this.restingAngleX = gLIconRenderer.angleX;
            this.restingAngleY = gLIconRenderer.angleY;
            if (this.running) {
                startAmountMotion();
            }
        }
    }

    public void onAmountEdited(boolean z) {
        if (this.inputDrivenRotation && this.running && this.dragPointerId == -1) {
            RLottieImageView rLottieImageView = this.lottieView;
            if (rLottieImageView == null) {
                this.editMomentum = Math.max(-360.0f, Math.min(360.0f, this.editMomentum + (z ? -160.0f : 160.0f)));
            } else {
                if (rLottieImageView.isPlaying()) {
                    return;
                }
                this.lottieView.setProgress(0.0f);
                this.lottieView.playAnimation();
            }
        }
    }

    private void startAmountMotion() {
        Choreographer.getInstance().removeFrameCallback(this.amountMotion);
        this.lastMotionFrame = 0L;
        Choreographer.getInstance().postFrameCallback(this.amountMotion);
    }

    private void stopAmountMotion() {
        Choreographer.getInstance().removeFrameCallback(this.amountMotion);
        this.lastMotionFrame = 0L;
        this.editMomentum = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void advanceAmountMotion(long j) {
        if (this.running && this.inputDrivenRotation && this.renderer != null) {
            float fMin = this.lastMotionFrame == 0 ? 0.0f : Math.min(0.05f, (j - r0) / 1.0E9f);
            this.lastMotionFrame = j;
            if (this.dragPointerId == -1) {
                float fExp = (float) Math.exp((-fMin) / 0.75f);
                float f = this.restingAngleX;
                float f2 = this.continuousSpeed;
                if (f2 == 0.0f) {
                    f2 = -18.0f;
                }
                float f3 = f + (f2 * fMin);
                float f4 = this.editMomentum;
                this.restingAngleX = (f3 + ((0.75f * f4) * (1.0f - fExp))) % 360.0f;
                this.editMomentum = f4 * fExp;
                double d = (this.tiltPhase + (((((double) fMin) * 3.141592653589793d) * 2.0d) / 8.0d)) % 6.283185307179586d;
                this.tiltPhase = d;
                this.restingAngleY = ((float) Math.sin(d)) * 9.0f;
                applyAmountRotation();
            }
            Choreographer.getInstance().postFrameCallback(this.amountMotion);
        }
    }

    private void applyAmountRotation() {
        GLIconRenderer gLIconRenderer = this.renderer;
        if (gLIconRenderer == null) {
            return;
        }
        float f = this.restingAngleX;
        float f2 = this.returnOffsetX;
        float f3 = this.returnProgress;
        gLIconRenderer.angleX = f + (f2 * (1.0f - f3));
        gLIconRenderer.angleY = this.restingAngleY + (this.returnOffsetY * (1.0f - f3));
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return (isEnabled() && this.inputDrivenRotation && this.renderer != null && this.running) || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            return;
        }
        endDrag(false);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled() || !this.inputDrivenRotation || this.renderer == null || !this.running) {
            return super.onTouchEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            ValueAnimator valueAnimator = this.returnAnimator;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
                this.returnAnimator.cancel();
                this.returnAnimator = null;
            }
            this.editMomentum = 0.0f;
            this.dragPointerId = motionEvent.getPointerId(0);
            this.dragX = motionEvent.getX();
            this.dragY = motionEvent.getY();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            animateDragScale(3.0f);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.dragPointerId);
                if (iFindPointerIndex < 0) {
                    endDrag(true);
                    return true;
                }
                float f = 0.8f / AndroidUtilities.density;
                this.renderer.angleX += (motionEvent.getX(iFindPointerIndex) - this.dragX) * f;
                this.renderer.angleY += (motionEvent.getY(iFindPointerIndex) - this.dragY) * f;
                this.dragX = motionEvent.getX(iFindPointerIndex);
                this.dragY = motionEvent.getY(iFindPointerIndex);
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return this.dragPointerId != -1;
                }
                if (motionEvent.getPointerId(motionEvent.getActionIndex()) == this.dragPointerId) {
                    int i = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.dragPointerId = motionEvent.getPointerId(i);
                    this.dragX = motionEvent.getX(i);
                    this.dragY = motionEvent.getY(i);
                }
                return true;
            }
        }
        endDrag(true);
        return true;
    }

    public void setIntroProgress(float f) {
        float f2 = 1.0f - f;
        float f3 = (2.0f * f2) + 1.0f;
        this.iconView.setScaleX(f3);
        this.iconView.setScaleY(f3);
        if (this.renderer != null) {
            setRenderScale(f3 > 1.0f ? 3.5f : 1.0f);
        }
        this.introYaw = f2 * (-720.0f);
        this.introRoll = ((float) Math.sin(((double) f) * 3.141592653589793d)) * 35.0f;
        updateSwipeRotation();
        updateRoll();
    }

    private void animateDragScale(float f) {
        if (f > 1.0f && this.renderer != null) {
            setRenderScale(3.5f);
        }
        if (this.dragScaleSpring == null) {
            SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.iconView.getScaleX()));
            this.dragScaleSpring = springAnimation;
            springAnimation.setSpring(new SpringForce(f).setDampingRatio(0.55f).setStiffness(280.0f));
            this.dragScaleSpring.setMinimumVisibleChange(0.001f);
            this.dragScaleSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$animateDragScale$2(dynamicAnimation, f2, f3);
                }
            });
            this.dragScaleSpring.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda2
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f2, float f3) {
                    this.f$0.lambda$animateDragScale$3(dynamicAnimation, z, f2, f3);
                }
            });
        }
        this.dragScaleSpring.animateToFinalPosition(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateDragScale$2(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.iconView.setScaleX(f);
        this.iconView.setScaleY(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateDragScale$3(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (z || f > 1.001f || this.renderer == null) {
            return;
        }
        setRenderScale(1.0f);
    }

    private void endDrag(boolean z) {
        if (this.dragPointerId != -1) {
            this.dragPointerId = -1;
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(false);
            }
            if (this.renderer != null) {
                if (z) {
                    this.returnOffsetX = (float) Math.IEEEremainder(r0.angleX - this.restingAngleX, 360.0d);
                    this.returnOffsetY = (float) Math.IEEEremainder(this.renderer.angleY - this.restingAngleY, 360.0d);
                    this.returnProgress = 0.0f;
                    ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    this.returnAnimator = valueAnimatorOfFloat;
                    valueAnimatorOfFloat.setDuration(350L);
                    this.returnAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
                    this.returnAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            this.f$0.lambda$endDrag$4(valueAnimator);
                        }
                    });
                    this.returnAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletDiamondView.3
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            WalletDiamondView.this.returnAnimator = null;
                            WalletDiamondView.this.restoreRestingRotation();
                        }
                    });
                    this.returnAnimator.start();
                } else {
                    restoreRestingRotation();
                }
            }
        }
        if (!z) {
            finishDragReturn();
        }
        if (this.iconView == null) {
            return;
        }
        if (z) {
            animateDragScale(1.0f);
            return;
        }
        SpringAnimation springAnimation = this.dragScaleSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.dragScaleSpring = null;
        }
        this.iconView.setScaleX(1.0f);
        this.iconView.setScaleY(1.0f);
        if (this.renderer != null) {
            setRenderScale(1.0f);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endDrag$4(ValueAnimator valueAnimator) {
        this.returnProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        applyAmountRotation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void restoreRestingRotation() {
        this.returnProgress = 1.0f;
        this.returnOffsetY = 0.0f;
        this.returnOffsetX = 0.0f;
        applyAmountRotation();
    }

    private void finishDragReturn() {
        ValueAnimator valueAnimator = this.returnAnimator;
        if (valueAnimator == null) {
            return;
        }
        valueAnimator.removeAllListeners();
        this.returnAnimator.cancel();
        this.returnAnimator = null;
        restoreRestingRotation();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int iResolveSize = View.resolveSize(this.preferredSize + getPaddingLeft() + getPaddingRight(), i);
        int iResolveSize2 = View.resolveSize(this.preferredSize + getPaddingTop() + getPaddingBottom(), i2);
        setMeasuredDimension(iResolveSize, iResolveSize2);
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(Math.max(0, Math.min((iResolveSize - getPaddingLeft()) - getPaddingRight(), (iResolveSize2 - getPaddingTop()) - getPaddingBottom())), TLObject.FLAG_30);
        this.iconView.measure(iMakeMeasureSpec, iMakeMeasureSpec);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.attached = true;
        updateAnimationState();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.attached = false;
        Choreographer.getInstance().removeFrameCallback(this.swipeMotion);
        SpringAnimation springAnimation = this.swipeTranslationSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.swipeTranslationSpring = null;
            setTranslationX(0.0f);
        }
        this.swipeTranslationVelocity = 0.0f;
        this.previousSwipeVelocity = 0.0f;
        this.lastSwipeSample = 0L;
        this.swipeMotionRunning = false;
        this.hasSwipeProgress = false;
        this.lastSwipeFrame = 0L;
        this.swipeAngularVelocity = 0.0f;
        this.swipeYaw = 0.0f;
        updateSwipeRotation();
        updateAnimationState();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        updateAnimationState();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        updateAnimationState();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        updateAnimationState();
    }

    private void updateAnimationState() {
        boolean z = !this.paused && this.attached && isShown() && getWindowVisibility() == 0 && hasWindowFocus();
        if (this.running == z) {
            return;
        }
        this.running = z;
        if (!z) {
            endDrag(false);
        }
        final int i = this.visibilityGeneration + 1;
        this.visibilityGeneration = i;
        if (this.renderer != null) {
            removeCallbacks(this.startIdleRotation);
            setIdleAnimationEnabled(false);
            if (this.inputDrivenRotation) {
                if (z) {
                    startAmountMotion();
                } else {
                    stopAmountMotion();
                }
            } else if (z) {
                GLIconRenderer gLIconRenderer = this.renderer;
                gLIconRenderer.angleX = 0.0f;
                gLIconRenderer.angleY = 0.0f;
                whenRendererReady(new Runnable() { // from class: org.telegram.ui.Wallet.WalletDiamondView$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$updateAnimationState$5(i);
                    }
                });
            }
            setRendererPaused(!z);
            return;
        }
        RLottieImageView rLottieImageView = this.lottieView;
        if (rLottieImageView != null) {
            if (z) {
                if (!this.startedLottie || this.resumeLottie) {
                    rLottieImageView.playAnimation();
                }
                this.startedLottie = true;
                return;
            }
            this.resumeLottie = rLottieImageView.isPlaying();
            this.lottieView.stopAnimation();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateAnimationState$5(int i) {
        if (this.running && !this.inputDrivenRotation && i == this.visibilityGeneration) {
            postDelayed(this.startIdleRotation, 500L);
        }
    }
}
