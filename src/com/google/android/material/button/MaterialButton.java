package com.google.android.material.button;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.customview.view.AbsSavedState;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.C1349R;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearance;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes5.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int ICON_GRAVITY_END = 3;
    public static final int ICON_GRAVITY_START = 1;
    public static final int ICON_GRAVITY_TEXT_END = 4;
    public static final int ICON_GRAVITY_TEXT_START = 2;
    public static final int ICON_GRAVITY_TEXT_TOP = 32;
    public static final int ICON_GRAVITY_TOP = 16;
    private static final String LOG_TAG = "MaterialButton";
    private static final float OPTICAL_CENTER_RATIO = 0.11f;
    private static final int UNSET = Integer.MIN_VALUE;
    private String accessibilityClassName;
    int allowedWidthDecrease;
    private boolean broadcasting;
    private boolean checked;
    private float displayedWidthDecrease;
    private float displayedWidthIncrease;
    private Drawable icon;
    private int iconGravity;
    private int iconLeft;
    private int iconPadding;
    private int iconSize;
    private ColorStateList iconTint;
    private PorterDuff.Mode iconTintMode;
    private int iconTop;
    private boolean isInHorizontalButtonGroup;
    private final MaterialButtonHelper materialButtonHelper;
    private final LinkedHashSet<OnCheckedChangeListener> onCheckedChangeListeners;
    private OnPressedChangeListener onPressedChangeListenerInternal;
    private boolean opticalCenterEnabled;
    private int opticalCenterShift;
    private int orientation;
    private LinearLayout.LayoutParams originalLayoutParams;
    private int originalPaddingEnd;
    private int originalPaddingStart;
    private float originalWidth;
    private Drawable secondaryIcon;
    private int secondaryIconGravity;
    private int secondaryIconLeft;
    private ColorStateList secondaryIconTint;
    private PorterDuff.Mode secondaryIconTintMode;
    private int secondaryIconTop;
    StateListSizeChange sizeChange;
    private boolean stopNullSecondaryIconUpdate;
    private WidthChangeDirection widthChangeDirection;
    int widthChangeMax;
    private SpringAnimation widthIncreaseSpringAnimation;
    private static final int[] CHECKABLE_STATE_SET = {R.attr.state_checkable};
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    private static final int DEF_STYLE_RES = C1349R.style.Widget_MaterialComponents_Button;
    private static final int MATERIAL_SIZE_OVERLAY_ATTR = C1349R.attr.materialSizeOverlay;
    private static final FloatPropertyCompat WIDTH_INCREASE = new FloatPropertyCompat("widthIncrease") { // from class: com.google.android.material.button.MaterialButton.1
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(MaterialButton materialButton) {
            return materialButton.getDisplayedWidthIncrease();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(MaterialButton materialButton, float f) {
            materialButton.setDisplayedWidthIncrease(f);
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface IconGravity {
    }

    public interface OnCheckedChangeListener {
        void onCheckedChanged(MaterialButton materialButton, boolean z);
    }

    interface OnPressedChangeListener {
        void onPressedChanged(MaterialButton materialButton, boolean z);
    }

    enum WidthChangeDirection {
        NONE,
        START,
        END,
        BOTH
    }

    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {
        private int mIconPaddingId;
        private boolean mPropertiesMapped = false;

        public void mapProperties(PropertyMapper propertyMapper) {
            this.mIconPaddingId = propertyMapper.mapInt("iconPadding", C1349R.attr.iconPadding);
            this.mPropertiesMapped = true;
        }

        public void readProperties(MaterialButton materialButton, PropertyReader propertyReader) {
            if (!this.mPropertiesMapped) {
                throw AbstractC1399xaf655c8a.m369m();
            }
            propertyReader.readInt(this.mIconPaddingId, materialButton.getIconPadding());
        }
    }

    public MaterialButton(Context context) {
        this(context, null);
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1349R.attr.materialButtonStyle);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialButton(Context context, AttributeSet attributeSet, int i) {
        ColorStateList colorStateList;
        int i2 = DEF_STYLE_RES;
        super(MaterialThemeOverlay.wrap(context, attributeSet, i, i2, new int[]{MATERIAL_SIZE_OVERLAY_ATTR}), attributeSet, i);
        this.onCheckedChangeListeners = new LinkedHashSet<>();
        this.checked = false;
        this.broadcasting = false;
        this.orientation = Integer.MIN_VALUE;
        this.originalWidth = -2.1474836E9f;
        this.originalPaddingStart = Integer.MIN_VALUE;
        this.originalPaddingEnd = Integer.MIN_VALUE;
        this.allowedWidthDecrease = Integer.MIN_VALUE;
        this.widthChangeDirection = WidthChangeDirection.BOTH;
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = ThemeEnforcement.obtainStyledAttributes(context2, attributeSet, C1349R.styleable.MaterialButton, i, i2, new int[0]);
        this.iconPadding = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.MaterialButton_iconPadding, 0);
        int i3 = typedArrayObtainStyledAttributes.getInt(C1349R.styleable.MaterialButton_iconTintMode, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.iconTintMode = ViewUtils.parseTintMode(i3, mode);
        this.iconTint = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, C1349R.styleable.MaterialButton_iconTint);
        this.icon = MaterialResources.getDrawable(getContext(), typedArrayObtainStyledAttributes, C1349R.styleable.MaterialButton_icon);
        this.iconGravity = typedArrayObtainStyledAttributes.getInteger(C1349R.styleable.MaterialButton_iconGravity, 1);
        this.iconSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1349R.styleable.MaterialButton_iconSize, 0);
        this.secondaryIconTintMode = ViewUtils.parseTintMode(typedArrayObtainStyledAttributes.getInt(C1349R.styleable.MaterialButton_secondaryIconTintMode, -1), mode);
        if (typedArrayObtainStyledAttributes.hasValue(C1349R.styleable.MaterialButton_secondaryIconTint)) {
            colorStateList = MaterialResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes, C1349R.styleable.MaterialButton_secondaryIconTint);
        } else {
            colorStateList = this.iconTint;
        }
        this.secondaryIconTint = colorStateList;
        this.secondaryIconGravity = typedArrayObtainStyledAttributes.getInteger(C1349R.styleable.MaterialButton_secondaryIconGravity, 3);
        Drawable drawable = MaterialResources.getDrawable(getContext(), typedArrayObtainStyledAttributes, C1349R.styleable.MaterialButton_secondaryIcon);
        this.secondaryIcon = drawable;
        this.stopNullSecondaryIconUpdate = drawable == null;
        ShapeAppearance shapeAppearanceCreate = StateListShapeAppearanceModel.create(context2, typedArrayObtainStyledAttributes, C1349R.styleable.MaterialButton_shapeAppearance);
        shapeAppearanceCreate = shapeAppearanceCreate == null ? ShapeAppearanceModel.builder(context2, attributeSet, i, i2).build() : shapeAppearanceCreate;
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.MaterialButton_opticalCenterEnabled, false);
        MaterialButtonHelper materialButtonHelper = new MaterialButtonHelper(this, shapeAppearanceCreate);
        this.materialButtonHelper = materialButtonHelper;
        materialButtonHelper.loadFromAttributes(typedArrayObtainStyledAttributes);
        setCheckedInternal(typedArrayObtainStyledAttributes.getBoolean(C1349R.styleable.MaterialButton_android_checked, false));
        if (shapeAppearanceCreate instanceof StateListShapeAppearanceModel) {
            materialButtonHelper.setCornerSpringForce(createSpringForce());
        }
        setOpticalCenterEnabled(z);
        typedArrayObtainStyledAttributes.recycle();
        setCompoundDrawablePadding(this.iconPadding);
        updateIcon(this.icon != null);
        updateSecondaryIcon(this.secondaryIcon != null);
    }

    private void initializeSizeAnimation() {
        SpringAnimation springAnimation = new SpringAnimation(this, WIDTH_INCREASE);
        this.widthIncreaseSpringAnimation = springAnimation;
        springAnimation.setSpring(createSpringForce());
    }

    private SpringForce createSpringForce() {
        return MotionUtils.resolveThemeSpringForce(getContext(), C1349R.attr.motionSpringFastSpatial, C1349R.style.Motion_Material3_Spring_Standard_Fast_Spatial);
    }

    private boolean maybeRunAfterWidthAnimation(final Runnable runnable) {
        SpringAnimation springAnimation = this.widthIncreaseSpringAnimation;
        if (springAnimation == null || !springAnimation.isRunning()) {
            return false;
        }
        post(new Runnable() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MaterialButton.m3413$r8$lambda$S8Bw1Ddl9QWyZUUtNEneBlX3wE(this.f$0, runnable);
            }
        });
        return true;
    }

    /* JADX INFO: renamed from: $r8$lambda$S8Bw1Ddl9QWyZUUtNEn-eBlX3wE, reason: not valid java name */
    public static /* synthetic */ void m3413$r8$lambda$S8Bw1Ddl9QWyZUUtNEneBlX3wE(MaterialButton materialButton, Runnable runnable) {
        materialButton.getClass();
        runnable.run();
        materialButton.recoverOriginalLayoutParams();
        materialButton.requestLayout();
    }

    @SuppressLint({"KotlinPropertyAccess"})
    String getA11yClassName() {
        if (TextUtils.isEmpty(this.accessibilityClassName)) {
            return (isCheckable() ? CompoundButton.class : Button.class).getName();
        }
        return this.accessibilityClassName;
    }

    public void setA11yClassName(String str) {
        this.accessibilityClassName = str;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(isCheckable());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.checked = this.checked;
        return savedState;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setChecked(savedState.checked);
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setSupportBackgroundTintList(colorStateList);
        } else {
            super.setSupportBackgroundTintList(colorStateList);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getSupportBackgroundTintList();
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setSupportBackgroundTintMode(mode);
        } else {
            super.setSupportBackgroundTintMode(mode);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getSupportBackgroundTintMode();
        }
        return super.getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setBackgroundColor(i);
        } else {
            super.setBackgroundColor(i);
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (isUsingOriginalBackground()) {
            if (drawable != getBackground()) {
                Log.w(LOG_TAG, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                this.materialButtonHelper.setBackgroundOverwritten();
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
        int i6 = getResources().getConfiguration().orientation;
        if (this.orientation != i6) {
            this.orientation = i6;
            this.originalWidth = -2.1474836E9f;
        }
        if (this.originalWidth == -2.1474836E9f) {
            this.originalWidth = getMeasuredWidth();
            if (this.originalLayoutParams == null && (getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getButtonSizeChange() != null) {
                this.originalLayoutParams = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.originalLayoutParams);
                layoutParams.width = (int) this.originalWidth;
                setLayoutParams(layoutParams);
            }
        }
        if (this.allowedWidthDecrease == Integer.MIN_VALUE) {
            if (this.icon == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int intrinsicWidth = this.iconSize;
                if (intrinsicWidth == 0) {
                    intrinsicWidth = this.icon.getIntrinsicWidth();
                }
                i5 = iconPadding + intrinsicWidth;
            }
            this.allowedWidthDecrease = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.originalPaddingStart == Integer.MIN_VALUE) {
            this.originalPaddingStart = getPaddingStart();
        }
        if (this.originalPaddingEnd == Integer.MIN_VALUE) {
            this.originalPaddingEnd = getPaddingEnd();
        }
        this.isInHorizontalButtonGroup = isInHorizontalButtonGroup();
    }

    void recoverOriginalLayoutParams() {
        LinearLayout.LayoutParams layoutParams = this.originalLayoutParams;
        if (layoutParams != null) {
            setLayoutParams(layoutParams);
            this.originalLayoutParams = null;
            this.originalWidth = -2.1474836E9f;
        }
    }

    @Override // android.widget.TextView
    public void setWidth(int i) {
        this.originalWidth = -2.1474836E9f;
        super.setWidth(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isUsingOriginalBackground()) {
            MaterialShapeUtils.setParentAbsoluteElevation(this, this.materialButtonHelper.getMaterialShapeDrawable());
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.getMaterialShapeDrawable().setElevation(f);
        }
    }

    @Override // android.view.View
    public void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.icon != null) {
            if (this.icon.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @Override // android.widget.TextView
    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        this.originalWidth = -2.1474836E9f;
        super.setText(charSequence, bufferType);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        this.originalWidth = -2.1474836E9f;
        super.setTextAppearance(context, i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public void setTextSize(int i, float f) {
        this.originalWidth = -2.1474836E9f;
        super.setTextSize(i, f);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity == 1) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        if (gravity == 5 || gravity == 8388613) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment == 1) {
            return getGravityTextAlignment();
        }
        if (textAlignment == 6 || textAlignment == 3) {
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        if (textAlignment == 4) {
            return Layout.Alignment.ALIGN_CENTER;
        }
        return Layout.Alignment.ALIGN_NORMAL;
    }

    private void updateIconPosition(int i, int i2) {
        if (this.icon == null || getLayout() == null) {
            return;
        }
        if (isIconStart() || isIconEnd()) {
            this.iconTop = 0;
            if (canUpdateWithoutTextAlignment(this.iconGravity)) {
                this.iconLeft = 0;
                updateIcon(false);
                return;
            }
            int iconLeft = getIconLeft(i, this.iconGravity);
            if (this.iconLeft != iconLeft) {
                this.iconLeft = iconLeft;
                updateIcon(false);
                return;
            }
            return;
        }
        if (isIconTop()) {
            this.iconLeft = 0;
            if (this.iconGravity == 16) {
                this.iconTop = 0;
                updateIcon(false);
                return;
            }
            int intrinsicHeight = this.iconSize;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.icon.getIntrinsicHeight();
            }
            int iconTop = getIconTop(i2, intrinsicHeight);
            if (this.iconTop != iconTop) {
                this.iconTop = iconTop;
                updateIcon(false);
            }
        }
    }

    private void updateSecondaryIconPosition(int i, int i2) {
        if (this.secondaryIcon == null || getLayout() == null) {
            return;
        }
        if (isSecondaryIconStart() || isSecondaryIconEnd()) {
            this.secondaryIconTop = 0;
            if (canUpdateWithoutTextAlignment(this.secondaryIconGravity)) {
                this.secondaryIconLeft = 0;
                updateSecondaryIcon(false);
                return;
            }
            int iconLeft = getIconLeft(i, this.secondaryIconGravity);
            if (this.secondaryIconLeft != iconLeft) {
                this.secondaryIconLeft = iconLeft;
                updateSecondaryIcon(false);
                return;
            }
            return;
        }
        if (isSecondaryIconTop()) {
            this.secondaryIconLeft = 0;
            if (this.secondaryIconGravity == 16) {
                this.secondaryIconTop = 0;
                updateSecondaryIcon(false);
                return;
            }
            int intrinsicHeight = this.iconSize;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.secondaryIcon.getIntrinsicHeight();
            }
            int iconTop = getIconTop(i2, intrinsicHeight);
            if (this.secondaryIconTop != iconTop) {
                this.secondaryIconTop = iconTop;
                updateSecondaryIcon(false);
            }
        }
    }

    private boolean canUpdateWithoutTextAlignment(int i) {
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        return i == 1 || i == 3 || (i == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE);
    }

    private int getIconLeft(int i, int i2) {
        int intrinsicWidth;
        int intrinsicWidth2;
        Drawable drawable = this.icon;
        if (drawable != null) {
            intrinsicWidth = this.iconSize;
            if (intrinsicWidth == 0) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
        } else {
            intrinsicWidth = 0;
        }
        Drawable drawable2 = this.secondaryIcon;
        if (drawable2 != null) {
            intrinsicWidth2 = this.iconSize;
            if (intrinsicWidth2 == 0) {
                intrinsicWidth2 = drawable2.getIntrinsicWidth();
            }
        } else {
            intrinsicWidth2 = 0;
        }
        int textLayoutWidth = (((((i - getTextLayoutWidth()) - getPaddingEnd()) - intrinsicWidth) - intrinsicWidth2) - this.iconPadding) - getPaddingStart();
        if (getActualTextAlignment() == Layout.Alignment.ALIGN_CENTER) {
            textLayoutWidth /= 2;
        }
        return isLayoutRTL() != (i2 == 4) ? -textLayoutWidth : textLayoutWidth;
    }

    private int getIconTop(int i, int i2) {
        return Math.max(0, (((((i - getTextHeight()) - getPaddingTop()) - i2) - this.iconPadding) - getPaddingBottom()) / 2);
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(fMax);
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablePadding(int i) {
        if (getCompoundDrawablePadding() != i) {
            this.originalWidth = -2.1474836E9f;
        }
        super.setCompoundDrawablePadding(i);
    }

    public void setIconPadding(int i) {
        if (this.iconPadding != i) {
            this.iconPadding = i;
            setCompoundDrawablePadding(i);
        }
    }

    public int getIconPadding() {
        return this.iconPadding;
    }

    public void setIconSize(final int i) {
        if (i < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.iconSize == i || maybeRunAfterWidthAnimation(new Runnable() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setIconSize(i);
            }
        })) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.iconSize = i;
        updateIcon(true);
        updateSecondaryIcon(true);
    }

    public int getIconSize() {
        return this.iconSize;
    }

    public void setIcon(final Drawable drawable) {
        if (this.icon == drawable || maybeRunAfterWidthAnimation(new Runnable() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setIcon(drawable);
            }
        })) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.icon = drawable;
        updateIcon(true);
        updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.iconTint != colorStateList) {
            this.iconTint = colorStateList;
            updateIcon(false);
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public ColorStateList getIconTint() {
        return this.iconTint;
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.iconTintMode != mode) {
            this.iconTintMode = mode;
            updateIcon(false);
        }
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.iconTintMode;
    }

    public void setSecondaryIcon(final Drawable drawable) {
        if (this.secondaryIcon == drawable || maybeRunAfterWidthAnimation(new Runnable() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.setIcon(drawable);
            }
        })) {
            return;
        }
        this.originalWidth = -2.1474836E9f;
        this.secondaryIcon = drawable;
        this.stopNullSecondaryIconUpdate = false;
        updateSecondaryIcon(true);
        updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setSecondaryIconResource(int i) {
        setSecondaryIcon(i != 0 ? AppCompatResources.getDrawable(getContext(), i) : null);
    }

    public Drawable getSecondaryIcon() {
        return this.secondaryIcon;
    }

    public void setSecondaryIconTint(ColorStateList colorStateList) {
        if (this.secondaryIconTint != colorStateList) {
            this.secondaryIconTint = colorStateList;
            updateSecondaryIcon(false);
        }
    }

    public void setSecondaryIconTintResource(int i) {
        setSecondaryIconTint(AppCompatResources.getColorStateList(getContext(), i));
    }

    public ColorStateList getSecondaryIconTint() {
        return this.secondaryIconTint;
    }

    public void setSecondaryIconTintMode(PorterDuff.Mode mode) {
        if (this.secondaryIconTintMode != mode) {
            this.secondaryIconTintMode = mode;
            updateSecondaryIcon(false);
        }
    }

    public PorterDuff.Mode getSecondaryIconTintMode() {
        return this.secondaryIconTintMode;
    }

    private void updateIcon(boolean z) {
        Drawable drawable = this.icon;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.icon = drawableMutate;
            drawableMutate.setTintList(this.iconTint);
            PorterDuff.Mode mode = this.iconTintMode;
            if (mode != null) {
                this.icon.setTintMode(mode);
            }
            int intrinsicWidth = this.iconSize;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.icon.getIntrinsicWidth();
            }
            int intrinsicHeight = this.iconSize;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.icon.getIntrinsicHeight();
            }
            Drawable drawable2 = this.icon;
            int i = this.iconLeft;
            int i2 = this.iconTop;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.icon.setVisible(true, z);
        }
        validateIconGravity();
        if (this.icon == null && this.secondaryIcon != null && areIconsGravitySameAlignment()) {
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (isIconStart() && compoundDrawablesRelative[0] != this.icon) || (isIconEnd() && compoundDrawablesRelative[2] != this.icon) || (isIconTop() && compoundDrawablesRelative[1] != this.icon);
        if (z || z2) {
            if (isIconStart()) {
                setCompoundDrawablesRelative(this.icon, getUpdatedIconFor(1), getUpdatedIconFor(2), null);
            } else if (isIconEnd()) {
                setCompoundDrawablesRelative(getUpdatedIconFor(0), getUpdatedIconFor(1), this.icon, null);
            } else if (isIconTop()) {
                setCompoundDrawablesRelative(getUpdatedIconFor(0), this.icon, getUpdatedIconFor(2), null);
            }
        }
    }

    private void validateIconGravity() {
        if (this.icon != null && this.secondaryIcon != null && areIconsGravitySameAlignment()) {
            throw new IllegalArgumentException("iconGravity cannot have the same alignment as secondaryIconGravity");
        }
    }

    private boolean areIconsGravitySameAlignment() {
        if (isIconStart() && isSecondaryIconStart()) {
            return true;
        }
        if (isIconEnd() && isSecondaryIconEnd()) {
            return true;
        }
        return isIconTop() && isSecondaryIconTop();
    }

    private Drawable getUpdatedIconFor(int i) {
        if (i == 0) {
            if (this.secondaryIcon == null || !isSecondaryIconStart()) {
                return null;
            }
            return this.secondaryIcon;
        }
        if (i == 1) {
            if (this.secondaryIcon == null || !isSecondaryIconTop()) {
                return null;
            }
            return this.secondaryIcon;
        }
        if (i == 2 && this.secondaryIcon != null && isSecondaryIconEnd()) {
            return this.secondaryIcon;
        }
        return null;
    }

    private boolean isIconStart() {
        int i = this.iconGravity;
        return i == 1 || i == 2;
    }

    private boolean isIconEnd() {
        int i = this.iconGravity;
        return i == 3 || i == 4;
    }

    private boolean isIconTop() {
        int i = this.iconGravity;
        return i == 16 || i == 32;
    }

    private boolean isSecondaryIconStart() {
        int i = this.secondaryIconGravity;
        return i == 1 || i == 2;
    }

    private boolean isSecondaryIconEnd() {
        int i = this.secondaryIconGravity;
        return i == 3 || i == 4;
    }

    private boolean isSecondaryIconTop() {
        int i = this.secondaryIconGravity;
        return i == 16 || i == 32;
    }

    private void updateSecondaryIcon(boolean z) {
        Drawable drawable = this.secondaryIcon;
        if (drawable != null) {
            Drawable drawableMutate = DrawableCompat.wrap(drawable).mutate();
            this.secondaryIcon = drawableMutate;
            drawableMutate.setTintList(this.secondaryIconTint);
            PorterDuff.Mode mode = this.secondaryIconTintMode;
            if (mode != null) {
                this.secondaryIcon.setTintMode(mode);
            }
            int intrinsicWidth = this.iconSize;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.secondaryIcon.getIntrinsicWidth();
            }
            int intrinsicHeight = this.iconSize;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.secondaryIcon.getIntrinsicHeight();
            }
            Drawable drawable2 = this.secondaryIcon;
            int i = this.secondaryIconLeft;
            int i2 = this.secondaryIconTop;
            drawable2.setBounds(i, i2, intrinsicWidth + i, intrinsicHeight + i2);
            this.secondaryIcon.setVisible(true, z);
        }
        validateSecondaryIconGravity();
        if (this.secondaryIcon == null) {
            if (this.stopNullSecondaryIconUpdate) {
                return;
            }
            if (this.icon != null && areIconsGravitySameAlignment()) {
                return;
            }
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        boolean z2 = (isSecondaryIconStart() && compoundDrawablesRelative[0] != this.secondaryIcon) || (isSecondaryIconEnd() && compoundDrawablesRelative[2] != this.secondaryIcon) || (isSecondaryIconTop() && compoundDrawablesRelative[1] != this.secondaryIcon);
        if (z || z2) {
            if (isSecondaryIconStart()) {
                setCompoundDrawablesRelative(this.secondaryIcon, getUpdatedSecondaryIconFor(1), getUpdatedSecondaryIconFor(2), null);
            } else if (isSecondaryIconEnd()) {
                setCompoundDrawablesRelative(getUpdatedSecondaryIconFor(0), getUpdatedSecondaryIconFor(1), this.secondaryIcon, null);
            } else if (isSecondaryIconTop()) {
                setCompoundDrawablesRelative(getUpdatedSecondaryIconFor(0), this.secondaryIcon, getUpdatedSecondaryIconFor(2), null);
            }
        }
    }

    private void validateSecondaryIconGravity() {
        if (this.secondaryIcon != null && this.icon != null && areIconsGravitySameAlignment()) {
            throw new IllegalArgumentException("secondaryIconGravity cannot have the same alignment as iconGravity");
        }
    }

    private Drawable getUpdatedSecondaryIconFor(int i) {
        if (i == 0) {
            if (this.icon == null || !isIconStart()) {
                return null;
            }
            return this.icon;
        }
        if (i == 1) {
            if (this.icon == null || !isIconEnd()) {
                return null;
            }
            return this.icon;
        }
        if (i == 2 && this.icon != null && isIconEnd()) {
            return this.icon;
        }
        return null;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setRippleColor(colorStateList);
        }
    }

    public void setRippleColorResource(int i) {
        if (isUsingOriginalBackground()) {
            setRippleColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getRippleColor() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getRippleColor();
        }
        return null;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setStrokeColor(colorStateList);
        }
    }

    public void setStrokeColorResource(int i) {
        if (isUsingOriginalBackground()) {
            setStrokeColor(AppCompatResources.getColorStateList(getContext(), i));
        }
    }

    public ColorStateList getStrokeColor() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getStrokeColor();
        }
        return null;
    }

    public void setStrokeWidth(int i) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setStrokeWidth(i);
        }
    }

    public void setStrokeWidthResource(int i) {
        if (isUsingOriginalBackground()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    public int getStrokeWidth() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getStrokeWidth();
        }
        return 0;
    }

    public void setCornerRadius(int i) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setCornerRadius(i);
        }
    }

    public void setCornerRadiusResource(int i) {
        if (isUsingOriginalBackground()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public int getCornerRadius() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getCornerRadius();
        }
        return 0;
    }

    public int getIconGravity() {
        return this.iconGravity;
    }

    public void setIconGravity(int i) {
        if (this.iconGravity != i) {
            validateIconGravity();
            this.iconGravity = i;
            updateIconPosition(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public int getSecondaryIconGravity() {
        return this.secondaryIconGravity;
    }

    public void setSecondaryIconGravity(int i) {
        if (this.secondaryIconGravity != i) {
            validateSecondaryIconGravity();
            this.secondaryIconGravity = i;
            updateSecondaryIconPosition(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setInsetBottom(int i) {
        this.materialButtonHelper.setInsetBottom(i);
    }

    public int getInsetBottom() {
        return this.materialButtonHelper.getInsetBottom();
    }

    public void setInsetTop(int i) {
        this.materialButtonHelper.setInsetTop(i);
    }

    public int getInsetTop() {
        return this.materialButtonHelper.getInsetTop();
    }

    @Override // android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isCheckable()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKABLE_STATE_SET);
        }
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, CHECKED_STATE_SET);
        }
        return iArrOnCreateDrawableState;
    }

    public void addOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListeners.add(onCheckedChangeListener);
    }

    public void removeOnCheckedChangeListener(OnCheckedChangeListener onCheckedChangeListener) {
        this.onCheckedChangeListeners.remove(onCheckedChangeListener);
    }

    public void clearOnCheckedChangeListeners() {
        this.onCheckedChangeListeners.clear();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    private void setCheckedInternal(boolean z) {
        if (!isCheckable() || this.checked == z) {
            return;
        }
        this.checked = z;
        refreshDrawableState();
        if (getParent() instanceof MaterialButtonToggleGroup) {
            ((MaterialButtonToggleGroup) getParent()).onButtonCheckedStateChanged(this, this.checked);
        }
        if (this.broadcasting) {
            return;
        }
        this.broadcasting = true;
        Iterator<OnCheckedChangeListener> it = this.onCheckedChangeListeners.iterator();
        while (it.hasNext()) {
            it.next().onCheckedChanged(this, this.checked);
        }
        this.broadcasting = false;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.checked;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.checked);
    }

    @Override // android.view.View
    public boolean performClick() {
        boolean z;
        if (isEnabled() && this.materialButtonHelper.isToggleCheckedStateOnClick()) {
            toggle();
            z = true;
        } else {
            z = false;
        }
        boolean zPerformClick = super.performClick();
        if (z && !zPerformClick) {
            playSoundEffect(0);
        }
        return zPerformClick;
    }

    public boolean isToggleCheckedStateOnClick() {
        return this.materialButtonHelper.isToggleCheckedStateOnClick();
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.materialButtonHelper.setToggleCheckedStateOnClick(z);
    }

    public boolean isCheckable() {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        return materialButtonHelper != null && materialButtonHelper.isCheckable();
    }

    public void setCheckable(boolean z) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setCheckable(z);
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setShapeAppearance(shapeAppearanceModel);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    @Override // com.google.android.material.shape.Shapeable
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getShapeAppearanceModel();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public void setShapeAppearance(ShapeAppearance shapeAppearance) {
        if (isUsingOriginalBackground()) {
            if (this.materialButtonHelper.getCornerSpringForce() == null && shapeAppearance.isStateful()) {
                this.materialButtonHelper.setCornerSpringForce(createSpringForce());
            }
            this.materialButtonHelper.setShapeAppearance(shapeAppearance);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearance on a MaterialButton which has an overwritten background.");
    }

    public ShapeAppearance getShapeAppearance() {
        if (isUsingOriginalBackground()) {
            return this.materialButtonHelper.getShapeAppearance();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearance from a MaterialButton which has an overwritten background.");
    }

    public void setCornerSpringForce(SpringForce springForce) {
        this.materialButtonHelper.setCornerSpringForce(springForce);
    }

    public SpringForce getCornerSpringForce() {
        return this.materialButtonHelper.getCornerSpringForce();
    }

    void setOnPressedChangeListenerInternal(OnPressedChangeListener onPressedChangeListener) {
        this.onPressedChangeListenerInternal = onPressedChangeListener;
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.onPressedChangeListenerInternal;
        if (onPressedChangeListener != null) {
            onPressedChangeListener.onPressedChanged(this, z);
        }
        super.setPressed(z);
        maybeAnimateSize(false);
    }

    private boolean isUsingOriginalBackground() {
        MaterialButtonHelper materialButtonHelper = this.materialButtonHelper;
        return (materialButtonHelper == null || materialButtonHelper.isBackgroundOverwritten()) ? false : true;
    }

    void setShouldDrawSurfaceColorStroke(boolean z) {
        if (isUsingOriginalBackground()) {
            this.materialButtonHelper.setShouldDrawSurfaceColorStroke(z);
        }
    }

    private void maybeAnimateSize(boolean z) {
        if (this.sizeChange == null) {
            return;
        }
        if (this.widthIncreaseSpringAnimation == null) {
            initializeSizeAnimation();
        }
        if (this.isInHorizontalButtonGroup) {
            this.widthIncreaseSpringAnimation.animateToFinalPosition(Math.min(calculateEffectiveWidthChangeMax(), this.sizeChange.getSizeChangeForState(getDrawableState()).widthChange.getChange(getWidth())));
            if (z) {
                this.widthIncreaseSpringAnimation.skipToEnd();
            }
        }
    }

    private int calculateEffectiveWidthChangeMax() {
        int iOrdinal = this.widthChangeDirection.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2) {
            return this.widthChangeMax / 2;
        }
        if (iOrdinal != 3) {
            return 0;
        }
        return this.widthChangeMax;
    }

    private boolean isInHorizontalButtonGroup() {
        return (getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getOrientation() == 0;
    }

    void setSizeChange(StateListSizeChange stateListSizeChange) {
        if (this.sizeChange != stateListSizeChange) {
            this.sizeChange = stateListSizeChange;
            maybeAnimateSize(true);
        }
    }

    void setWidthChangeMax(int i) {
        if (this.widthChangeMax != i) {
            this.widthChangeMax = i;
            maybeAnimateSize(true);
        }
    }

    void setWidthChangeDirection(WidthChangeDirection widthChangeDirection) {
        if (this.widthChangeDirection != widthChangeDirection) {
            this.widthChangeDirection = widthChangeDirection;
            maybeAnimateSize(true);
        }
    }

    int getAllowedWidthDecrease() {
        return this.allowedWidthDecrease;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.displayedWidthIncrease;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f) {
        if (this.displayedWidthIncrease != f) {
            this.displayedWidthIncrease = f;
            updatePaddingsAndSizeForWidthAnimation();
            invalidate();
            if (getParent() instanceof MaterialButtonGroup) {
                ((MaterialButtonGroup) getParent()).onButtonWidthChanged(this, (int) this.displayedWidthIncrease);
            }
        }
    }

    void setDisplayedWidthDecrease(int i) {
        this.displayedWidthDecrease = Math.min(i, this.allowedWidthDecrease);
        updatePaddingsAndSizeForWidthAnimation();
        invalidate();
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.opticalCenterEnabled != z) {
            this.opticalCenterEnabled = z;
            if (z) {
                this.materialButtonHelper.setCornerSizeChangeListener(new MaterialShapeDrawable.OnCornerSizeChangeListener() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda4
                    @Override // com.google.android.material.shape.MaterialShapeDrawable.OnCornerSizeChangeListener
                    public final void onCornerSizeChange(float f) {
                        MaterialButton.$r8$lambda$ch2aaORFCLrGEn8lT2Fq9UtauwI(this.f$0, f);
                    }
                });
            } else {
                this.materialButtonHelper.setCornerSizeChangeListener(null);
            }
            post(new Runnable() { // from class: com.google.android.material.button.MaterialButton$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    MaterialButton.m3412$r8$lambda$082l6qUlajHJ6tYsmjt9Msiwck(this.f$0);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$ch2aaORFCLrGEn8lT2Fq9UtauwI(MaterialButton materialButton, float f) {
        int i = (int) (f * OPTICAL_CENTER_RATIO);
        if (materialButton.opticalCenterShift != i) {
            materialButton.opticalCenterShift = i;
            materialButton.updatePaddingsAndSizeForWidthAnimation();
            materialButton.invalidate();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$082l-6qUlajHJ6tYsmjt9Msiwck, reason: not valid java name */
    public static /* synthetic */ void m3412$r8$lambda$082l6qUlajHJ6tYsmjt9Msiwck(MaterialButton materialButton) {
        materialButton.opticalCenterShift = materialButton.getOpticalCenterShift();
        materialButton.updatePaddingsAndSizeForWidthAnimation();
        materialButton.invalidate();
    }

    public boolean isOpticalCenterEnabled() {
        return this.opticalCenterEnabled;
    }

    private void updatePaddingsAndSizeForWidthAnimation() {
        int i = (int) (this.displayedWidthIncrease - this.displayedWidthDecrease);
        int i2 = (i / 2) + this.opticalCenterShift;
        getLayoutParams().width = (int) (this.originalWidth + i);
        setPaddingRelative(this.originalPaddingStart + i2, getPaddingTop(), (this.originalPaddingEnd + i) - i2, getPaddingBottom());
    }

    private int getOpticalCenterShift() {
        MaterialShapeDrawable materialShapeDrawable;
        if (this.opticalCenterEnabled && this.isInHorizontalButtonGroup && (materialShapeDrawable = this.materialButtonHelper.getMaterialShapeDrawable()) != null) {
            return (int) (materialShapeDrawable.getCornerSizeDiffX() * OPTICAL_CENTER_RATIO);
        }
        return 0;
    }

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: com.google.android.material.button.MaterialButton.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        boolean checked;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            readFromParcel(parcel);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.checked ? 1 : 0);
        }

        private void readFromParcel(Parcel parcel) {
            this.checked = parcel.readInt() == 1;
        }
    }
}
