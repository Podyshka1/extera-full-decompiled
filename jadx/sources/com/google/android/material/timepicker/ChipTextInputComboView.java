package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.R$attr;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1349R;
import com.google.android.material.chip.Chip;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {
    private final Chip chip;
    private CharSequence chipText;
    private final EditText editText;
    private final AccessibilityDelegateCompat editTextAccessibilityDelegate;
    private boolean hasError;
    private TextView label;
    private ColorStateList originalChipBackgroundColor;
    private int originalChipStrokeColor;
    private ColorStateList originalChipTextColor;
    private ColorStateList originalEditTextColor;
    private ColorStateList originalEditTextCursorColor;
    private ColorStateList originalLabelColor;
    private final TextInputLayout textInputLayout;
    private TextWatcher watcher;

    public ChipTextInputComboView(Context context) {
        this(context, null);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.chipText = _UrlKt.FRAGMENT_ENCODE_SET;
        this.hasError = false;
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        Chip chip = (Chip) layoutInflaterFrom.inflate(C1349R.layout.material_time_chip, (ViewGroup) this, false);
        this.chip = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) layoutInflaterFrom.inflate(C1349R.layout.material_time_input, (ViewGroup) this, false);
        this.textInputLayout = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.editText = editText;
        editText.setVisibility(4);
        TextFormatter textFormatter = new TextFormatter();
        this.watcher = textFormatter;
        editText.addTextChangedListener(textFormatter);
        updateHintLocales();
        addView(chip);
        addView(textInputLayout);
        this.label = (TextView) findViewById(C1349R.id.material_label);
        editText.setId(View.generateViewId());
        this.label.setLabelFor(editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
        this.editTextAccessibilityDelegate = new AccessibilityDelegateCompat() { // from class: com.google.android.material.timepicker.ChipTextInputComboView.1
            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setText(((EditText) view).getText());
                accessibilityNodeInfoCompat.setHintText(ChipTextInputComboView.this.label.getText());
                accessibilityNodeInfoCompat.setMaxTextLength(2);
            }
        };
    }

    private void updateHintLocales() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.editText.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.chip.isChecked();
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        this.chip.setChecked(z);
        if (z) {
            this.chip.setText(_UrlKt.FRAGMENT_ENCODE_SET);
            this.chip.setImportantForAccessibility(2);
        } else {
            this.chip.setText(this.chipText);
            this.chip.setImportantForAccessibility(1);
        }
        this.editText.setVisibility(z ? 0 : 4);
        if (isChecked()) {
            ViewUtils.requestFocusAndShowKeyboard(this.editText, false);
        }
    }

    @Override // android.widget.Checkable
    public void toggle() {
        this.chip.toggle();
    }

    public void setText(CharSequence charSequence) {
        String text = formatText(charSequence);
        this.chipText = text;
        this.chip.setText(text);
        if (TextUtils.isEmpty(text)) {
            return;
        }
        this.editText.removeTextChangedListener(this.watcher);
        this.editText.setText(text);
        ViewCompat.setAccessibilityDelegate(this.editText, this.editTextAccessibilityDelegate);
        this.editText.addTextChangedListener(this.watcher);
    }

    CharSequence getChipText() {
        return this.chipText;
    }

    void requestAccessibilityFocus() {
        if (this.editText.getVisibility() == 0) {
            this.editText.sendAccessibilityEvent(8);
        } else {
            this.chip.sendAccessibilityEvent(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String formatText(CharSequence charSequence) {
        return TimeModel.formatText(getResources(), charSequence);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.chip.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setTag(int i, Object obj) {
        this.chip.setTag(i, obj);
    }

    public void setHelperText(CharSequence charSequence) {
        this.label.setText(charSequence);
    }

    public void setCursorVisible(boolean z) {
        this.editText.setCursorVisible(z);
    }

    public void addInputFilter(InputFilter inputFilter) {
        InputFilter[] filters = this.editText.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = inputFilter;
        this.editText.setFilters(inputFilterArr);
    }

    public TextInputLayout getTextInput() {
        return this.textInputLayout;
    }

    public void setChipDelegate(AccessibilityDelegateCompat accessibilityDelegateCompat) {
        ViewCompat.setAccessibilityDelegate(this.chip, accessibilityDelegateCompat);
    }

    public void setError(boolean z) {
        if (this.hasError == z) {
            return;
        }
        this.hasError = z;
        if (z) {
            applyErrorColors();
        } else {
            clearErrorColors();
        }
    }

    private void applyErrorColors() {
        this.originalChipBackgroundColor = this.chip.getChipBackgroundColor();
        this.originalChipTextColor = this.chip.getTextColors();
        this.originalEditTextColor = this.editText.getTextColors();
        this.originalLabelColor = this.label.getTextColors();
        this.originalChipStrokeColor = this.textInputLayout.getBoxStrokeColor();
        int color = MaterialColors.getColor(this, R$attr.colorError);
        ColorStateList colorStateListOrNull = MaterialColors.getColorStateListOrNull(getContext(), C1349R.attr.colorErrorContainer);
        ColorStateList colorStateListOrNull2 = MaterialColors.getColorStateListOrNull(getContext(), C1349R.attr.colorOnErrorContainer);
        if (colorStateListOrNull == null || colorStateListOrNull2 == null) {
            return;
        }
        this.chip.setChipBackgroundColor(colorStateListOrNull);
        this.chip.setTextColor(colorStateListOrNull2);
        this.editText.setTextColor(colorStateListOrNull2);
        this.textInputLayout.setBoxStrokeColor(color);
        this.label.setTextColor(color);
        if (Build.VERSION.SDK_INT >= 29) {
            this.originalEditTextCursorColor = this.textInputLayout.getCursorColor();
            this.textInputLayout.setCursorColor(colorStateListOrNull2);
        }
    }

    private void clearErrorColors() {
        this.chip.setChipBackgroundColor(this.originalChipBackgroundColor);
        this.chip.setTextColor(this.originalChipTextColor);
        this.editText.setTextColor(this.originalEditTextColor);
        this.textInputLayout.setBoxStrokeColor(this.originalChipStrokeColor);
        this.label.setTextColor(this.originalLabelColor);
        if (Build.VERSION.SDK_INT >= 29) {
            this.textInputLayout.setCursorColor(this.originalEditTextCursorColor);
        }
    }

    public boolean hasError() {
        return this.hasError;
    }

    private class TextFormatter extends TextWatcherAdapter {
        private static final String DEFAULT_TEXT = "00";

        private TextFormatter() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            if (!TextUtils.isEmpty(editable)) {
                String text = ChipTextInputComboView.this.formatText(editable);
                ChipTextInputComboView chipTextInputComboView = ChipTextInputComboView.this;
                if (TextUtils.isEmpty(text)) {
                    text = ChipTextInputComboView.this.formatText(DEFAULT_TEXT);
                }
                chipTextInputComboView.chipText = text;
                return;
            }
            ChipTextInputComboView chipTextInputComboView2 = ChipTextInputComboView.this;
            chipTextInputComboView2.chipText = chipTextInputComboView2.formatText(DEFAULT_TEXT);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateHintLocales();
    }
}
