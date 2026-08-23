package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Property;
import android.view.RoundedCorner;
import android.view.View;
import android.view.WindowInsets;
import androidx.activity.BackEventCompat;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.ViewUtils;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialMainContainerBackHelper extends MaterialBackAnimationHelper<View> {
    private static final float MIN_SCALE = 0.9f;
    private float[] expandedCornerRadii;
    private Rect initialHideFromClipBounds;
    private Rect initialHideToClipBounds;
    private float initialTouchY;
    private final float maxTranslationY;
    private final float minEdgeGap;

    public MaterialMainContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.minEdgeGap = resources.getDimension(C1349R.dimen.m3_back_progress_main_container_min_edge_gap);
        this.maxTranslationY = resources.getDimension(C1349R.dimen.m3_back_progress_main_container_max_translation_y);
    }

    public Rect getInitialHideToClipBounds() {
        return this.initialHideToClipBounds;
    }

    public Rect getInitialHideFromClipBounds() {
        return this.initialHideFromClipBounds;
    }

    public void startBackProgress(BackEventCompat backEventCompat, View view) {
        super.onStartBackProgress(backEventCompat);
        startBackProgress(backEventCompat.getTouchY(), view);
    }

    public void startBackProgress(float f, View view) {
        this.initialHideToClipBounds = ViewUtils.calculateRectFromBounds(this.view);
        if (view != null) {
            this.initialHideFromClipBounds = ViewUtils.calculateOffsetRectFromBounds(this.view, view);
        }
        this.initialTouchY = f;
    }

    public void updateBackProgress(BackEventCompat backEventCompat, View view, float f) {
        if (super.onUpdateBackProgress(backEventCompat) == null) {
            return;
        }
        if (view != null && view.getVisibility() != 4) {
            view.setVisibility(4);
        }
        updateBackProgress(backEventCompat.getProgress(), backEventCompat.getSwipeEdge() == 0, backEventCompat.getTouchY(), f);
    }

    public void updateBackProgress(float f, boolean z, float f2, float f3) {
        float fInterpolateProgress = interpolateProgress(f);
        float width = this.view.getWidth();
        float height = this.view.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float fLerp = AnimationUtils.lerp(1.0f, MIN_SCALE, fInterpolateProgress);
        float fLerp2 = AnimationUtils.lerp(0.0f, Math.max(0.0f, ((width - (MIN_SCALE * width)) / 2.0f) - this.minEdgeGap), fInterpolateProgress) * (z ? 1 : -1);
        float fMin = Math.min(Math.max(0.0f, ((height - (fLerp * height)) / 2.0f) - this.minEdgeGap), this.maxTranslationY);
        float f4 = f2 - this.initialTouchY;
        float fLerp3 = AnimationUtils.lerp(0.0f, fMin, Math.abs(f4) / height) * Math.signum(f4);
        if (Float.isNaN(fLerp) || Float.isNaN(fLerp2) || Float.isNaN(fLerp3)) {
            return;
        }
        this.view.setScaleX(fLerp);
        this.view.setScaleY(fLerp);
        this.view.setTranslationX(fLerp2);
        this.view.setTranslationY(fLerp3);
        V v = this.view;
        if (v instanceof ClippableRoundedCornerLayout) {
            ((ClippableRoundedCornerLayout) v).updateCornerRadii(lerpCornerRadii(getExpandedCornerRadii(), f3, fInterpolateProgress));
        }
    }

    public void finishBackProgress(long j, View view) {
        AnimatorSet animatorSetCreateResetScaleAndTranslationAnimator = createResetScaleAndTranslationAnimator(view);
        animatorSetCreateResetScaleAndTranslationAnimator.setDuration(j);
        animatorSetCreateResetScaleAndTranslationAnimator.start();
        resetInitialValues();
    }

    public void cancelBackProgress(View view) {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet animatorSetCreateResetScaleAndTranslationAnimator = createResetScaleAndTranslationAnimator(view);
        V v = this.view;
        if (v instanceof ClippableRoundedCornerLayout) {
            animatorSetCreateResetScaleAndTranslationAnimator.playTogether(createCornerAnimator((ClippableRoundedCornerLayout) v));
        }
        animatorSetCreateResetScaleAndTranslationAnimator.setDuration(this.cancelDuration);
        animatorSetCreateResetScaleAndTranslationAnimator.start();
        resetInitialValues();
    }

    private void resetInitialValues() {
        this.initialTouchY = 0.0f;
        this.initialHideToClipBounds = null;
        this.initialHideFromClipBounds = null;
    }

    private AnimatorSet createResetScaleAndTranslationAnimator(final View view) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.SCALE_Y, 1.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.TRANSLATION_X, 0.0f), ObjectAnimator.ofFloat(this.view, (Property<V, Float>) View.TRANSLATION_Y, 0.0f));
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialMainContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                View view2 = view;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
            }
        });
        return animatorSet;
    }

    private ValueAnimator createCornerAnimator(final ClippableRoundedCornerLayout clippableRoundedCornerLayout) {
        ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new TypeEvaluator() { // from class: com.google.android.material.motion.MaterialMainContainerBackHelper$$ExternalSyntheticLambda0
            @Override // android.animation.TypeEvaluator
            public final Object evaluate(float f, Object obj, Object obj2) {
                return MaterialMainContainerBackHelper.lerpCornerRadii((float[]) obj, (float[]) obj2, f);
            }
        }, clippableRoundedCornerLayout.getCornerRadii(), getExpandedCornerRadii());
        valueAnimatorOfObject.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.motion.MaterialMainContainerBackHelper$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                clippableRoundedCornerLayout.updateCornerRadii((float[]) valueAnimator.getAnimatedValue());
            }
        });
        return valueAnimatorOfObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static float[] lerpCornerRadii(float[] fArr, float[] fArr2, float f) {
        return new float[]{AnimationUtils.lerp(fArr[0], fArr2[0], f), AnimationUtils.lerp(fArr[1], fArr2[1], f), AnimationUtils.lerp(fArr[2], fArr2[2], f), AnimationUtils.lerp(fArr[3], fArr2[3], f), AnimationUtils.lerp(fArr[4], fArr2[4], f), AnimationUtils.lerp(fArr[5], fArr2[5], f), AnimationUtils.lerp(fArr[6], fArr2[6], f), AnimationUtils.lerp(fArr[7], fArr2[7], f)};
    }

    private static float[] lerpCornerRadii(float[] fArr, float f, float f2) {
        return new float[]{AnimationUtils.lerp(fArr[0], f, f2), AnimationUtils.lerp(fArr[1], f, f2), AnimationUtils.lerp(fArr[2], f, f2), AnimationUtils.lerp(fArr[3], f, f2), AnimationUtils.lerp(fArr[4], f, f2), AnimationUtils.lerp(fArr[5], f, f2), AnimationUtils.lerp(fArr[6], f, f2), AnimationUtils.lerp(fArr[7], f, f2)};
    }

    public float[] getExpandedCornerRadii() {
        if (this.expandedCornerRadii == null) {
            this.expandedCornerRadii = calculateExpandedCornerRadii();
        }
        return this.expandedCornerRadii;
    }

    public void clearExpandedCornerRadii() {
        this.expandedCornerRadii = null;
    }

    private float[] calculateExpandedCornerRadii() {
        WindowInsets rootWindowInsets;
        if (Build.VERSION.SDK_INT >= 31 && (rootWindowInsets = this.view.getRootWindowInsets()) != null) {
            DisplayMetrics displayMetrics = this.view.getResources().getDisplayMetrics();
            int i = displayMetrics.widthPixels;
            int i2 = displayMetrics.heightPixels;
            int[] iArr = new int[2];
            this.view.getLocationOnScreen(iArr);
            int i3 = iArr[0];
            int i4 = iArr[1];
            int width = this.view.getWidth();
            int height = this.view.getHeight();
            int roundedCornerRadius = (i3 == 0 && i4 == 0) ? getRoundedCornerRadius(rootWindowInsets, 0) : 0;
            int i5 = width + i3;
            int roundedCornerRadius2 = (i5 < i || i4 != 0) ? 0 : getRoundedCornerRadius(rootWindowInsets, 1);
            int roundedCornerRadius3 = (i5 < i || i4 + height < i2) ? 0 : getRoundedCornerRadius(rootWindowInsets, 2);
            int roundedCornerRadius4 = (i3 != 0 || i4 + height < i2) ? 0 : getRoundedCornerRadius(rootWindowInsets, 3);
            float f = roundedCornerRadius;
            float f2 = roundedCornerRadius2;
            float f3 = roundedCornerRadius3;
            float f4 = roundedCornerRadius4;
            return new float[]{f, f, f2, f2, f3, f3, f4, f4};
        }
        return new float[]{0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f};
    }

    private int getRoundedCornerRadius(WindowInsets windowInsets, int i) {
        RoundedCorner roundedCorner = windowInsets.getRoundedCorner(i);
        if (roundedCorner != null) {
            return roundedCorner.getRadius();
        }
        return 0;
    }
}
