package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.R$attr;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback;
import com.google.android.material.C1349R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.progressindicator.BaseProgressIndicatorSpec;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseProgressIndicator<S extends BaseProgressIndicatorSpec> extends ProgressBar {
    static final float DEFAULT_OPACITY = 0.2f;
    static final int DEF_STYLE_RES = C1349R.style.Widget_MaterialComponents_ProgressIndicator;
    public static final int HIDE_ESCAPE = 3;
    public static final int HIDE_INWARD = 2;
    public static final int HIDE_NONE = 0;
    public static final int HIDE_OUTWARD = 1;
    static final int MAX_ALPHA = 255;
    static final int MAX_HIDE_DELAY = 1000;
    public static final int SHOW_INWARD = 2;
    public static final int SHOW_NONE = 0;
    public static final int SHOW_OUTWARD = 1;
    AnimatorDurationScaleProvider animatorDurationScaleProvider;
    private final Runnable delayedHide;
    private final Runnable delayedShow;
    private final DynamicAnimation.OnAnimationEndListener hideAfterMaxProgressListener;
    private final Animatable2Compat$AnimationCallback hideAnimationCallback;
    boolean initialized;
    private boolean isIndeterminateModeChangeRequested;
    private boolean isParentDoneInitializing;
    private long lastShowStartTime;
    private final int minHideDelay;
    private final int showDelay;
    S spec;
    private int storedProgress;
    private boolean storedProgressAnimated;
    private final Animatable2Compat$AnimationCallback switchIndeterminateModeCallback;
    private int visibilityAfterHide;

    /* JADX INFO: loaded from: classes5.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface HideAnimationBehavior {
    }

    /* JADX INFO: loaded from: classes5.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ShowAnimationBehavior {
    }

    abstract S createSpec(Context context, AttributeSet attributeSet);

    protected BaseProgressIndicator(Context context, AttributeSet attributeSet, int i, int i2) {
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, DEF_STYLE_RES), attributeSet, i);
        this.lastShowStartTime = -1L;
        this.isIndeterminateModeChangeRequested = false;
        this.visibilityAfterHide = 4;
        this.hideAfterMaxProgressListener = new DynamicAnimation.OnAnimationEndListener() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator$$ExternalSyntheticLambda0
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                BaseProgressIndicator.$r8$lambda$9LFVkjgCbQazReD7AnEDM8_FfLk(this.f$0, dynamicAnimation, z, f, f2);
            }
        };
        this.delayedShow = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.1
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator.this.internalShow();
            }
        };
        this.delayedHide = new Runnable() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.2
            @Override // java.lang.Runnable
            public void run() {
                BaseProgressIndicator.this.internalHide();
                BaseProgressIndicator.this.lastShowStartTime = -1L;
            }
        };
        this.switchIndeterminateModeCallback = new Animatable2Compat$AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.3
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                BaseProgressIndicator.this.setIndeterminate(false);
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setProgressCompat(baseProgressIndicator.storedProgress, BaseProgressIndicator.this.storedProgressAnimated);
            }
        };
        this.hideAnimationCallback = new Animatable2Compat$AnimationCallback() { // from class: com.google.android.material.progressindicator.BaseProgressIndicator.4
            @Override // androidx.vectordrawable.graphics.drawable.Animatable2Compat$AnimationCallback
            public void onAnimationEnd(Drawable drawable) {
                super.onAnimationEnd(drawable);
                if (BaseProgressIndicator.this.isIndeterminateModeChangeRequested) {
                    return;
                }
                BaseProgressIndicator baseProgressIndicator = BaseProgressIndicator.this;
                baseProgressIndicator.setVisibility(baseProgressIndicator.visibilityAfterHide);
            }
        };
        Context context2 = getContext();
        this.spec = (S) createSpec(context2, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1349R.styleable.BaseProgressIndicator, i, i2, new int[0]);
        this.showDelay = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.BaseProgressIndicator_showDelay, -1);
        this.minHideDelay = Math.min(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.BaseProgressIndicator_minHideDelay, -1), 1000);
        typedArrayObtainStyledAttributes.recycle();
        this.animatorDurationScaleProvider = new AnimatorDurationScaleProvider();
        this.isParentDoneInitializing = true;
    }

    private void registerAnimationCallbacks() {
        registerSwitchIndeterminateModeCallback();
        if (getProgressDrawable() != null) {
            getProgressDrawable().registerAnimationCallback(this.hideAnimationCallback);
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().registerAnimationCallback(this.hideAnimationCallback);
        }
    }

    void registerSwitchIndeterminateModeCallback() {
        if (getProgressDrawable() == null || getIndeterminateDrawable() == null) {
            return;
        }
        getIndeterminateDrawable().getAnimatorDelegate().registerAnimatorsCompleteCallback(this.switchIndeterminateModeCallback);
    }

    private void unregisterAnimationCallbacks() {
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().unregisterAnimationCallback(this.hideAnimationCallback);
            getIndeterminateDrawable().getAnimatorDelegate().unregisterAnimatorsCompleteCallback();
        }
        if (getProgressDrawable() != null) {
            getProgressDrawable().unregisterAnimationCallback(this.hideAnimationCallback);
        }
    }

    public void show() {
        if (this.showDelay > 0) {
            removeCallbacks(this.delayedShow);
            postDelayed(this.delayedShow, this.showDelay);
        } else {
            this.delayedShow.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalShow() {
        if (this.minHideDelay > 0) {
            this.lastShowStartTime = SystemClock.uptimeMillis();
        }
        setVisibility(0);
    }

    public void hide() {
        if (getVisibility() != 0) {
            removeCallbacks(this.delayedShow);
            return;
        }
        removeCallbacks(this.delayedHide);
        long jUptimeMillis = SystemClock.uptimeMillis() - this.lastShowStartTime;
        int i = this.minHideDelay;
        if (jUptimeMillis >= i) {
            this.delayedHide.run();
        } else {
            postDelayed(this.delayedHide, ((long) i) - jUptimeMillis);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void internalHide() {
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(false, false, true);
        if (isNoLongerNeedToBeVisible()) {
            setVisibility(4);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        applyNewVisibility(i == 0);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        applyNewVisibility(false);
    }

    protected void applyNewVisibility(boolean z) {
        if (this.isParentDoneInitializing) {
            ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).setVisible(visibleToUser(), false, z);
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        registerAnimationCallbacks();
        if (visibleToUser()) {
            internalShow();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.delayedHide);
        removeCallbacks(this.delayedShow);
        ((DrawableWithAnimatedVisibilityChange) getCurrentDrawable()).hideNow();
        unregisterAnimationCallbacks();
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        try {
            int iSave = canvas.save();
            if (getPaddingLeft() != 0 || getPaddingTop() != 0) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            if (getPaddingRight() != 0 || getPaddingBottom() != 0) {
                canvas.clipRect(0, 0, getWidth() - (getPaddingLeft() + getPaddingRight()), getHeight() - (getPaddingTop() + getPaddingBottom()));
            }
            getCurrentDrawable().draw(canvas);
            canvas.restoreToCount(iSave);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        int preferredWidth;
        int preferredHeight;
        try {
            DrawingDelegate<S> currentDrawingDelegate = getCurrentDrawingDelegate();
            if (currentDrawingDelegate == null) {
                return;
            }
            if (currentDrawingDelegate.getPreferredWidth() < 0) {
                preferredWidth = View.getDefaultSize(getSuggestedMinimumWidth(), i);
            } else {
                preferredWidth = currentDrawingDelegate.getPreferredWidth() + getPaddingLeft() + getPaddingRight();
            }
            if (currentDrawingDelegate.getPreferredHeight() < 0) {
                preferredHeight = View.getDefaultSize(getSuggestedMinimumHeight(), i2);
            } else {
                preferredHeight = currentDrawingDelegate.getPreferredHeight() + getPaddingTop() + getPaddingBottom();
            }
            setMeasuredDimension(preferredWidth, preferredHeight);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public void invalidate() {
        super.invalidate();
        if (getCurrentDrawable() != null) {
            getCurrentDrawable().invalidateSelf();
        }
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getCurrentDrawingDelegate().invalidateCachedPaths();
    }

    @Override // android.widget.ProgressBar
    public Drawable getCurrentDrawable() {
        return isIndeterminate() ? getIndeterminateDrawable() : getProgressDrawable();
    }

    private DrawingDelegate<S> getCurrentDrawingDelegate() {
        if (isIndeterminate()) {
            if (getIndeterminateDrawable() == null) {
                return null;
            }
            return getIndeterminateDrawable().getDrawingDelegate();
        }
        if (getProgressDrawable() == null) {
            return null;
        }
        return getProgressDrawable().getDrawingDelegate();
    }

    @Override // android.widget.ProgressBar
    public void setProgressDrawable(Drawable drawable) {
        if (drawable instanceof DeterminateDrawable) {
            DeterminateDrawable determinateDrawable = (DeterminateDrawable) drawable;
            determinateDrawable.hideNow();
            super.setProgressDrawable(determinateDrawable);
            determinateDrawable.setLevelByFraction(getProgress() / getMax());
            return;
        }
        if (!this.initialized) {
            super.setProgressDrawable(drawable);
            return;
        }
        throw new IllegalArgumentException("Cannot set framework drawable as progress drawable.");
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (drawable instanceof IndeterminateDrawable) {
            ((DrawableWithAnimatedVisibilityChange) drawable).hideNow();
            super.setIndeterminateDrawable(drawable);
        } else {
            if (!this.initialized) {
                super.setIndeterminateDrawable(drawable);
                return;
            }
            throw new IllegalArgumentException("Cannot set framework drawable as indeterminate drawable.");
        }
    }

    @Override // android.widget.ProgressBar
    public DeterminateDrawable<S> getProgressDrawable() {
        return (DeterminateDrawable) super.getProgressDrawable();
    }

    @Override // android.widget.ProgressBar
    public IndeterminateDrawable<S> getIndeterminateDrawable() {
        return (IndeterminateDrawable) super.getIndeterminateDrawable();
    }

    boolean visibleToUser() {
        return isAttachedToWindow() && getWindowVisibility() == 0 && isEffectivelyVisible();
    }

    boolean isEffectivelyVisible() {
        View view = this;
        while (view.getVisibility() == 0) {
            Object parent = view.getParent();
            if (parent == null) {
                return getWindowVisibility() == 0;
            }
            if (!(parent instanceof View)) {
                return true;
            }
            view = (View) parent;
        }
        return false;
    }

    private boolean isNoLongerNeedToBeVisible() {
        if (getProgressDrawable() == null || !getProgressDrawable().isVisible()) {
            return getIndeterminateDrawable() == null || !getIndeterminateDrawable().isVisible();
        }
        return false;
    }

    @Override // android.widget.ProgressBar
    public synchronized void setIndeterminate(boolean z) {
        try {
            if (z == isIndeterminate()) {
                return;
            }
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange != null) {
                drawableWithAnimatedVisibilityChange.hideNow();
            }
            super.setIndeterminate(z);
            DrawableWithAnimatedVisibilityChange drawableWithAnimatedVisibilityChange2 = (DrawableWithAnimatedVisibilityChange) getCurrentDrawable();
            if (drawableWithAnimatedVisibilityChange2 != null) {
                drawableWithAnimatedVisibilityChange2.setVisible(visibleToUser(), false, false);
            }
            if ((drawableWithAnimatedVisibilityChange2 instanceof IndeterminateDrawable) && visibleToUser()) {
                ((IndeterminateDrawable) drawableWithAnimatedVisibilityChange2).getAnimatorDelegate().startAnimator();
            }
            this.isIndeterminateModeChangeRequested = false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public int getTrackThickness() {
        return this.spec.trackThickness;
    }

    public void setTrackThickness(int i) {
        S s = this.spec;
        if (s.trackThickness != i) {
            s.trackThickness = i;
            requestLayout();
        }
    }

    public int[] getIndicatorColor() {
        return this.spec.indicatorColors;
    }

    public void setIndicatorColor(int... iArr) {
        if (iArr.length == 0) {
            iArr = new int[]{MaterialColors.getColor(getContext(), R$attr.colorPrimary, -1)};
        }
        if (Arrays.equals(getIndicatorColor(), iArr)) {
            return;
        }
        this.spec.indicatorColors = iArr;
        getIndeterminateDrawable().getAnimatorDelegate().invalidateSpecValues();
        invalidate();
    }

    public int getTrackColor() {
        return this.spec.trackColor;
    }

    public void setTrackColor(int i) {
        S s = this.spec;
        if (s.trackColor != i) {
            s.trackColor = i;
            invalidate();
        }
    }

    public int getTrackCornerRadius() {
        return this.spec.trackCornerRadius;
    }

    public void setTrackCornerRadius(int i) {
        S s = this.spec;
        if (s.trackCornerRadius != i) {
            s.trackCornerRadius = Math.min(i, s.trackThickness / 2);
            this.spec.useRelativeTrackCornerRadius = false;
            invalidate();
        }
    }

    public float getTrackCornerRadiusFraction() {
        return this.spec.trackCornerRadiusFraction;
    }

    public void setTrackCornerRadiusFraction(float f) {
        S s = this.spec;
        if (s.trackCornerRadiusFraction != f) {
            s.trackCornerRadiusFraction = Math.min(f, 0.5f);
            this.spec.useRelativeTrackCornerRadius = true;
            invalidate();
        }
    }

    public int getIndicatorTrackGapSize() {
        return this.spec.indicatorTrackGapSize;
    }

    public void setIndicatorTrackGapSize(int i) {
        S s = this.spec;
        if (s.indicatorTrackGapSize != i) {
            s.indicatorTrackGapSize = i;
            s.validateSpec();
            invalidate();
        }
    }

    public int getWaveAmplitude() {
        return this.spec.waveAmplitude;
    }

    public void setWaveAmplitude(int i) {
        S s = this.spec;
        if (s.waveAmplitude != i) {
            s.waveAmplitude = Math.abs(i);
            requestLayout();
        }
    }

    public int getWavelengthDeterminate() {
        return this.spec.wavelengthDeterminate;
    }

    public void setWavelengthDeterminate(int i) {
        S s = this.spec;
        if (s.wavelengthDeterminate != i) {
            s.wavelengthDeterminate = Math.abs(i);
            if (isIndeterminate()) {
                return;
            }
            requestLayout();
        }
    }

    public int getWavelengthIndeterminate() {
        return this.spec.wavelengthIndeterminate;
    }

    public void setWavelengthIndeterminate(int i) {
        S s = this.spec;
        if (s.wavelengthIndeterminate != i) {
            s.wavelengthIndeterminate = Math.abs(i);
            if (isIndeterminate()) {
                requestLayout();
            }
        }
    }

    public void setWavelength(int i) {
        setWavelengthDeterminate(i);
        setWavelengthIndeterminate(i);
    }

    public int getWaveSpeed() {
        return this.spec.waveSpeed;
    }

    public void setWaveSpeed(int i) {
        this.spec.waveSpeed = i;
        getProgressDrawable().setEnforcedDrawing(this.spec.waveSpeed != 0);
    }

    public void setWaveAmplitudeRampProgressMin(float f) {
        getProgressDrawable().setWaveAmplitudeRampProgressMin(f);
        invalidate();
    }

    public void setWaveAmplitudeRampProgressMax(float f) {
        getProgressDrawable().setWaveAmplitudeRampProgressMax(f);
        invalidate();
    }

    public int getShowAnimationBehavior() {
        return this.spec.showAnimationBehavior;
    }

    public void setShowAnimationBehavior(int i) {
        this.spec.showAnimationBehavior = i;
        invalidate();
    }

    public int getHideAnimationBehavior() {
        return this.spec.hideAnimationBehavior;
    }

    public void setHideAnimationBehavior(int i) {
        this.spec.hideAnimationBehavior = i;
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public synchronized void setProgress(int i) {
        if (isIndeterminate()) {
            return;
        }
        setProgressCompat(i, false);
    }

    public void setProgressCompat(int i, boolean z) {
        if (isIndeterminate()) {
            if (getProgressDrawable() != null) {
                this.storedProgress = i;
                this.storedProgressAnimated = z;
                this.isIndeterminateModeChangeRequested = true;
                if (!getIndeterminateDrawable().isVisible() || this.animatorDurationScaleProvider.getSystemAnimatorDurationScale(getContext().getContentResolver()) == 0.0f) {
                    this.switchIndeterminateModeCallback.onAnimationEnd(getIndeterminateDrawable());
                    return;
                } else {
                    getIndeterminateDrawable().getAnimatorDelegate().requestCancelAnimatorAfterCurrentCycle();
                    return;
                }
            }
            return;
        }
        super.setProgress(i);
        if (getProgressDrawable() == null || z) {
            return;
        }
        getProgressDrawable().jumpToCurrentState();
    }

    public void setVisibilityAfterHide(int i) {
        if (i != 0 && i != 4 && i != 8) {
            throw new IllegalArgumentException("The component's visibility must be one of VISIBLE, INVISIBLE, and GONE defined in View.");
        }
        this.visibilityAfterHide = i;
    }

    public static /* synthetic */ void $r8$lambda$9LFVkjgCbQazReD7AnEDM8_FfLk(BaseProgressIndicator baseProgressIndicator, DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        if (baseProgressIndicator.getProgressDrawable() == null || baseProgressIndicator.getProgressDrawable().getLevel() != 10000) {
            return;
        }
        baseProgressIndicator.hide();
    }

    public void setHideAfterMaxProgress(boolean z) {
        if (getProgressDrawable() == null) {
            return;
        }
        if (z) {
            getProgressDrawable().addSpringAnimationEndListener(this.hideAfterMaxProgressListener);
        } else {
            getProgressDrawable().removeSpringAnimationEndListener(this.hideAfterMaxProgressListener);
        }
    }

    public void setIndeterminateAnimatorDurationScale(float f) {
        S s = this.spec;
        if (s.indeterminateAnimatorDurationScale != f) {
            s.indeterminateAnimatorDurationScale = f;
            getIndeterminateDrawable().getAnimatorDelegate().invalidateSpecValues();
        }
    }

    public void setAnimatorDurationScaleProvider(AnimatorDurationScaleProvider animatorDurationScaleProvider) {
        this.animatorDurationScaleProvider = animatorDurationScaleProvider;
        if (getProgressDrawable() != null) {
            getProgressDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
        if (getIndeterminateDrawable() != null) {
            getIndeterminateDrawable().animatorDurationScaleProvider = animatorDurationScaleProvider;
        }
    }
}
