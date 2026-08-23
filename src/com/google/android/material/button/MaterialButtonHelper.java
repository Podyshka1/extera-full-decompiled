package com.google.android.material.button;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.C1339R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.focus.FocusRingDrawable;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;

/* JADX INFO: loaded from: classes5.dex */
class MaterialButtonHelper {
    private ColorStateList backgroundTint;
    private PorterDuff.Mode backgroundTintMode;
    private boolean checkable;
    private int cornerRadius;
    private SpringForce cornerSpringForce;
    private int elevation;
    private int insetBottom;
    private int insetLeft;
    private int insetRight;
    private int insetTop;
    private Drawable maskDrawable;
    private final MaterialButton materialButton;
    private MaterialShapeDrawable.OnCornerSizeChangeListener onCornerSizeChangeListener;
    private ColorStateList rippleColor;
    private RippleDrawable rippleDrawable;
    private ShapeAppearance shapeAppearance;
    private ColorStateList strokeColor;
    private int strokeWidth;
    private boolean shouldDrawSurfaceColorStroke = false;
    private boolean backgroundOverwritten = false;
    private boolean cornerRadiusSet = false;
    private boolean toggleCheckedStateOnClick = true;

    public MaterialButtonHelper(MaterialButton materialButton, ShapeAppearance shapeAppearance) {
        this.materialButton = materialButton;
        this.shapeAppearance = shapeAppearance;
    }

    public void loadFromAttributes(TypedArray typedArray) {
        this.insetLeft = typedArray.getDimensionPixelOffset(C1339R.styleable.MaterialButton_android_insetLeft, 0);
        this.insetRight = typedArray.getDimensionPixelOffset(C1339R.styleable.MaterialButton_android_insetRight, 0);
        this.insetTop = typedArray.getDimensionPixelOffset(C1339R.styleable.MaterialButton_android_insetTop, 0);
        this.insetBottom = typedArray.getDimensionPixelOffset(C1339R.styleable.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(C1339R.styleable.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(C1339R.styleable.MaterialButton_cornerRadius, -1);
            this.cornerRadius = dimensionPixelSize;
            setShapeAppearance(this.shapeAppearance.withCornerSize(dimensionPixelSize));
            this.cornerRadiusSet = true;
        }
        this.strokeWidth = typedArray.getDimensionPixelSize(C1339R.styleable.MaterialButton_strokeWidth, 0);
        this.backgroundTintMode = ViewUtils.parseTintMode(typedArray.getInt(C1339R.styleable.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.backgroundTint = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1339R.styleable.MaterialButton_backgroundTint);
        this.strokeColor = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1339R.styleable.MaterialButton_strokeColor);
        this.rippleColor = MaterialResources.getColorStateList(this.materialButton.getContext(), typedArray, C1339R.styleable.MaterialButton_rippleColor);
        this.checkable = typedArray.getBoolean(C1339R.styleable.MaterialButton_android_checkable, false);
        this.elevation = typedArray.getDimensionPixelSize(C1339R.styleable.MaterialButton_elevation, 0);
        this.toggleCheckedStateOnClick = typedArray.getBoolean(C1339R.styleable.MaterialButton_toggleCheckedStateOnClick, true);
        int paddingStart = this.materialButton.getPaddingStart();
        int paddingTop = this.materialButton.getPaddingTop();
        int paddingEnd = this.materialButton.getPaddingEnd();
        int paddingBottom = this.materialButton.getPaddingBottom();
        if (typedArray.hasValue(C1339R.styleable.MaterialButton_android_background)) {
            setBackgroundOverwritten();
        } else {
            updateBackground();
        }
        this.materialButton.setPaddingRelative(paddingStart + this.insetLeft, paddingTop + this.insetTop, paddingEnd + this.insetRight, paddingBottom + this.insetBottom);
    }

    private void updateBackground() {
        this.materialButton.setInternalBackground(createBackground());
        MaterialShapeDrawable materialShapeDrawable = getMaterialShapeDrawable();
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setElevation(this.elevation);
            materialShapeDrawable.setState(this.materialButton.getDrawableState());
        }
        FocusRingDrawable focusRingDrawableFind = FocusRingDrawable.find(this.materialButton.getBackground());
        if (focusRingDrawableFind != null) {
            focusRingDrawableFind.setFocusRingMaterialShapeDrawable(materialShapeDrawable);
        }
    }

    public void setBackgroundOverwritten() {
        this.backgroundOverwritten = true;
        this.materialButton.setSupportBackgroundTintList(this.backgroundTint);
        this.materialButton.setSupportBackgroundTintMode(this.backgroundTintMode);
    }

    public boolean isBackgroundOverwritten() {
        return this.backgroundOverwritten;
    }

    private InsetDrawable wrapDrawableWithInset(Drawable drawable) {
        return new InsetDrawable(drawable, this.insetLeft, this.insetTop, this.insetRight, this.insetBottom);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.backgroundTint != colorStateList) {
            this.backgroundTint = colorStateList;
            if (getMaterialShapeDrawable() != null) {
                getMaterialShapeDrawable().setTintList(this.backgroundTint);
            }
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        return this.backgroundTint;
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.backgroundTintMode != mode) {
            this.backgroundTintMode = mode;
            if (getMaterialShapeDrawable() == null || this.backgroundTintMode == null) {
                return;
            }
            getMaterialShapeDrawable().setTintMode(this.backgroundTintMode);
        }
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return this.backgroundTintMode;
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        this.shouldDrawSurfaceColorStroke = z;
        updateStroke();
    }

    private Drawable createBackground() {
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.shapeAppearance);
        SpringForce springForce = this.cornerSpringForce;
        if (springForce != null) {
            materialShapeDrawable.setCornerSpringForce(springForce);
        }
        MaterialShapeDrawable.OnCornerSizeChangeListener onCornerSizeChangeListener = this.onCornerSizeChangeListener;
        if (onCornerSizeChangeListener != null) {
            materialShapeDrawable.setOnCornerSizeChangeListener(onCornerSizeChangeListener);
        }
        Context context = this.materialButton.getContext();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setTintList(this.backgroundTint);
        PorterDuff.Mode mode = this.backgroundTintMode;
        if (mode != null) {
            materialShapeDrawable.setTintMode(mode);
        }
        materialShapeDrawable.setStroke(this.strokeWidth, this.strokeColor);
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.shapeAppearance);
        SpringForce springForce2 = this.cornerSpringForce;
        if (springForce2 != null) {
            materialShapeDrawable2.setCornerSpringForce(springForce2);
        }
        materialShapeDrawable2.setTint(0);
        materialShapeDrawable2.setStroke(this.strokeWidth, this.shouldDrawSurfaceColorStroke ? MaterialColors.getColor(this.materialButton, C1339R.attr.colorSurface) : 0);
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.shapeAppearance);
        this.maskDrawable = materialShapeDrawable3;
        SpringForce springForce3 = this.cornerSpringForce;
        if (springForce3 != null) {
            materialShapeDrawable3.setCornerSpringForce(springForce3);
        }
        this.maskDrawable.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.sanitizeRippleDrawableColor(this.rippleColor), wrapDrawableWithInset(new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable})), this.maskDrawable);
        this.rippleDrawable = rippleDrawable;
        FocusRingDrawable.layer(context, rippleDrawable);
        return this.rippleDrawable;
    }

    public void updateMaskBounds(int i, int i2) {
        Drawable drawable = this.maskDrawable;
        if (drawable != null) {
            drawable.setBounds(this.insetLeft, this.insetTop, i2 - this.insetRight, i - this.insetBottom);
        }
    }

    public void setBackgroundColor(int i) {
        if (getMaterialShapeDrawable() != null) {
            getMaterialShapeDrawable().setTint(i);
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.rippleColor != colorStateList) {
            this.rippleColor = colorStateList;
            if (this.materialButton.getBackground() instanceof RippleDrawable) {
                ((RippleDrawable) this.materialButton.getBackground()).setColor(RippleUtils.sanitizeRippleDrawableColor(colorStateList));
            }
        }
    }

    public ColorStateList getRippleColor() {
        return this.rippleColor;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (this.strokeColor != colorStateList) {
            this.strokeColor = colorStateList;
            updateStroke();
        }
    }

    public ColorStateList getStrokeColor() {
        return this.strokeColor;
    }

    public void setStrokeWidth(int i) {
        if (this.strokeWidth != i) {
            this.strokeWidth = i;
            updateStroke();
        }
    }

    public int getStrokeWidth() {
        return this.strokeWidth;
    }

    private void updateStroke() {
        MaterialShapeDrawable materialShapeDrawable = getMaterialShapeDrawable();
        MaterialShapeDrawable surfaceColorStrokeDrawable = getSurfaceColorStrokeDrawable();
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setStroke(this.strokeWidth, this.strokeColor);
            if (surfaceColorStrokeDrawable != null) {
                surfaceColorStrokeDrawable.setStroke(this.strokeWidth, this.shouldDrawSurfaceColorStroke ? MaterialColors.getColor(this.materialButton, C1339R.attr.colorSurface) : 0);
            }
        }
    }

    public void setCornerRadius(int i) {
        if (this.cornerRadiusSet && this.cornerRadius == i) {
            return;
        }
        this.cornerRadius = i;
        this.cornerRadiusSet = true;
        setShapeAppearance(this.shapeAppearance.withCornerSize(i));
    }

    public int getCornerRadius() {
        return this.cornerRadius;
    }

    private MaterialShapeDrawable getMaterialShapeDrawable(boolean z) {
        RippleDrawable rippleDrawable = this.rippleDrawable;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.rippleDrawable.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }

    public MaterialShapeDrawable getMaterialShapeDrawable() {
        return getMaterialShapeDrawable(false);
    }

    public void setCheckable(boolean z) {
        this.checkable = z;
    }

    public boolean isCheckable() {
        return this.checkable;
    }

    public boolean isToggleCheckedStateOnClick() {
        return this.toggleCheckedStateOnClick;
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.toggleCheckedStateOnClick = z;
    }

    public void setCornerSizeChangeListener(MaterialShapeDrawable.OnCornerSizeChangeListener onCornerSizeChangeListener) {
        this.onCornerSizeChangeListener = onCornerSizeChangeListener;
        MaterialShapeDrawable materialShapeDrawable = getMaterialShapeDrawable();
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setOnCornerSizeChangeListener(onCornerSizeChangeListener);
        }
    }

    private MaterialShapeDrawable getSurfaceColorStrokeDrawable() {
        return getMaterialShapeDrawable(true);
    }

    private void updateButtonShape() {
        MaterialShapeDrawable materialShapeDrawable = getMaterialShapeDrawable();
        if (materialShapeDrawable != null) {
            materialShapeDrawable.setShapeAppearance(this.shapeAppearance);
            SpringForce springForce = this.cornerSpringForce;
            if (springForce != null) {
                materialShapeDrawable.setCornerSpringForce(springForce);
            }
        }
        MaterialShapeDrawable surfaceColorStrokeDrawable = getSurfaceColorStrokeDrawable();
        if (surfaceColorStrokeDrawable != null) {
            surfaceColorStrokeDrawable.setShapeAppearance(this.shapeAppearance);
            SpringForce springForce2 = this.cornerSpringForce;
            if (springForce2 != null) {
                surfaceColorStrokeDrawable.setCornerSpringForce(springForce2);
            }
        }
        Shapeable maskDrawable = getMaskDrawable();
        if (maskDrawable != null) {
            if (maskDrawable instanceof MaterialShapeDrawable) {
                MaterialShapeDrawable materialShapeDrawable2 = (MaterialShapeDrawable) maskDrawable;
                materialShapeDrawable2.setShapeAppearance(this.shapeAppearance);
                SpringForce springForce3 = this.cornerSpringForce;
                if (springForce3 != null) {
                    materialShapeDrawable2.setCornerSpringForce(springForce3);
                    return;
                }
                return;
            }
            maskDrawable.setShapeAppearanceModel(this.shapeAppearance.getDefaultShape());
        }
    }

    public Shapeable getMaskDrawable() {
        RippleDrawable rippleDrawable = this.rippleDrawable;
        if (rippleDrawable == null) {
            return null;
        }
        Object objFindDrawableByLayerId = rippleDrawable.findDrawableByLayerId(R.id.mask);
        if (objFindDrawableByLayerId instanceof Shapeable) {
            return (Shapeable) objFindDrawableByLayerId;
        }
        return null;
    }

    public void setCornerSpringForce(SpringForce springForce) {
        this.cornerSpringForce = springForce;
        if (this.shapeAppearance instanceof StateListShapeAppearanceModel) {
            updateButtonShape();
        }
    }

    public SpringForce getCornerSpringForce() {
        return this.cornerSpringForce;
    }

    public void setShapeAppearance(ShapeAppearance shapeAppearance) {
        this.shapeAppearance = shapeAppearance;
        updateButtonShape();
    }

    public ShapeAppearance getShapeAppearance() {
        return this.shapeAppearance;
    }

    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.shapeAppearance.getDefaultShape();
    }

    public void setInsetBottom(int i) {
        setVerticalInsets(this.insetTop, i);
    }

    public int getInsetBottom() {
        return this.insetBottom;
    }

    public void setInsetTop(int i) {
        setVerticalInsets(i, this.insetBottom);
    }

    private void setVerticalInsets(int i, int i2) {
        int paddingStart = this.materialButton.getPaddingStart();
        int paddingTop = this.materialButton.getPaddingTop();
        int paddingEnd = this.materialButton.getPaddingEnd();
        int paddingBottom = this.materialButton.getPaddingBottom();
        int i3 = this.insetTop;
        int i4 = this.insetBottom;
        this.insetBottom = i2;
        this.insetTop = i;
        if (!this.backgroundOverwritten) {
            updateBackground();
        }
        this.materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public int getInsetTop() {
        return this.insetTop;
    }
}
