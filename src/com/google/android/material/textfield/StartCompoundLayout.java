package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.C1349R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"ViewConstructor"})
class StartCompoundLayout extends LinearLayout {
    private boolean hintExpanded;
    private CharSequence prefixText;
    private final TextView prefixTextView;
    private int startIconMinSize;
    private View.OnLongClickListener startIconOnLongClickListener;
    private ImageView.ScaleType startIconScaleType;
    private ColorStateList startIconTintList;
    private PorterDuff.Mode startIconTintMode;
    private final CheckableImageButton startIconView;
    private final TextInputLayout textInputLayout;

    StartCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        this.textInputLayout = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1349R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.startIconView = checkableImageButton;
        IconHelper.setCompatRippleBackgroundIfNeeded(checkableImageButton);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext());
        this.prefixTextView = appCompatTextView;
        initStartIconView(tintTypedArray);
        initPrefixTextView(tintTypedArray);
        addView(checkableImageButton);
        addView(appCompatTextView);
        checkableImageButton.setOnFocusableChangedListener(new CheckableImageButton.OnFocusableChangedListener() { // from class: com.google.android.material.textfield.StartCompoundLayout$$ExternalSyntheticLambda0
            @Override // com.google.android.material.internal.CheckableImageButton.OnFocusableChangedListener
            public final void onFocusableChanged(View view, boolean z) {
                StartCompoundLayout startCompoundLayout = this.f$0;
                IconHelper.updateIconTooltip(startCompoundLayout.startIconView, startCompoundLayout.startIconOnLongClickListener, startCompoundLayout.getStartIconContentDescription());
            }
        });
    }

    private void initStartIconView(TintTypedArray tintTypedArray) {
        if (MaterialResources.isFontScaleAtLeast1_3(getContext())) {
            ((ViewGroup.MarginLayoutParams) this.startIconView.getLayoutParams()).setMarginEnd(0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_startIconTint)) {
            this.startIconTintList = MaterialResources.getColorStateList(getContext(), tintTypedArray, C1349R.styleable.TextInputLayout_startIconTint);
        }
        if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_startIconTintMode)) {
            this.startIconTintMode = ViewUtils.parseTintMode(tintTypedArray.getInt(C1349R.styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(tintTypedArray.getDrawable(C1349R.styleable.TextInputLayout_startIconDrawable));
            if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(tintTypedArray.getText(C1349R.styleable.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(tintTypedArray.getBoolean(C1349R.styleable.TextInputLayout_startIconCheckable, true));
        }
        setStartIconMinSize(tintTypedArray.getDimensionPixelSize(C1349R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(C1349R.dimen.mtrl_min_touch_target_size)));
        if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_startIconScaleType)) {
            setStartIconScaleType(IconHelper.convertScaleType(tintTypedArray.getInt(C1349R.styleable.TextInputLayout_startIconScaleType, -1)));
        }
    }

    private void initPrefixTextView(TintTypedArray tintTypedArray) {
        this.prefixTextView.setVisibility(8);
        this.prefixTextView.setId(C1349R.id.textinput_prefix_text);
        this.prefixTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.prefixTextView.setAccessibilityLiveRegion(1);
        setPrefixTextAppearance(tintTypedArray.getResourceId(C1349R.styleable.TextInputLayout_prefixTextAppearance, 0));
        if (tintTypedArray.hasValue(C1349R.styleable.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(tintTypedArray.getColorStateList(C1349R.styleable.TextInputLayout_prefixTextColor));
        }
        setPrefixText(tintTypedArray.getText(C1349R.styleable.TextInputLayout_prefixText));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        updatePrefixTextViewPadding();
    }

    TextView getPrefixTextView() {
        return this.prefixTextView;
    }

    void setPrefixText(CharSequence charSequence) {
        this.prefixText = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.prefixTextView.setText(charSequence);
        updateVisibility();
    }

    CharSequence getPrefixText() {
        return this.prefixText;
    }

    void setPrefixTextColor(ColorStateList colorStateList) {
        this.prefixTextView.setTextColor(colorStateList);
    }

    ColorStateList getPrefixTextColor() {
        return this.prefixTextView.getTextColors();
    }

    void setPrefixTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.prefixTextView, i);
    }

    void setStartIconDrawable(Drawable drawable) {
        this.startIconView.setImageDrawable(drawable);
        if (drawable != null) {
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, this.startIconTintList, this.startIconTintMode);
            setStartIconVisible(true);
            refreshStartIconDrawableState();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription(null);
        }
    }

    Drawable getStartIconDrawable() {
        return this.startIconView.getDrawable();
    }

    void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        IconHelper.setIconOnClickListener(this.startIconView, onClickListener, this.startIconOnLongClickListener);
    }

    void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.startIconOnLongClickListener = onLongClickListener;
        IconHelper.setIconOnLongClickListener(this.startIconView, onLongClickListener);
    }

    void setStartIconVisible(boolean z) {
        if (isStartIconVisible() != z) {
            this.startIconView.setVisibility(z ? 0 : 8);
            updatePrefixTextViewPadding();
            updateVisibility();
        }
    }

    boolean isStartIconVisible() {
        return this.startIconView.getVisibility() == 0;
    }

    void refreshStartIconDrawableState() {
        IconHelper.refreshIconDrawableState(this.textInputLayout, this.startIconView, this.startIconTintList);
    }

    void setStartIconCheckable(boolean z) {
        this.startIconView.setCheckable(z);
    }

    boolean isStartIconCheckable() {
        return this.startIconView.isCheckable();
    }

    void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.startIconView.setContentDescription(charSequence);
            IconHelper.updateIconTooltip(this.startIconView, this.startIconOnLongClickListener, charSequence);
        }
    }

    CharSequence getStartIconContentDescription() {
        return this.startIconView.getContentDescription();
    }

    void setStartIconTintList(ColorStateList colorStateList) {
        if (this.startIconTintList != colorStateList) {
            this.startIconTintList = colorStateList;
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, colorStateList, this.startIconTintMode);
        }
    }

    void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.startIconTintMode != mode) {
            this.startIconTintMode = mode;
            IconHelper.applyIconTint(this.textInputLayout, this.startIconView, this.startIconTintList, mode);
        }
    }

    void setStartIconMinSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != this.startIconMinSize) {
            this.startIconMinSize = i;
            IconHelper.setIconMinSize(this.startIconView, i);
        }
    }

    int getStartIconMinSize() {
        return this.startIconMinSize;
    }

    void setStartIconScaleType(ImageView.ScaleType scaleType) {
        this.startIconScaleType = scaleType;
        IconHelper.setIconScaleType(this.startIconView, scaleType);
    }

    ImageView.ScaleType getStartIconScaleType() {
        return this.startIconScaleType;
    }

    void setupAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.prefixTextView.getVisibility() == 0) {
            accessibilityNodeInfoCompat.setLabelFor(this.prefixTextView);
            accessibilityNodeInfoCompat.setTraversalAfter(this.prefixTextView);
        } else {
            accessibilityNodeInfoCompat.setTraversalAfter(this.startIconView);
        }
    }

    void updatePrefixTextViewPadding() {
        EditText editText = this.textInputLayout.editText;
        if (editText == null) {
            return;
        }
        this.prefixTextView.setPaddingRelative(isStartIconVisible() ? 0 : editText.getPaddingStart(), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C1349R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    int getPrefixTextStartOffset() {
        return getPaddingStart() + this.prefixTextView.getPaddingStart() + (isStartIconVisible() ? this.startIconView.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) this.startIconView.getLayoutParams()).getMarginEnd() : 0);
    }

    void onHintStateChanged(boolean z) {
        this.hintExpanded = z;
        updateVisibility();
    }

    private void updateVisibility() {
        int i = (this.prefixText == null || this.hintExpanded) ? 8 : 0;
        setVisibility((this.startIconView.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.prefixTextView.setVisibility(i);
        this.textInputLayout.updateDummyDrawables();
    }
}
