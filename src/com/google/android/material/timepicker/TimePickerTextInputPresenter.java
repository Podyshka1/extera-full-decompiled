package com.google.android.material.timepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.C1349R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Locale;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes5.dex */
class TimePickerTextInputPresenter implements TimePickerView.OnSelectionChange, TimePickerPresenter {
    private static final int HOURS_MAX_LENGTH = 2;
    private static final int HOURS_MAX_VALUE_12H = 12;
    private static final int HOURS_MAX_VALUE_24H = 23;
    private static final int MINUTES_MAX_LENGTH = 2;
    private static final int MINUTES_MAX_VALUE = 59;
    private final TimePickerTextInputKeyController controller;
    private final EditText hourEditText;
    private final String hourError24hText;
    private final String hourErrorText;
    private final TextView hourLabel;
    private final String hourText;
    private final ChipTextInputComboView hourTextInput;
    private final EditText minuteEditText;
    private final String minuteErrorText;
    private final TextView minuteLabel;
    private final String minuteText;
    private final ChipTextInputComboView minuteTextInput;
    private final TimeModel time;
    private final LinearLayout timePickerView;
    private MaterialButtonToggleGroup toggle;
    private final TextWatcher minuteTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.1
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    TimePickerTextInputPresenter.this.time.setMinute(0);
                    TimePickerTextInputPresenter.this.clearMinuteError();
                } else if (editable.length() > 2) {
                    editable.delete(2, editable.length());
                    TimePickerTextInputPresenter timePickerTextInputPresenter = TimePickerTextInputPresenter.this;
                    timePickerTextInputPresenter.vibrateAndMaybeBeep(timePickerTextInputPresenter.minuteEditText);
                } else {
                    int i = Integer.parseInt(editable.toString());
                    if (i > 59) {
                        TimePickerTextInputPresenter.this.setMinuteError();
                    } else {
                        TimePickerTextInputPresenter.this.clearMinuteError();
                    }
                    TimePickerTextInputPresenter.this.time.setMinute(i);
                }
            } catch (NumberFormatException unused) {
                TimePickerTextInputPresenter.this.setMinuteError();
            }
        }
    };
    private final TextWatcher hourTextWatcher = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.2
        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (TextUtils.isEmpty(editable)) {
                    TimePickerTextInputPresenter.this.time.setHour(0);
                    TimePickerTextInputPresenter.this.clearHourError();
                    return;
                }
                if (editable.length() > 2) {
                    editable.delete(2, editable.length());
                    TimePickerTextInputPresenter timePickerTextInputPresenter = TimePickerTextInputPresenter.this;
                    timePickerTextInputPresenter.vibrateAndMaybeBeep(timePickerTextInputPresenter.hourEditText);
                    return;
                }
                int i = Integer.parseInt(editable.toString());
                if ((TimePickerTextInputPresenter.this.time.format != 0 || i <= 12) && (TimePickerTextInputPresenter.this.time.format != 1 || i <= 23)) {
                    TimePickerTextInputPresenter.this.clearHourError();
                } else {
                    TimePickerTextInputPresenter.this.setHourError();
                }
                TimePickerTextInputPresenter.this.time.setHour(i);
            } catch (NumberFormatException unused) {
                TimePickerTextInputPresenter.this.setHourError();
            }
        }
    };

    public TimePickerTextInputPresenter(LinearLayout linearLayout, final TimeModel timeModel) {
        this.timePickerView = linearLayout;
        this.time = timeModel;
        final Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(C1349R.id.material_minute_text_input);
        this.minuteTextInput = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(C1349R.id.material_hour_text_input);
        this.hourTextInput = chipTextInputComboView2;
        TextView textView = (TextView) chipTextInputComboView.findViewById(C1349R.id.material_label);
        this.minuteLabel = textView;
        TextView textView2 = (TextView) chipTextInputComboView2.findViewById(C1349R.id.material_label);
        this.hourLabel = textView2;
        textView.setText(resources.getString(C1349R.string.material_timepicker_minute));
        textView.setImportantForAccessibility(2);
        textView2.setText(resources.getString(C1349R.string.material_timepicker_hour));
        textView2.setImportantForAccessibility(2);
        this.minuteText = resources.getString(C1349R.string.material_timepicker_minute);
        this.hourText = resources.getString(C1349R.string.material_timepicker_hour);
        this.minuteErrorText = resources.getString(C1349R.string.material_timepicker_minute_error);
        this.hourErrorText = resources.getString(C1349R.string.material_timepicker_hour_error);
        this.hourError24hText = resources.getString(C1349R.string.material_timepicker_hour_error_24h);
        chipTextInputComboView.setTag(C1349R.id.selection_type, 12);
        chipTextInputComboView2.setTag(C1349R.id.selection_type, 10);
        if (timeModel.format == 0) {
            setupPeriodToggle();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimePickerTextInputPresenter.m3502$r8$lambda$ZpoZPJ823VpZ9oqwqdZ_RXwQG8(this.f$0, view);
            }
        };
        chipTextInputComboView2.setOnClickListener(onClickListener);
        chipTextInputComboView.setOnClickListener(onClickListener);
        EditText editText = chipTextInputComboView2.getTextInput().getEditText();
        this.hourEditText = editText;
        editText.setAccessibilityDelegate(setTimeUnitAccessibilityLabel(linearLayout.getResources(), C1349R.string.material_timepicker_hour));
        EditText editText2 = chipTextInputComboView.getTextInput().getEditText();
        this.minuteEditText = editText2;
        editText2.setAccessibilityDelegate(setTimeUnitAccessibilityLabel(linearLayout.getResources(), C1349R.string.material_timepicker_minute));
        this.controller = new TimePickerTextInputKeyController(chipTextInputComboView2, chipTextInputComboView, timeModel);
        chipTextInputComboView2.setChipDelegate(new ClickActionDelegate(linearLayout.getContext(), C1349R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.3
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(resources.getString(C1349R.string.material_timepicker_hour) + " " + view.getResources().getString(timeModel.getHourContentDescriptionResId(), String.valueOf(timeModel.getHourForDisplay())));
            }
        });
        chipTextInputComboView.setChipDelegate(new ClickActionDelegate(linearLayout.getContext(), C1349R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.4
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setContentDescription(resources.getString(C1349R.string.material_timepicker_minute) + " " + view.getResources().getString(C1349R.string.material_minute_suffix, String.valueOf(timeModel.minute)));
            }
        });
        initialize();
    }

    /* JADX INFO: renamed from: $r8$lambda$ZpoZPJ-823VpZ9oqwqdZ_RXwQG8, reason: not valid java name */
    public static /* synthetic */ void m3502$r8$lambda$ZpoZPJ823VpZ9oqwqdZ_RXwQG8(TimePickerTextInputPresenter timePickerTextInputPresenter, View view) {
        timePickerTextInputPresenter.getClass();
        timePickerTextInputPresenter.onSelectionChanged(((Integer) view.getTag(C1349R.id.selection_type)).intValue());
    }

    private View.AccessibilityDelegate setTimeUnitAccessibilityLabel(final Resources resources, final int i) {
        return new View.AccessibilityDelegate() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.5
            @Override // android.view.View.AccessibilityDelegate
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setText(resources.getString(i));
            }
        };
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void initialize() {
        addTextWatchers();
        setTime(this.time);
        this.controller.bind();
    }

    private void addTextWatchers() {
        this.hourEditText.addTextChangedListener(this.hourTextWatcher);
        this.minuteEditText.addTextChangedListener(this.minuteTextWatcher);
    }

    private void removeTextWatchers() {
        this.hourEditText.removeTextChangedListener(this.hourTextWatcher);
        this.minuteEditText.removeTextChangedListener(this.minuteTextWatcher);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"FlaggedApi"})
    public void setMinuteError() {
        this.minuteTextInput.setError(true);
        this.minuteLabel.setText(this.minuteErrorText);
        TextView textView = this.minuteLabel;
        textView.announceForAccessibility(textView.getText());
        vibrateAndMaybeBeep(this.minuteLabel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"FlaggedApi"})
    public void setHourError() {
        this.hourTextInput.setError(true);
        this.hourLabel.setText(this.time.format == 1 ? this.hourError24hText : this.hourErrorText);
        TextView textView = this.hourLabel;
        textView.announceForAccessibility(textView.getText());
        vibrateAndMaybeBeep(this.hourLabel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearMinuteError() {
        this.minuteTextInput.setError(false);
        this.minuteLabel.setText(this.minuteText);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearHourError() {
        this.hourTextInput.setError(false);
        this.hourLabel.setText(this.hourText);
    }

    boolean hasError() {
        return this.minuteTextInput.hasError() || this.hourTextInput.hasError();
    }

    void clearError() {
        clearMinuteError();
        clearHourError();
    }

    void vibrateAndMaybeBeep(View view) {
        vibrate(view);
        if (isTouchExplorationEnabled(view.getContext())) {
            return;
        }
        beep(view.getContext());
    }

    void accessibilityFocusOnError() {
        if (this.hourTextInput.hasError()) {
            requestAccessibilityFocusAndAnnounce(this.hourTextInput, this.hourLabel);
        } else if (this.minuteTextInput.hasError()) {
            requestAccessibilityFocusAndAnnounce(this.minuteTextInput, this.minuteLabel);
        }
    }

    private void requestAccessibilityFocusAndAnnounce(ChipTextInputComboView chipTextInputComboView, TextView textView) {
        chipTextInputComboView.requestAccessibilityFocus();
        textView.announceForAccessibility(textView.getText());
    }

    private void vibrate(View view) {
        ViewCompat.performHapticFeedback(view, 17);
    }

    private void beep(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        if (audioManager != null) {
            audioManager.playSoundEffect(9);
        }
    }

    private void setTime(TimeModel timeModel) {
        removeTextWatchers();
        Locale locale = this.timePickerView.getResources().getConfiguration().locale;
        String str = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.minute));
        String str2 = String.format(locale, TimeModel.ZERO_LEADING_NUMBER_FORMAT, Integer.valueOf(timeModel.getHourForDisplay()));
        this.minuteTextInput.setText(str);
        this.hourTextInput.setText(str2);
        addTextWatchers();
        onSelectionChanged(timeModel.selection);
    }

    private void setupPeriodToggle() {
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) this.timePickerView.findViewById(C1349R.id.material_clock_period_toggle);
        this.toggle = materialButtonToggleGroup;
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter$$ExternalSyntheticLambda0
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public final void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i, boolean z) {
                TimePickerTextInputPresenter.$r8$lambda$n_snvJXUcsOZPGqz3GV6Xx8FPG8(this.f$0, materialButtonToggleGroup2, i, z);
            }
        });
        this.toggle.setVisibility(0);
        updateSelection();
    }

    public static /* synthetic */ void $r8$lambda$n_snvJXUcsOZPGqz3GV6Xx8FPG8(TimePickerTextInputPresenter timePickerTextInputPresenter, MaterialButtonToggleGroup materialButtonToggleGroup, int i, boolean z) {
        timePickerTextInputPresenter.getClass();
        if (z) {
            timePickerTextInputPresenter.time.setPeriod(i == C1349R.id.material_clock_period_pm_button ? 1 : 0);
        }
    }

    private void updateSelection() {
        int i;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.toggle;
        if (materialButtonToggleGroup == null) {
            return;
        }
        if (this.time.period == 0) {
            i = C1349R.id.material_clock_period_am_button;
        } else {
            i = C1349R.id.material_clock_period_pm_button;
        }
        materialButtonToggleGroup.check(i);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnSelectionChange
    public void onSelectionChanged(int i) {
        this.time.selection = i;
        this.minuteTextInput.setChecked(i == 12);
        this.hourTextInput.setChecked(i == 10);
        updateSelection();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void show() {
        this.timePickerView.setVisibility(0);
        onSelectionChanged(this.time.selection);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void hide() {
        View focusedChild = this.timePickerView.getFocusedChild();
        if (focusedChild != null) {
            ViewUtils.hideKeyboard(focusedChild, false);
        }
        this.timePickerView.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public void invalidate() {
        setTime(this.time);
    }

    public void resetChecked() {
        this.minuteTextInput.setChecked(this.time.selection == 12);
        this.hourTextInput.setChecked(this.time.selection == 10);
    }

    public void clearCheck() {
        this.minuteTextInput.setChecked(false);
        this.hourTextInput.setChecked(false);
    }

    private static boolean isTouchExplorationEnabled(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        return accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled();
    }
}
