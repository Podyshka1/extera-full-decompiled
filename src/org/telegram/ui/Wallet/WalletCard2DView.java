package org.telegram.ui.Wallet;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import com.android.dx.io.Opcodes;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.tgnet.TLObject;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.ScaleStateListAnimator;

/* JADX INFO: loaded from: classes8.dex */
public class WalletCard2DView extends FrameLayout implements SensorEventListener {
    static final Object BACK_PATTERN = new Object();
    private int activeDragPointer;
    private float additionalTilt;
    private float appliedSensorRotationX;
    private float appliedSensorRotationY;
    private boolean backFacing;
    private boolean cardAttached;
    private final CardSurface cardSurface;
    private float currentRotationX;
    private float currentRotationY;
    private ValueAnimator dragReleaseAnimator;
    private float dragRotationX;
    private float dragRotationY;
    private float dragStartRotationX;
    private float dragStartRotationY;
    private final boolean externallyControlled;
    private final FaceLayout faceContent;
    private final WalletCardProjection faceProjection;
    private final FrameLayout frontFace;
    private final GradientSurface gradientSurface;
    private float gyroscopeTiltScale;
    private long lastGyroscopeTimestamp;
    private float lightDirectionX;
    private float lightDirectionY;
    private WalletCard2DMaterial material;
    private final Sensor motionSensor;
    private Runnable onMaterialReady;
    private final float[] orientation;
    private final ProjectedCardLayout projectedCard;
    private final float[] projectedCorners;
    private int renderedHeight;
    private int renderedWidth;
    private float renderedX;
    private float renderedY;
    private int requestedCardIcon;
    private final float[] rotationMatrix;
    private final SensorManager sensorManager;
    private float sensorRotationX;
    private float sensorRotationY;
    private float stickerKickX;
    private float stickerKickY;
    private final WalletCardTiltBaseline tiltBaseline;
    private float touchDownX;
    private float touchDownY;
    private boolean touchMoved;
    private final int touchSlop;
    private boolean trackingMotion;
    private final Runnable transformUpdater;
    private final boolean usesRotationVector;

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    public boolean isBackFacing() {
        return this.backFacing;
    }

    public void setStickerStyle(float[] fArr) {
        this.gradientSurface.style = fArr;
        this.projectedCard.invalidate();
        this.gradientSurface.invalidate();
        this.cardSurface.invalidate();
    }

    public void whenMaterialReady(Runnable runnable) {
        if (this.material != null) {
            runnable.run();
        } else {
            this.onMaterialReady = runnable;
        }
    }

    public WalletCard2DView(Context context, int i, int i2) {
        this(context, i, i2, false);
    }

    public WalletCard2DView(final Context context, final int i, final int i2, boolean z) {
        super(context);
        this.faceProjection = new WalletCardProjection();
        this.projectedCorners = new float[8];
        this.rotationMatrix = new float[9];
        this.orientation = new float[3];
        this.tiltBaseline = new WalletCardTiltBaseline(15.0f);
        this.lightDirectionX = -0.22f;
        this.lightDirectionY = -0.28f;
        this.activeDragPointer = -1;
        this.gyroscopeTiltScale = 1.0f;
        this.renderedX = Float.NaN;
        this.renderedY = Float.NaN;
        this.transformUpdater = new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DView.1
            @Override // java.lang.Runnable
            public void run() {
                if (WalletCard2DView.this.trackingMotion) {
                    WalletCard2DView.this.tiltBaseline.update(System.nanoTime());
                    WalletCard2DView walletCard2DView = WalletCard2DView.this;
                    walletCard2DView.sensorRotationX = walletCard2DView.tiltBaseline.getRotationX();
                    WalletCard2DView walletCard2DView2 = WalletCard2DView.this;
                    walletCard2DView2.sensorRotationY = WalletCard2DView.clamp(walletCard2DView2.tiltBaseline.getRotationY() * 1.5f, -15.0f, 15.0f);
                    WalletCard2DView.this.appliedSensorRotationX += (WalletCard2DView.this.sensorRotationX - WalletCard2DView.this.appliedSensorRotationX) * 1.0f;
                    WalletCard2DView.this.appliedSensorRotationY += (WalletCard2DView.this.sensorRotationY - WalletCard2DView.this.appliedSensorRotationY) * 1.0f;
                    WalletCard2DView walletCard2DView3 = WalletCard2DView.this;
                    walletCard2DView3.applyRotation((walletCard2DView3.appliedSensorRotationX * WalletCard2DView.this.gyroscopeTiltScale) + WalletCard2DView.this.dragRotationX + WalletCard2DView.this.additionalTilt, (WalletCard2DView.this.appliedSensorRotationY * WalletCard2DView.this.gyroscopeTiltScale) + WalletCard2DView.this.dragRotationY);
                    WalletCard2DView.this.postOnAnimation(this);
                }
            }
        };
        this.externallyControlled = z;
        this.requestedCardIcon = i;
        boolean z2 = false;
        setClipChildren(false);
        setClipToPadding(false);
        setWillNotDraw(false);
        setCameraDistance(AndroidUtilities.dp(4800.0f));
        ScaleStateListAnimator.apply(this, 0.02f, 1.2f);
        ProjectedCardLayout projectedCardLayout = new ProjectedCardLayout(context);
        this.projectedCard = projectedCardLayout;
        addView(projectedCardLayout, LayoutHelper.createFrame(-1, -1, 17));
        FaceLayout faceLayout = new FaceLayout(context);
        this.faceContent = faceLayout;
        faceLayout.setPadding(2, 2, 2, 2);
        faceLayout.setLayerType(2, null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(-2, -2, -2, -2);
        projectedCardLayout.addView(faceLayout, layoutParams);
        GradientSurface gradientSurface = new GradientSurface(context);
        this.gradientSurface = gradientSurface;
        faceLayout.addView(gradientSurface, LayoutHelper.createFrame(-1, -1, 17));
        CardSurface cardSurface = new CardSurface(context, i, i2);
        this.cardSurface = cardSurface;
        faceLayout.addView(cardSurface, LayoutHelper.createFrame(-1, -1, 17));
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.Wallet.WalletCard2DView.2
            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                if (!WalletCard2DView.this.backFacing || view.getTag() == WalletCard2DView.BACK_PATTERN) {
                    return super.drawChild(canvas, view, j);
                }
                return false;
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                return WalletCard2DView.this.backFacing || super.onInterceptTouchEvent(motionEvent);
            }
        };
        this.frontFace = frameLayout;
        frameLayout.setClipChildren(false);
        frameLayout.setClipToPadding(false);
        frameLayout.setLayerType(2, null);
        frameLayout.setPivotX(0.0f);
        frameLayout.setPivotY(0.0f);
        faceLayout.addView(frameLayout, LayoutHelper.createFrame(336, Opcodes.MUL_DOUBLE_2ADDR, 51));
        this.touchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        SensorManager sensorManager = (SensorManager) context.getSystemService("sensor");
        this.sensorManager = sensorManager;
        Sensor defaultSensor = sensorManager.getDefaultSensor(15);
        defaultSensor = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        defaultSensor = defaultSensor == null ? sensorManager.getDefaultSensor(4) : defaultSensor;
        this.motionSensor = defaultSensor;
        if (defaultSensor != null && defaultSensor.getType() != 4) {
            z2 = true;
        }
        this.usesRotationVector = z2;
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$0();
            }
        };
        if (WalletCard2DMaterial.isPrepared(i)) {
            this.material = new WalletCard2DMaterial(context.getApplicationContext(), i, i2, runnable);
        } else {
            projectedCardLayout.setVisibility(4);
            WalletCard2DMaterial.ASSET_QUEUE.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DView$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$new$2(context, i, i2, runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        this.gradientSurface.invalidate();
        this.cardSurface.invalidate();
        this.projectedCard.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(Context context, int i, int i2, final Runnable runnable) {
        final WalletCard2DMaterial walletCard2DMaterial = new WalletCard2DMaterial(context.getApplicationContext(), i, i2, runnable);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$new$1(walletCard2DMaterial, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1(WalletCard2DMaterial walletCard2DMaterial, Runnable runnable) {
        this.material = walletCard2DMaterial;
        walletCard2DMaterial.setIcon(this.requestedCardIcon);
        this.renderedX = Float.NaN;
        applyRotation(this.currentRotationX, this.currentRotationY);
        this.projectedCard.setVisibility(0);
        runnable.run();
        Runnable runnable2 = this.onMaterialReady;
        if (runnable2 != null) {
            this.onMaterialReady = null;
            runnable2.run();
        }
    }

    public void getFrontFaceProjection(Matrix matrix) {
        matrix.set(this.projectedCard.projection);
        matrix.preTranslate(this.faceContent.getLeft(), this.faceContent.getTop());
    }

    public FrameLayout getFrontFace() {
        return this.frontFace;
    }

    public void setAdditionalTilt(float f) {
        float f2 = this.additionalTilt;
        if (f2 == f) {
            return;
        }
        float f3 = (this.currentRotationX + f) - f2;
        this.additionalTilt = f;
        applyRotation(f3, this.currentRotationY);
    }

    public void setUseGyroscope(float f) {
        if (this.gyroscopeTiltScale == f) {
            return;
        }
        this.gyroscopeTiltScale = f;
        applyRotation((this.appliedSensorRotationX * f) + this.dragRotationX + this.additionalTilt, (this.appliedSensorRotationY * f) + this.dragRotationY);
    }

    public float getCardRotationX() {
        return this.currentRotationX;
    }

    public float getCardRotationY() {
        return this.currentRotationY;
    }

    public void setHasCardNumber(boolean z) {
        this.cardSurface.setHasCardNumber(z);
    }

    public void setCardIcon(int i) {
        this.cardSurface.setCardIcon(i);
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(Math.round(size / 1.64f), TLObject.FLAG_30));
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.frontFace.setScaleX(i / AndroidUtilities.dp(336.0f));
        this.frontFace.setScaleY(i2 / AndroidUtilities.dp(205.0f));
        applyRotation(this.currentRotationX, this.currentRotationY);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.externallyControlled) {
            return;
        }
        this.cardAttached = true;
        this.lastGyroscopeTimestamp = 0L;
        this.tiltBaseline.reset();
        this.sensorRotationX = 0.0f;
        this.sensorRotationY = 0.0f;
        this.appliedSensorRotationX = 0.0f;
        this.appliedSensorRotationY = 0.0f;
        updateMotionTracking();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        this.cardAttached = false;
        updateMotionTracking();
        cancelDragRelease();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        updateMotionTracking();
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        updateMotionTracking();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        updateMotionTracking();
    }

    private void updateMotionTracking() {
        if (this.sensorManager == null || this.externallyControlled) {
            return;
        }
        boolean z = this.cardAttached && isShown() && getWindowVisibility() == 0 && hasWindowFocus();
        if (this.trackingMotion == z) {
            return;
        }
        this.trackingMotion = z;
        removeCallbacks(this.transformUpdater);
        if (z) {
            this.lastGyroscopeTimestamp = 0L;
            Sensor sensor = this.motionSensor;
            if (sensor != null) {
                this.sensorManager.registerListener(this, sensor, 1);
            }
            postOnAnimation(this.transformUpdater);
            return;
        }
        this.sensorManager.unregisterListener(this);
    }

    @Override // android.hardware.SensorEventListener
    public void onSensorChanged(SensorEvent sensorEvent) {
        if (this.usesRotationVector) {
            SensorManager.getRotationMatrixFromVector(this.rotationMatrix, sensorEvent.values);
            SensorManager.getOrientation(this.rotationMatrix, this.orientation);
            if (Float.isNaN(this.orientation[1]) || Float.isNaN(this.orientation[2])) {
                return;
            }
            this.lightDirectionX = clamp((float) Math.sin(this.orientation[2]), -0.82f, 0.82f);
            this.lightDirectionY = clamp(-((float) Math.sin(this.orientation[1])), -0.82f, 0.82f);
        } else {
            updateFromRawGyroscope(sensorEvent);
        }
        this.tiltBaseline.setSensorRotation(((-this.lightDirectionY) / 0.82f) * 15.0f, (this.lightDirectionX / 0.82f) * 15.0f, sensorEvent.timestamp);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int i = 0;
        if (this.externallyControlled) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            cancelDragRelease();
            getParent().requestDisallowInterceptTouchEvent(true);
            rebaseDrag(motionEvent, 0);
            this.touchMoved = false;
            setPressed(true);
            return true;
        }
        if (actionMasked == 1) {
            this.activeDragPointer = -1;
            getParent().requestDisallowInterceptTouchEvent(false);
            setPressed(false);
            if (this.touchMoved) {
                animateBackFromDrag();
            } else {
                postDelayed(new Runnable() { // from class: org.telegram.ui.Wallet.WalletCard2DView$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.performClick();
                    }
                }, Math.max(0L, 80 - (motionEvent.getEventTime() - motionEvent.getDownTime())));
            }
            return true;
        }
        if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.activeDragPointer);
            if (iFindPointerIndex < 0) {
                return true;
            }
            float x = motionEvent.getX(iFindPointerIndex);
            float y = motionEvent.getY(iFindPointerIndex);
            if (Math.abs(x - this.touchDownX) > this.touchSlop || Math.abs(y - this.touchDownY) > this.touchSlop) {
                this.touchMoved = true;
                setPressed(false);
            }
            if (this.touchMoved) {
                float f = this.dragStartRotationY;
                this.dragRotationY = clamp(f - ((x - this.touchDownX) * 0.03f), f - 32.0f, f + 32.0f);
                float f2 = this.dragStartRotationX;
                this.dragRotationX = clamp(f2 - ((y - this.touchDownY) * 0.03f), f2 - 22.0f, f2 + 22.0f);
            }
            return true;
        }
        if (actionMasked == 3) {
            this.activeDragPointer = -1;
            getParent().requestDisallowInterceptTouchEvent(false);
            setPressed(false);
            if (this.touchMoved) {
                animateBackFromDrag();
            }
            return true;
        }
        if (actionMasked == 5) {
            rebaseDrag(motionEvent, motionEvent.getActionIndex());
            this.touchMoved = true;
            setPressed(false);
            return true;
        }
        if (actionMasked == 6 && motionEvent.getPointerId(motionEvent.getActionIndex()) == this.activeDragPointer) {
            while (true) {
                if (i >= motionEvent.getPointerCount()) {
                    break;
                }
                if (i != motionEvent.getActionIndex()) {
                    rebaseDrag(motionEvent, i);
                    break;
                }
                i++;
            }
        }
        return true;
    }

    private void rebaseDrag(MotionEvent motionEvent, int i) {
        this.activeDragPointer = motionEvent.getPointerId(i);
        this.touchDownX = motionEvent.getX(i);
        this.touchDownY = motionEvent.getY(i);
        this.dragStartRotationX = this.dragRotationX;
        this.dragStartRotationY = this.dragRotationY;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return true;
    }

    public void setStickerKick(float f, float f2) {
        if (this.stickerKickX == f && this.stickerKickY == f2) {
            return;
        }
        this.stickerKickX = f;
        this.stickerKickY = f2;
        applyRotation(this.currentRotationX, this.currentRotationY);
    }

    public void applyRotation(float f, float f2) {
        this.currentRotationX = f;
        this.currentRotationY = f2;
        float f3 = f + this.stickerKickX;
        float f4 = f2 + this.stickerKickY;
        boolean z = Math.cos(Math.toRadians((double) f3)) * Math.cos(Math.toRadians((double) f4)) < 0.0d;
        if (this.backFacing != z) {
            this.backFacing = z;
            this.frontFace.invalidate();
            this.cardSurface.invalidate();
        }
        int width = getWidth();
        int height = getHeight();
        if (this.renderedX == f3 && this.renderedY == f4 && this.renderedWidth == width && this.renderedHeight == height) {
            return;
        }
        this.renderedX = f3;
        this.renderedY = f4;
        this.renderedWidth = width;
        this.renderedHeight = height;
        if (width > 0 && height > 0) {
            this.faceProjection.project(width, height, f3, f4, z, this.projectedCorners);
            WalletCard2DMaterial walletCard2DMaterial = this.material;
            if (walletCard2DMaterial != null) {
                walletCard2DMaterial.updateDepthProjection(this.faceProjection, width, height, z);
            }
            this.projectedCard.setProjectedCorners(this.projectedCorners);
        }
        WalletCard2DMaterial walletCard2DMaterial2 = this.material;
        if (walletCard2DMaterial2 != null) {
            walletCard2DMaterial2.setRotation(f3, f4);
        }
        this.gradientSurface.setTilt(f3, f4);
        this.cardSurface.setTilt(f3, f4);
    }

    private void animateBackFromDrag() {
        cancelDragRelease();
        final float f = this.dragRotationX;
        final float f2 = this.dragRotationY;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.dragReleaseAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(600L);
        this.dragReleaseAnimator.setInterpolator(new OvershootInterpolator(1.2f));
        this.dragReleaseAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Wallet.WalletCard2DView$$ExternalSyntheticLambda4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f$0.lambda$animateBackFromDrag$3(f, f2, valueAnimator);
            }
        });
        this.dragReleaseAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Wallet.WalletCard2DView.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                WalletCard2DView.this.dragRotationX = 0.0f;
                WalletCard2DView.this.dragRotationY = 0.0f;
                WalletCard2DView.this.dragReleaseAnimator = null;
            }
        });
        this.dragReleaseAnimator.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBackFromDrag$3(float f, float f2, ValueAnimator valueAnimator) {
        float fFloatValue = 1.0f - ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.dragRotationX = f * fFloatValue;
        this.dragRotationY = f2 * fFloatValue;
    }

    private void cancelDragRelease() {
        ValueAnimator valueAnimator = this.dragReleaseAnimator;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
            this.dragReleaseAnimator.cancel();
            this.dragReleaseAnimator = null;
        }
    }

    private void updateFromRawGyroscope(SensorEvent sensorEvent) {
        if (this.lastGyroscopeTimestamp != 0) {
            float f = (sensorEvent.timestamp - r0) * 1.0E-9f;
            if (f > 0.0f && f < 0.1f) {
                this.lightDirectionX = clamp(this.lightDirectionX - ((sensorEvent.values[1] * f) * (-0.75f)), -0.82f, 0.82f);
                this.lightDirectionY = clamp(this.lightDirectionY + (sensorEvent.values[0] * f * (-0.75f)), -0.82f, 0.82f);
            }
        }
        this.lastGyroscopeTimestamp = sensorEvent.timestamp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float clamp(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public final class ProjectedCardLayout extends FrameLayout {
        private final Matrix projection;
        private final float[] sourceCorners;
        private boolean validProjection;

        public ProjectedCardLayout(Context context) {
            super(context);
            this.projection = new Matrix();
            this.sourceCorners = new float[8];
            setClipChildren(false);
            setClipToPadding(false);
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            WalletCard2DView.this.renderedWidth = -1;
            WalletCard2DView walletCard2DView = WalletCard2DView.this;
            walletCard2DView.applyRotation(walletCard2DView.currentRotationX, WalletCard2DView.this.currentRotationY);
        }

        public void setProjectedCorners(float[] fArr) {
            int width = getWidth();
            int height = getHeight();
            if (width == 0 || height == 0) {
                return;
            }
            float[] fArr2 = this.sourceCorners;
            fArr2[0] = 0.0f;
            fArr2[1] = 0.0f;
            float f = width;
            fArr2[2] = f;
            fArr2[3] = 0.0f;
            fArr2[4] = f;
            float f2 = height;
            fArr2[5] = f2;
            fArr2[6] = 0.0f;
            fArr2[7] = f2;
            this.validProjection = this.projection.setPolyToPoly(fArr2, 0, fArr, 0, 4);
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            if (WalletCard2DView.this.material != null) {
                WalletCard2DView.this.material.drawDepth(canvas, WalletCard2DView.this.gradientSurface.style);
            }
            if (this.validProjection) {
                int iSave = canvas.save();
                canvas.concat(this.projection);
                super.dispatchDraw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
    }

    public static final class FaceLayout extends FrameLayout {
        private final Path facePath;

        public FaceLayout(Context context) {
            super(context);
            this.facePath = new Path();
            setClipChildren(false);
            setClipToPadding(false);
        }

        @Override // android.view.View
        public void onSizeChanged(int i, int i2, int i3, int i4) {
            super.onSizeChanged(i, i2, i3, i4);
            WalletCardGeometry.setFacePath(this.facePath, (i - getPaddingLeft()) - getPaddingRight(), (i2 - getPaddingTop()) - getPaddingBottom());
            this.facePath.offset(getPaddingLeft(), getPaddingTop());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(Canvas canvas) {
            int iSave = canvas.save();
            canvas.clipPath(this.facePath);
            super.dispatchDraw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    public final class GradientSurface extends View {
        private float[] style;

        public GradientSurface(Context context) {
            super(context);
        }

        public void setTilt(float f, float f2) {
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int iSave = canvas.save();
            canvas.scale(getWidth() / 336.0f, getHeight() / 205.0f);
            if (WalletCard2DView.this.material != null) {
                WalletCard2DView.this.material.drawSurface(canvas, this.style);
            } else {
                canvas.drawColor(WalletGiftPalette.card2DEdgeTone(-16216082, this.style));
            }
            canvas.restoreToCount(iSave);
        }
    }

    public final class CardSurface extends View {
        private boolean hasCardNumber;

        public CardSurface(Context context, int i, int i2) {
            super(context);
        }

        public void setCardIcon(int i) {
            WalletCard2DView.this.requestedCardIcon = i;
            if (WalletCard2DView.this.material != null) {
                WalletCard2DView.this.material.setIcon(i);
            }
            invalidate();
        }

        public void setHasCardNumber(boolean z) {
            this.hasCardNumber = z;
            invalidate();
        }

        public void setTilt(float f, float f2) {
            invalidate();
        }

        @Override // android.view.View
        public void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int iSave = canvas.save();
            canvas.scale(getWidth() / 336.0f, getHeight() / 205.0f);
            if (WalletCard2DView.this.material != null) {
                WalletCard2DView.this.material.drawStars(canvas, !WalletCard2DView.this.backFacing && this.hasCardNumber);
            }
            if (WalletCard2DView.this.material != null && !WalletCard2DView.this.backFacing) {
                WalletCard2DView.this.material.drawQr(canvas);
            }
            if (WalletCard2DView.this.material != null) {
                WalletCard2DView.this.material.drawRim(canvas);
            }
            canvas.restoreToCount(iSave);
        }
    }
}
