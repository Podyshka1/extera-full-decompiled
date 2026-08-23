package com.google.android.material.card;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$attr;
import androidx.cardview.R$style;
import androidx.cardview.R$styleable;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.C1349R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.CutCornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.RoundedCornerTreatment;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListShapeAppearanceModel;

/* JADX INFO: loaded from: classes5.dex */
class MaterialCardViewHelper {
    private static final float CARD_VIEW_SHADOW_MULTIPLIER = 1.5f;
    private static final int CHECKED_ICON_LAYER_INDEX = 2;
    private static final Drawable CHECKED_ICON_NONE;
    private static final double COS_45 = Math.cos(Math.toRadians(45.0d));
    public static final int DEFAULT_FADE_ANIM_DURATION = 300;
    private static final int DEFAULT_STROKE_VALUE = -1;
    private static final int NOT_SET = -1;
    private final MaterialShapeDrawable bgDrawable;
    private float cardCornerRadius;
    private boolean checkable;
    private Drawable checkedIcon;
    private int checkedIconGravity;
    private int checkedIconMargin;
    private int checkedIconSize;
    private ColorStateList checkedIconTint;
    private LayerDrawable clickableForegroundDrawable;
    private Drawable fgDrawable;
    private final MaterialShapeDrawable foregroundContentDrawable;
    private MaterialShapeDrawable foregroundShapeDrawable;
    private ValueAnimator iconAnimator;
    private final TimeInterpolator iconFadeAnimInterpolator;
    private final int iconFadeInAnimDuration;
    private final int iconFadeOutAnimDuration;
    private final MaterialCardView materialCardView;
    private ColorStateList rippleColor;
    private Drawable rippleDrawable;
    private ShapeAppearance shapeAppearanceModel;
    private ColorStateList strokeColor;
    private int strokeWidth;
    private final Rect userContentPadding = new Rect();
    private boolean isBackgroundOverwritten = false;
    private float checkedAnimationProgress = 0.0f;

    static {
        CHECKED_ICON_NONE = Build.VERSION.SDK_INT <= 28 ? new ColorDrawable() : null;
    }

    public MaterialCardViewHelper(MaterialCardView materialCardView, AttributeSet attributeSet, int i, int i2) {
        this.cardCornerRadius = -1.0f;
        this.materialCardView = materialCardView;
        TypedArray typedArrayObtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.CardView, i, R$style.CardView);
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(materialCardView.getContext(), attributeSet, i, i2);
        this.bgDrawable = materialShapeDrawable;
        materialShapeDrawable.initializeElevationOverlay(materialCardView.getContext());
        materialShapeDrawable.setShadowColor(-12303292);
        ShapeAppearanceModel.Builder builder = materialShapeDrawable.getShapeAppearanceModel().toBuilder();
        if (typedArrayObtainStyledAttributes.hasValue(R$styleable.CardView_cardCornerRadius)) {
            float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.CardView_cardCornerRadius, 0.0f);
            this.cardCornerRadius = dimension;
            builder.setAllCornerSizes(dimension);
        }
        this.foregroundContentDrawable = new MaterialShapeDrawable();
        setShapeAppearance(builder.build());
        this.iconFadeAnimInterpolator = MotionUtils.resolveThemeInterpolator(materialCardView.getContext(), C1349R.attr.motionEasingLinearInterpolator, AnimationUtils.LINEAR_INTERPOLATOR);
        this.iconFadeInAnimDuration = MotionUtils.resolveThemeDuration(materialCardView.getContext(), C1349R.attr.motionDurationShort2, 300);
        this.iconFadeOutAnimDuration = MotionUtils.resolveThemeDuration(materialCardView.getContext(), C1349R.attr.motionDurationShort1, 300);
        typedArrayObtainStyledAttributes.recycle();
    }

    void loadFromAttributes(TypedArray typedArray) {
        StateListShapeAppearanceModel stateListShapeAppearanceModelCreate;
        ColorStateList colorStateList = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_strokeColor);
        this.strokeColor = colorStateList;
        if (colorStateList == null) {
            this.strokeColor = ColorStateList.valueOf(-1);
        }
        this.strokeWidth = typedArray.getDimensionPixelSize(C1349R.styleable.MaterialCardView_strokeWidth, 0);
        boolean z = typedArray.getBoolean(C1349R.styleable.MaterialCardView_android_checkable, false);
        this.checkable = z;
        this.materialCardView.setLongClickable(z);
        this.checkedIconTint = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_checkedIconTint);
        setCheckedIcon(MaterialResources.getDrawable(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_checkedIcon));
        setCheckedIconSize(typedArray.getDimensionPixelSize(C1349R.styleable.MaterialCardView_checkedIconSize, 0));
        setCheckedIconMargin(typedArray.getDimensionPixelSize(C1349R.styleable.MaterialCardView_checkedIconMargin, 0));
        this.checkedIconGravity = typedArray.getInteger(C1349R.styleable.MaterialCardView_checkedIconGravity, 8388661);
        ColorStateList colorStateList2 = MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_rippleColor);
        this.rippleColor = colorStateList2;
        if (colorStateList2 == null) {
            this.rippleColor = ColorStateList.valueOf(MaterialColors.getColor(this.materialCardView, R$attr.colorControlHighlight));
        }
        setCardForegroundColor(MaterialResources.getColorStateList(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_cardForegroundColor));
        updateRippleColor();
        updateElevation();
        updateStroke();
        this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
        Drawable clickableForeground = shouldUseClickableForeground() ? getClickableForeground() : this.foregroundContentDrawable;
        this.fgDrawable = clickableForeground;
        this.materialCardView.setForeground(insetDrawable(clickableForeground));
        if (this.cardCornerRadius != -1.0f || (stateListShapeAppearanceModelCreate = StateListShapeAppearanceModel.create(this.materialCardView.getContext(), typedArray, C1349R.styleable.MaterialCardView_shapeAppearance)) == null) {
            return;
        }
        SpringForce springForceCreateSpringForce = createSpringForce(this.materialCardView.getContext());
        this.bgDrawable.setCornerSpringForce(springForceCreateSpringForce);
        this.foregroundContentDrawable.setCornerSpringForce(springForceCreateSpringForce);
        MaterialShapeDrawable materialShapeDrawable = this.foregroundShapeDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setCornerSpringForce(springForceCreateSpringForce);
        }
        setShapeAppearance(stateListShapeAppearanceModelCreate);
    }

    boolean isBackgroundOverwritten() {
        return this.isBackgroundOverwritten;
    }

    void setBackgroundOverwritten(boolean z) {
        this.isBackgroundOverwritten = z;
    }

    void setStrokeColor(ColorStateList colorStateList) {
        if (this.strokeColor == colorStateList) {
            return;
        }
        this.strokeColor = colorStateList;
        updateStroke();
    }

    int getStrokeColor() {
        ColorStateList colorStateList = this.strokeColor;
        if (colorStateList == null) {
            return -1;
        }
        return colorStateList.getDefaultColor();
    }

    ColorStateList getStrokeColorStateList() {
        return this.strokeColor;
    }

    void setStrokeWidth(int i) {
        if (i == this.strokeWidth) {
            return;
        }
        this.strokeWidth = i;
        updateStroke();
    }

    int getStrokeWidth() {
        return this.strokeWidth;
    }

    MaterialShapeDrawable getBackground() {
        return this.bgDrawable;
    }

    void setCardBackgroundColor(ColorStateList colorStateList) {
        this.bgDrawable.setFillColor(colorStateList);
    }

    ColorStateList getCardBackgroundColor() {
        return this.bgDrawable.getFillColor();
    }

    void setCardForegroundColor(ColorStateList colorStateList) {
        MaterialShapeDrawable materialShapeDrawable = this.foregroundContentDrawable;
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        materialShapeDrawable.setFillColor(colorStateList);
    }

    ColorStateList getCardForegroundColor() {
        return this.foregroundContentDrawable.getFillColor();
    }

    void setUserContentPadding(int i, int i2, int i3, int i4) {
        this.userContentPadding.set(i, i2, i3, i4);
        updateContentPadding();
    }

    Rect getUserContentPadding() {
        return this.userContentPadding;
    }

    void updateClickable() {
        Drawable drawable = this.fgDrawable;
        Drawable clickableForeground = shouldUseClickableForeground() ? getClickableForeground() : this.foregroundContentDrawable;
        this.fgDrawable = clickableForeground;
        if (drawable != clickableForeground) {
            updateInsetForeground(clickableForeground);
        }
    }

    public void animateCheckedIcon(boolean z) {
        int i;
        float f = z ? 1.0f : 0.0f;
        float f2 = z ? 1.0f - this.checkedAnimationProgress : this.checkedAnimationProgress;
        ValueAnimator valueAnimator = this.iconAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.iconAnimator = null;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.checkedAnimationProgress, f);
        this.iconAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.card.MaterialCardViewHelper$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                MaterialCardViewHelper.$r8$lambda$6Fls0xe6HKTW6UQK8StrqpOvnl8(this.f$0, valueAnimator2);
            }
        });
        this.iconAnimator.setInterpolator(this.iconFadeAnimInterpolator);
        ValueAnimator valueAnimator2 = this.iconAnimator;
        if (z) {
            i = this.iconFadeInAnimDuration;
        } else {
            i = this.iconFadeOutAnimDuration;
        }
        valueAnimator2.setDuration((long) (i * f2));
        this.iconAnimator.start();
    }

    public static /* synthetic */ void $r8$lambda$6Fls0xe6HKTW6UQK8StrqpOvnl8(MaterialCardViewHelper materialCardViewHelper, ValueAnimator valueAnimator) {
        materialCardViewHelper.getClass();
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        materialCardViewHelper.checkedIcon.setAlpha((int) (255.0f * fFloatValue));
        materialCardViewHelper.checkedAnimationProgress = fFloatValue;
    }

    void setCornerRadius(float f) {
        this.cardCornerRadius = f;
        setShapeAppearance(this.shapeAppearanceModel.getDefaultShape().withCornerSize(f));
        this.fgDrawable.invalidateSelf();
        if (shouldAddCornerPaddingOutsideCardBackground() || shouldAddCornerPaddingInsideCardBackground()) {
            updateContentPadding();
        }
        if (shouldAddCornerPaddingOutsideCardBackground()) {
            updateInsets();
        }
    }

    float getCornerRadius() {
        return this.bgDrawable.getTopLeftCornerResolvedSize();
    }

    void setProgress(float f) {
        this.bgDrawable.setInterpolation(f);
        MaterialShapeDrawable materialShapeDrawable = this.foregroundContentDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setInterpolation(f);
        }
        MaterialShapeDrawable materialShapeDrawable2 = this.foregroundShapeDrawable;
        if (materialShapeDrawable2 != null) {
            materialShapeDrawable2.setInterpolation(f);
        }
    }

    float getProgress() {
        return this.bgDrawable.getInterpolation();
    }

    void updateElevation() {
        this.bgDrawable.setElevation(this.materialCardView.getCardElevation());
    }

    void updateInsets() {
        if (!isBackgroundOverwritten()) {
            this.materialCardView.setBackgroundInternal(insetDrawable(this.bgDrawable));
        }
        this.materialCardView.setForeground(insetDrawable(this.fgDrawable));
    }

    void updateStroke() {
        this.foregroundContentDrawable.setStroke(this.strokeWidth, this.strokeColor);
    }

    void updateContentPadding() {
        int iCalculateActualCornerPadding = (int) (((shouldAddCornerPaddingInsideCardBackground() || shouldAddCornerPaddingOutsideCardBackground()) ? calculateActualCornerPadding() : 0.0f) - getParentCardViewCalculatedCornerPadding());
        MaterialCardView materialCardView = this.materialCardView;
        Rect rect = this.userContentPadding;
        materialCardView.setAncestorContentPadding(rect.left + iCalculateActualCornerPadding, rect.top + iCalculateActualCornerPadding, rect.right + iCalculateActualCornerPadding, rect.bottom + iCalculateActualCornerPadding);
    }

    void setCheckable(boolean z) {
        this.checkable = z;
    }

    boolean isCheckable() {
        return this.checkable;
    }

    void setRippleColor(ColorStateList colorStateList) {
        this.rippleColor = colorStateList;
        updateRippleColor();
    }

    void setCheckedIconTint(ColorStateList colorStateList) {
        this.checkedIconTint = colorStateList;
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            drawable.setTintList(colorStateList);
        }
    }

    ColorStateList getCheckedIconTint() {
        return this.checkedIconTint;
    }

    ColorStateList getRippleColor() {
        return this.rippleColor;
    }

    Drawable getCheckedIcon() {
        return this.checkedIcon;
    }

    void setCheckedIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.checkedIcon = drawableMutate;
            drawableMutate.setTintList(this.checkedIconTint);
            setChecked(this.materialCardView.isChecked());
        } else {
            this.checkedIcon = CHECKED_ICON_NONE;
        }
        LayerDrawable layerDrawable = this.clickableForegroundDrawable;
        if (layerDrawable != null) {
            layerDrawable.setDrawableByLayerId(C1349R.id.mtrl_card_checked_layer_id, this.checkedIcon);
        }
    }

    int getCheckedIconSize() {
        return this.checkedIconSize;
    }

    void setCheckedIconSize(int i) {
        this.checkedIconSize = i;
    }

    int getCheckedIconMargin() {
        return this.checkedIconMargin;
    }

    void setCheckedIconMargin(int i) {
        this.checkedIconMargin = i;
    }

    void recalculateCheckedIconPosition(int i, int i2) {
        int iCeil;
        int iCeil2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (this.clickableForegroundDrawable != null) {
            if (this.materialCardView.getUseCompatPadding()) {
                iCeil = (int) Math.ceil(calculateVerticalBackgroundPadding() * 2.0f);
                iCeil2 = (int) Math.ceil(calculateHorizontalBackgroundPadding() * 2.0f);
            } else {
                iCeil = 0;
                iCeil2 = 0;
            }
            if (isCheckedIconEnd()) {
                i3 = ((i - this.checkedIconMargin) - this.checkedIconSize) - iCeil2;
            } else {
                i3 = this.checkedIconMargin;
            }
            if (isCheckedIconBottom()) {
                i4 = this.checkedIconMargin;
            } else {
                i4 = ((i2 - this.checkedIconMargin) - this.checkedIconSize) - iCeil;
            }
            int i9 = i4;
            if (isCheckedIconEnd()) {
                i5 = this.checkedIconMargin;
            } else {
                i5 = ((i - this.checkedIconMargin) - this.checkedIconSize) - iCeil2;
            }
            if (isCheckedIconBottom()) {
                i6 = ((i2 - this.checkedIconMargin) - this.checkedIconSize) - iCeil;
            } else {
                i6 = this.checkedIconMargin;
            }
            int i10 = i6;
            if (this.materialCardView.getLayoutDirection() == 1) {
                i8 = i5;
                i7 = i3;
            } else {
                i7 = i5;
                i8 = i3;
            }
            this.clickableForegroundDrawable.setLayerInset(2, i8, i10, i7, i9);
        }
    }

    void forceRippleRedraw() {
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i = bounds.bottom;
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i - 1);
            this.rippleDrawable.setBounds(bounds.left, bounds.top, bounds.right, i);
        }
    }

    void setShapeAppearance(ShapeAppearance shapeAppearance) {
        this.shapeAppearanceModel = shapeAppearance;
        this.bgDrawable.setShapeAppearance(shapeAppearance);
        this.foregroundContentDrawable.setShapeAppearance(shapeAppearance);
        MaterialShapeDrawable materialShapeDrawable = this.foregroundShapeDrawable;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearance(shapeAppearance);
        }
        this.bgDrawable.setShadowBitmapDrawingEnable(!r2.isRoundRect());
    }

    ShapeAppearance getShapeAppearance() {
        return this.shapeAppearanceModel;
    }

    private void updateInsetForeground(Drawable drawable) {
        if (this.materialCardView.getForeground() instanceof InsetDrawable) {
            ((InsetDrawable) this.materialCardView.getForeground()).setDrawable(drawable);
        } else {
            this.materialCardView.setForeground(insetDrawable(drawable));
        }
    }

    private Drawable insetDrawable(Drawable drawable) {
        int iCeil;
        int iCeil2;
        if (this.materialCardView.getUseCompatPadding()) {
            iCeil2 = (int) Math.ceil(calculateVerticalBackgroundPadding());
            iCeil = (int) Math.ceil(calculateHorizontalBackgroundPadding());
        } else {
            iCeil = 0;
            iCeil2 = 0;
        }
        return new InsetDrawable(drawable, iCeil, iCeil2, iCeil, iCeil2) { // from class: com.google.android.material.card.MaterialCardViewHelper.1
            @Override // android.graphics.drawable.Drawable
            public int getMinimumHeight() {
                return -1;
            }

            @Override // android.graphics.drawable.Drawable
            public int getMinimumWidth() {
                return -1;
            }

            @Override // android.graphics.drawable.InsetDrawable, android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
            public boolean getPadding(Rect rect) {
                return false;
            }
        };
    }

    private float calculateVerticalBackgroundPadding() {
        return (this.materialCardView.getMaxCardElevation() * CARD_VIEW_SHADOW_MULTIPLIER) + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f);
    }

    private float calculateHorizontalBackgroundPadding() {
        return this.materialCardView.getMaxCardElevation() + (shouldAddCornerPaddingOutsideCardBackground() ? calculateActualCornerPadding() : 0.0f);
    }

    private boolean canClipToOutline() {
        return this.bgDrawable.isRoundRect();
    }

    private float getParentCardViewCalculatedCornerPadding() {
        if (this.materialCardView.getPreventCornerOverlap() && this.materialCardView.getUseCompatPadding()) {
            return (float) ((1.0d - COS_45) * ((double) this.materialCardView.getCardViewRadius()));
        }
        return 0.0f;
    }

    private boolean shouldAddCornerPaddingInsideCardBackground() {
        return this.materialCardView.getPreventCornerOverlap() && !canClipToOutline();
    }

    private boolean shouldAddCornerPaddingOutsideCardBackground() {
        return this.materialCardView.getPreventCornerOverlap() && canClipToOutline() && this.materialCardView.getUseCompatPadding();
    }

    private float getMaxCornerPadding(ShapeAppearanceModel shapeAppearanceModel) {
        return Math.max(Math.max(calculateCornerPaddingForCornerTreatment(shapeAppearanceModel.getTopLeftCorner(), this.bgDrawable.getTopLeftCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(shapeAppearanceModel.getTopRightCorner(), this.bgDrawable.getTopRightCornerResolvedSize())), Math.max(calculateCornerPaddingForCornerTreatment(shapeAppearanceModel.getBottomRightCorner(), this.bgDrawable.getBottomRightCornerResolvedSize()), calculateCornerPaddingForCornerTreatment(shapeAppearanceModel.getBottomLeftCorner(), this.bgDrawable.getBottomLeftCornerResolvedSize())));
    }

    private float calculateActualCornerPadding() {
        float fMax = 0.0f;
        for (ShapeAppearanceModel shapeAppearanceModel : this.shapeAppearanceModel.getShapeAppearanceModels()) {
            if (shapeAppearanceModel != null) {
                fMax = Math.max(fMax, getMaxCornerPadding(shapeAppearanceModel));
            }
        }
        return fMax;
    }

    private float calculateCornerPaddingForCornerTreatment(CornerTreatment cornerTreatment, float f) {
        if (cornerTreatment instanceof RoundedCornerTreatment) {
            return (float) ((1.0d - COS_45) * ((double) f));
        }
        if (cornerTreatment instanceof CutCornerTreatment) {
            return f / 2.0f;
        }
        return 0.0f;
    }

    private boolean shouldUseClickableForeground() {
        if (this.materialCardView.isClickable()) {
            return true;
        }
        View view = this.materialCardView;
        while (view.isDuplicateParentStateEnabled() && (view.getParent() instanceof View)) {
            view = (View) view.getParent();
        }
        return view.isClickable();
    }

    private Drawable getClickableForeground() {
        if (this.rippleDrawable == null) {
            this.rippleDrawable = createForegroundRippleDrawable();
        }
        if (this.clickableForegroundDrawable == null) {
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.rippleDrawable, this.foregroundContentDrawable, this.checkedIcon});
            this.clickableForegroundDrawable = layerDrawable;
            layerDrawable.setId(2, C1349R.id.mtrl_card_checked_layer_id);
        }
        return this.clickableForegroundDrawable;
    }

    private Drawable createForegroundRippleDrawable() {
        this.foregroundShapeDrawable = new MaterialShapeDrawable(this.shapeAppearanceModel);
        return new RippleDrawable(this.rippleColor, null, this.foregroundShapeDrawable);
    }

    private void updateRippleColor() {
        Drawable drawable = this.rippleDrawable;
        if (drawable != null) {
            ((RippleDrawable) drawable).setColor(this.rippleColor);
        }
    }

    public void setChecked(boolean z) {
        setChecked(z, false);
    }

    public void setChecked(boolean z, boolean z2) {
        Drawable drawable = this.checkedIcon;
        if (drawable != null) {
            if (z2) {
                animateCheckedIcon(z);
            } else {
                drawable.setAlpha(z ? 255 : 0);
                this.checkedAnimationProgress = z ? 1.0f : 0.0f;
            }
        }
    }

    int getCheckedIconGravity() {
        return this.checkedIconGravity;
    }

    void setCheckedIconGravity(int i) {
        this.checkedIconGravity = i;
        recalculateCheckedIconPosition(this.materialCardView.getMeasuredWidth(), this.materialCardView.getMeasuredHeight());
    }

    private boolean isCheckedIconEnd() {
        return (this.checkedIconGravity & 8388613) == 8388613;
    }

    private boolean isCheckedIconBottom() {
        return (this.checkedIconGravity & 80) == 80;
    }

    private SpringForce createSpringForce(Context context) {
        return MotionUtils.resolveThemeSpringForce(context, C1349R.attr.motionSpringFastSpatial, C1349R.style.Motion_Material3_Spring_Standard_Fast_Spatial);
    }
}
