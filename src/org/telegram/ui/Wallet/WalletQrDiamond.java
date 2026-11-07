package org.telegram.ui.Wallet;

import android.animation.ValueAnimator;
import android.app.ActivityManager;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LiteMode;
import org.telegram.messenger.SharedConfig;
import org.telegram.ui.Components.CubicBezierInterpolator;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView;

/* JADX INFO: loaded from: classes8.dex */
final class WalletQrDiamond extends FrameLayout {
    private final ImageView fallback;
    private float lastX;
    private float lastY;
    private float pitch;
    private int pointer;
    private ValueAnimator returnAnimator;
    private boolean returning;
    private float scale;
    private SpringAnimation scaleSpring;
    private float spinOffset;
    private final WalletDiamondTextureView surface;
    private float yaw;

    public static boolean isStatic(Context context) {
        ActivityManager activityManager;
        return SharedConfig.getDevicePerformanceClass() == 0 || LiteMode.isPowerSaverApplied() || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || activityManager.getDeviceConfigurationInfo().reqGlEsVersion < 196608;
    }

    public WalletQrDiamond(Context context) {
        super(context);
        this.scale = 1.0f;
        this.pointer = -1;
        setClipChildren(false);
        ImageView imageView = new ImageView(context);
        this.fallback = imageView;
        imageView.setImageResource(C2807R.drawable.mini_gram_72);
        imageView.setScaleX(0.7407407f);
        imageView.setScaleY(0.7407407f);
        addView(imageView, LayoutHelper.createFrame(-1, -1.0f));
        WalletDiamondTextureView walletDiamondTextureView = new WalletDiamondTextureView(context, new Runnable() { // from class: org.telegram.ui.Wallet.WalletQrDiamond$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.updatePose();
            }
        }, 0) { // from class: org.telegram.ui.Wallet.WalletQrDiamond.1
            @Override // org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView
            public void onRenderError() {
                setPaused(true);
                setVisibility(8);
                WalletQrDiamond.this.fallback.setVisibility(0);
            }

            @Override // org.telegram.ui.Components.Premium.GLIcon.WalletDiamondTextureView, android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                super.onSurfaceTextureUpdated(surfaceTexture);
                if (isReady() && WalletQrDiamond.this.fallback.getVisibility() == 0) {
                    WalletQrDiamond.this.fallback.setVisibility(4);
                }
            }
        };
        this.surface = walletDiamondTextureView;
        addView(walletDiamondTextureView, LayoutHelper.createFrame(-1, -1.0f));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.surface.setPaused(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.surface.setPaused(true);
        ValueAnimator valueAnimator = this.returnAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        SpringAnimation springAnimation = this.scaleSpring;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        super.onDetachedFromWindow();
    }

    private float restingYaw() {
        return ((float) (((SystemClock.uptimeMillis() / 1000.0d) * 0.5961171984672546d) % 6.283185307179586d)) + this.spinOffset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePose() {
        boolean z = this.pointer != -1;
        if (!z && !this.returning) {
            this.yaw = restingYaw();
            this.pitch = 0.0f;
        }
        boolean z2 = z || this.returning || this.scale > 1.001f;
        this.surface.setPose(this.yaw, this.pitch, z2, z2);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.surface.isReady() || this.surface.getVisibility() != 0) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (!this.returning && this.scale <= 1.001f) {
                this.yaw = restingYaw();
                this.pitch = 0.0f;
            }
            ValueAnimator valueAnimator = this.returnAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.returnAnimator = null;
            }
            this.returning = false;
            this.pointer = motionEvent.getPointerId(0);
            this.lastX = motionEvent.getX();
            this.lastY = motionEvent.getY();
            if (getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
            animateScale(3.0f);
            return true;
        }
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                int i = this.pointer;
                if (i == -1) {
                    return false;
                }
                int iFindPointerIndex = motionEvent.findPointerIndex(i);
                if (iFindPointerIndex < 0) {
                    release();
                    return true;
                }
                float radians = ((float) Math.toRadians(0.800000011920929d)) / AndroidUtilities.density;
                this.yaw += (motionEvent.getX(iFindPointerIndex) - this.lastX) * radians;
                this.pitch += (motionEvent.getY(iFindPointerIndex) - this.lastY) * radians;
                this.lastX = motionEvent.getX(iFindPointerIndex);
                this.lastY = motionEvent.getY(iFindPointerIndex);
                return true;
            }
            if (actionMasked != 3) {
                if (actionMasked != 6) {
                    return this.pointer != -1;
                }
                if (motionEvent.getPointerId(motionEvent.getActionIndex()) == this.pointer) {
                    int i2 = motionEvent.getActionIndex() == 0 ? 1 : 0;
                    this.pointer = motionEvent.getPointerId(i2);
                    this.lastX = motionEvent.getX(i2);
                    this.lastY = motionEvent.getY(i2);
                }
                return true;
            }
        }
        if (this.pointer != -1) {
            release();
        }
        return true;
    }

    private void release() {
        this.pointer = -1;
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(false);
        }
        this.spinOffset = (float) Math.IEEEremainder((this.spinOffset + this.yaw) - restingYaw(), 6.283185307179586d);
        final float fIEEEremainder = (float) Math.IEEEremainder(this.pitch, 6.283185307179586d);
        this.returning = true;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.returnAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(350L);
        this.returnAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        this.returnAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletQrDiamond$$ExternalSyntheticLambda2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$release$0(fIEEEremainder, valueAnimator);
            }
        });
        this.returnAnimator.start();
        animateScale(1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$release$0(float f, ValueAnimator valueAnimator) {
        float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.yaw = restingYaw();
        this.pitch = f * fFloatValue;
        this.returning = fFloatValue > 0.0f;
    }

    private void animateScale(float f) {
        if (this.scaleSpring == null) {
            SpringAnimation springAnimation = new SpringAnimation(new FloatValueHolder(this.scale));
            this.scaleSpring = springAnimation;
            springAnimation.setSpring(new SpringForce(f).setDampingRatio(0.55f).setStiffness(280.0f));
            this.scaleSpring.setMinimumVisibleChange(0.001f);
            this.scaleSpring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Wallet.WalletQrDiamond$$ExternalSyntheticLambda1
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                    this.f$0.lambda$animateScale$1(dynamicAnimation, f2, f3);
                }
            });
        }
        this.scaleSpring.animateToFinalPosition(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateScale$1(DynamicAnimation dynamicAnimation, float f, float f2) {
        this.scale = f;
        setScaleX(f);
        setScaleY(f);
    }
}
