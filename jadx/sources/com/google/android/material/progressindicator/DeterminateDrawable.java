package com.google.android.material.progressindicator;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import androidx.core.math.MathUtils;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.progressindicator.DrawingDelegate;

/* JADX INFO: loaded from: classes.dex */
public final class DeterminateDrawable<S extends BaseProgressIndicatorSpec> extends DrawableWithAnimatedVisibilityChange {
    private static final int AMPLITUDE_ANIMATION_DURATION_MS = 500;
    static final float FULL_AMPLITUDE_PROGRESS_MAX = 0.9f;
    static final float FULL_AMPLITUDE_PROGRESS_MIN = 0.1f;
    static final float GAP_RAMP_DOWN_THRESHOLD = 0.01f;
    private static final FloatPropertyCompat INDICATOR_LENGTH_IN_LEVEL = new FloatPropertyCompat("indicatorLevel") { // from class: com.google.android.material.progressindicator.DeterminateDrawable.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(DeterminateDrawable<?> determinateDrawable) {
            return determinateDrawable.getIndicatorFraction() * 10000.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(DeterminateDrawable<?> determinateDrawable, float f) {
            determinateDrawable.setIndicatorFraction(f / 10000.0f);
            determinateDrawable.maybeStartAmplitudeAnimator((int) f);
        }
    };
    static final int MAX_DRAWABLE_LEVEL = 10000;
    private static final int PHASE_ANIMATION_DURATION_MS = 1000;
    private static final float SPRING_FORCE_STIFFNESS = 50.0f;
    private final DrawingDelegate.ActiveIndicator activeIndicator;
    private ValueAnimator amplitudeAnimator;
    private TimeInterpolator amplitudeInterpolator;
    private TimeInterpolator amplitudeOffInterpolator;
    private TimeInterpolator amplitudeOnInterpolator;
    private DrawingDelegate<S> drawingDelegate;
    private final ValueAnimator phaseAnimator;
    private boolean skipAnimationOnLevelChange;
    private final SpringAnimation springAnimation;
    private float targetAmplitudeFraction;

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ boolean hideNow() {
        return super.hideNow();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ boolean isHiding() {
        return super.isHiding();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ boolean isShowing() {
        return super.isShowing();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ void registerAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        super.registerAnimationCallback(animatable2Compat$AnimationCallback);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2, boolean z3) {
        return super.setVisible(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(Animatable2Compat$AnimationCallback animatable2Compat$AnimationCallback) {
        return super.unregisterAnimationCallback(animatable2Compat$AnimationCallback);
    }

    DeterminateDrawable(Context context, final BaseProgressIndicatorSpec baseProgressIndicatorSpec, DrawingDelegate<S> drawingDelegate) {
        super(context, baseProgressIndicatorSpec);
        this.skipAnimationOnLevelChange = false;
        setDrawingDelegate(drawingDelegate);
        DrawingDelegate.ActiveIndicator activeIndicator = new DrawingDelegate.ActiveIndicator();
        this.activeIndicator = activeIndicator;
        activeIndicator.isDeterminate = true;
        SpringAnimation springAnimation = new SpringAnimation(this, INDICATOR_LENGTH_IN_LEVEL);
        this.springAnimation = springAnimation;
        springAnimation.setSpring(new SpringForce().setDampingRatio(1.0f).setStiffness(SPRING_FORCE_STIFFNESS));
        ValueAnimator valueAnimator = new ValueAnimator();
        this.phaseAnimator = valueAnimator;
        valueAnimator.setDuration(1000L);
        valueAnimator.setFloatValues(0.0f, 1.0f);
        valueAnimator.setRepeatCount(-1);
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.progressindicator.DeterminateDrawable$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DeterminateDrawable.$r8$lambda$TMiBORtMOk6krNAudyul128n9lo(this.f$0, baseProgressIndicatorSpec, valueAnimator2);
            }
        });
        if (baseProgressIndicatorSpec.hasWavyEffect(true) && baseProgressIndicatorSpec.waveSpeed != 0) {
            valueAnimator.start();
        }
        setGrowFraction(1.0f);
    }

    public static /* synthetic */ void $r8$lambda$TMiBORtMOk6krNAudyul128n9lo(DeterminateDrawable determinateDrawable, BaseProgressIndicatorSpec baseProgressIndicatorSpec, ValueAnimator valueAnimator) {
        determinateDrawable.getClass();
        if (baseProgressIndicatorSpec.hasWavyEffect(true) && baseProgressIndicatorSpec.waveSpeed != 0 && determinateDrawable.isVisible()) {
            determinateDrawable.invalidateSelf();
        }
    }

    private void maybeInitializeAmplitudeAnimator() {
        if (this.amplitudeAnimator != null) {
            return;
        }
        Context context = this.context;
        int i = C1349R.attr.motionEasingStandardInterpolator;
        TimeInterpolator timeInterpolator = AnimationUtils.LINEAR_INTERPOLATOR;
        this.amplitudeOnInterpolator = MotionUtils.resolveThemeInterpolator(context, i, timeInterpolator);
        this.amplitudeOffInterpolator = MotionUtils.resolveThemeInterpolator(this.context, C1349R.attr.motionEasingEmphasizedAccelerateInterpolator, timeInterpolator);
        ValueAnimator valueAnimator = new ValueAnimator();
        this.amplitudeAnimator = valueAnimator;
        valueAnimator.setDuration(500L);
        this.amplitudeAnimator.setFloatValues(0.0f, 1.0f);
        this.amplitudeAnimator.setInterpolator(null);
        this.amplitudeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.progressindicator.DeterminateDrawable$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                DeterminateDrawable determinateDrawable = this.f$0;
                determinateDrawable.activeIndicator.amplitudeFraction = determinateDrawable.amplitudeInterpolator.getInterpolation(determinateDrawable.amplitudeAnimator.getAnimatedFraction());
            }
        });
    }

    public static DeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return createLinearDrawable(context, linearProgressIndicatorSpec, new LinearDrawingDelegate(linearProgressIndicatorSpec));
    }

    static DeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(Context context, LinearProgressIndicatorSpec linearProgressIndicatorSpec, LinearDrawingDelegate linearDrawingDelegate) {
        return new DeterminateDrawable<>(context, linearProgressIndicatorSpec, linearDrawingDelegate);
    }

    public static DeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return createCircularDrawable(context, circularProgressIndicatorSpec, new CircularDrawingDelegate(circularProgressIndicatorSpec));
    }

    static DeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(Context context, CircularProgressIndicatorSpec circularProgressIndicatorSpec, CircularDrawingDelegate circularDrawingDelegate) {
        return new DeterminateDrawable<>(context, circularProgressIndicatorSpec, circularDrawingDelegate);
    }

    public void addSpringAnimationEndListener(DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.springAnimation.addEndListener(onAnimationEndListener);
    }

    public void removeSpringAnimationEndListener(DynamicAnimation.OnAnimationEndListener onAnimationEndListener) {
        this.springAnimation.removeEndListener(onAnimationEndListener);
    }

    @Override // com.google.android.material.progressindicator.DrawableWithAnimatedVisibilityChange
    boolean setVisibleInternal(boolean z, boolean z2, boolean z3) {
        boolean visibleInternal = super.setVisibleInternal(z, z2, z3);
        float systemAnimatorDurationScale = this.animatorDurationScaleProvider.getSystemAnimatorDurationScale(this.context.getContentResolver());
        if (systemAnimatorDurationScale == 0.0f) {
            this.skipAnimationOnLevelChange = true;
            return visibleInternal;
        }
        this.skipAnimationOnLevelChange = false;
        this.springAnimation.getSpring().setStiffness(SPRING_FORCE_STIFFNESS / systemAnimatorDurationScale);
        return visibleInternal;
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.springAnimation.skipToEnd();
        setIndicatorFraction(getLevel() / 10000.0f);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        float amplitudeFractionFromLevel = getAmplitudeFractionFromLevel(i);
        if (this.skipAnimationOnLevelChange) {
            this.springAnimation.skipToEnd();
            setIndicatorFraction(i / 10000.0f);
            setAmplitudeFraction(amplitudeFractionFromLevel);
            return true;
        }
        updateSpringMinVisibleChange();
        this.springAnimation.setStartValue(getIndicatorFraction() * 10000.0f);
        this.springAnimation.animateToFinalPosition(i);
        return true;
    }

    private void updateSpringMinVisibleChange() {
        int iWidth = getBounds().width();
        int iHeight = getBounds().height();
        if (iWidth <= 0 || iHeight <= 0) {
            return;
        }
        if (this.drawingDelegate instanceof LinearDrawingDelegate) {
            this.springAnimation.setMinimumVisibleChange(10000.0f / iWidth);
        } else {
            this.springAnimation.setMinimumVisibleChange((float) (10000.0d / (((double) Math.min(iHeight, iWidth)) * 3.141592653589793d)));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.drawingDelegate.getPreferredWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.drawingDelegate.getPreferredHeight();
    }

    public SpringForce getSpringForce() {
        return this.springAnimation.getSpring();
    }

    public void setSpringForce(SpringForce springForce) {
        this.springAnimation.setSpring(springForce);
    }

    void setLevelByFraction(float f) {
        setLevel((int) (f * 10000.0f));
    }

    private float getAmplitudeFractionFromLevel(int i) {
        float f = i;
        BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.baseSpec;
        return (f < baseProgressIndicatorSpec.waveAmplitudeRampProgressMin * 10000.0f || f > baseProgressIndicatorSpec.waveAmplitudeRampProgressMax * 10000.0f) ? 0.0f : 1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeStartAmplitudeAnimator(int i) {
        if (this.baseSpec.hasWavyEffect(true)) {
            maybeInitializeAmplitudeAnimator();
            float amplitudeFractionFromLevel = getAmplitudeFractionFromLevel(i);
            if (amplitudeFractionFromLevel != this.targetAmplitudeFraction) {
                if (this.amplitudeAnimator.isRunning()) {
                    this.amplitudeAnimator.cancel();
                }
                this.targetAmplitudeFraction = amplitudeFractionFromLevel;
                if (amplitudeFractionFromLevel == 1.0f) {
                    this.amplitudeInterpolator = this.amplitudeOnInterpolator;
                    this.amplitudeAnimator.start();
                    return;
                } else {
                    this.amplitudeInterpolator = this.amplitudeOffInterpolator;
                    this.amplitudeAnimator.reverse();
                    return;
                }
            }
            if (this.amplitudeAnimator.isRunning()) {
                return;
            }
            setAmplitudeFraction(amplitudeFractionFromLevel);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && isVisible() && canvas.getClipBounds(this.clipBounds)) {
            canvas.save();
            this.drawingDelegate.validateSpecAndAdjustCanvas(canvas, getBounds(), getGrowFraction(), isShowing(), isHiding());
            this.activeIndicator.phaseFraction = getPhaseFraction();
            this.paint.setStyle(Paint.Style.FILL);
            this.paint.setAntiAlias(true);
            DrawingDelegate.ActiveIndicator activeIndicator = this.activeIndicator;
            BaseProgressIndicatorSpec baseProgressIndicatorSpec = this.baseSpec;
            activeIndicator.color = baseProgressIndicatorSpec.indicatorColors[0];
            int iClamp = baseProgressIndicatorSpec.indicatorTrackGapSize;
            if (iClamp > 0) {
                if (!(this.drawingDelegate instanceof LinearDrawingDelegate)) {
                    iClamp = (int) ((iClamp * MathUtils.clamp(getIndicatorFraction(), 0.0f, GAP_RAMP_DOWN_THRESHOLD)) / GAP_RAMP_DOWN_THRESHOLD);
                }
                this.drawingDelegate.fillTrack(canvas, this.paint, getIndicatorFraction(), 1.0f, this.baseSpec.trackColor, getAlpha(), iClamp);
            } else {
                this.drawingDelegate.fillTrack(canvas, this.paint, 0.0f, 1.0f, baseProgressIndicatorSpec.trackColor, getAlpha(), 0);
            }
            this.drawingDelegate.fillIndicator(canvas, this.paint, this.activeIndicator, getAlpha());
            this.drawingDelegate.drawStopIndicator(canvas, this.paint, this.baseSpec.indicatorColors[0], getAlpha());
            canvas.restore();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getIndicatorFraction() {
        return this.activeIndicator.endFraction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setIndicatorFraction(float f) {
        this.activeIndicator.endFraction = f;
        invalidateSelf();
    }

    private void setAmplitudeFraction(float f) {
        this.activeIndicator.amplitudeFraction = f;
        invalidateSelf();
    }

    DrawingDelegate<S> getDrawingDelegate() {
        return this.drawingDelegate;
    }

    void setDrawingDelegate(DrawingDelegate<S> drawingDelegate) {
        this.drawingDelegate = drawingDelegate;
    }

    void setEnforcedDrawing(boolean z) {
        if (z && !this.phaseAnimator.isRunning()) {
            this.phaseAnimator.start();
        } else {
            if (z || !this.phaseAnimator.isRunning()) {
                return;
            }
            this.phaseAnimator.cancel();
        }
    }

    void setWaveAmplitudeRampProgressMin(float f) {
        this.baseSpec.waveAmplitudeRampProgressMin = f;
        invalidateSelf();
    }

    void setWaveAmplitudeRampProgressMax(float f) {
        this.baseSpec.waveAmplitudeRampProgressMax = f;
        invalidateSelf();
    }
}
