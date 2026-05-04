package com.google.android.material.timepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.TooltipCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.C1349R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialTimePicker extends DialogFragment implements TimePickerView.OnDoubleTapListener {
    public static final int INPUT_MODE_CLOCK = 0;
    static final String INPUT_MODE_EXTRA = "TIME_PICKER_INPUT_MODE";
    public static final int INPUT_MODE_KEYBOARD = 1;
    static final String NEGATIVE_BUTTON_TEXT_EXTRA = "TIME_PICKER_NEGATIVE_BUTTON_TEXT";
    static final String NEGATIVE_BUTTON_TEXT_RES_EXTRA = "TIME_PICKER_NEGATIVE_BUTTON_TEXT_RES";
    static final String OVERRIDE_THEME_RES_ID = "TIME_PICKER_OVERRIDE_THEME_RES_ID";
    static final String POSITIVE_BUTTON_TEXT_EXTRA = "TIME_PICKER_POSITIVE_BUTTON_TEXT";
    static final String POSITIVE_BUTTON_TEXT_RES_EXTRA = "TIME_PICKER_POSITIVE_BUTTON_TEXT_RES";
    static final String TIME_MODEL_EXTRA = "TIME_PICKER_TIME_MODEL";
    static final String TITLE_RES_EXTRA = "TIME_PICKER_TITLE_RES";
    static final String TITLE_TEXT_EXTRA = "TIME_PICKER_TITLE_TEXT";
    private TimePickerPresenter activePresenter;
    private Button cancelButton;
    private int clockIcon;
    private int keyboardIcon;
    private MaterialButton modeButton;
    private CharSequence negativeButtonText;
    private Button okButton;
    private CharSequence positiveButtonText;
    private ViewStub textInputStub;
    private TimeModel time;
    private TimePickerClockPresenter timePickerClockPresenter;
    private TimePickerTextInputPresenter timePickerTextInputPresenter;
    private TimePickerView timePickerView;
    private CharSequence titleText;
    private final Set<View.OnClickListener> positiveButtonListeners = new LinkedHashSet();
    private final Set<View.OnClickListener> negativeButtonListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnCancelListener> cancelListeners = new LinkedHashSet();
    private final Set<DialogInterface.OnDismissListener> dismissListeners = new LinkedHashSet();
    private int titleResId = 0;
    private int positiveButtonTextResId = 0;
    private int negativeButtonTextResId = 0;
    private int inputMode = 0;
    private int overrideThemeResId = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public static MaterialTimePicker newInstance(Builder builder) {
        MaterialTimePicker materialTimePicker = new MaterialTimePicker();
        Bundle bundle = new Bundle();
        bundle.putParcelable(TIME_MODEL_EXTRA, builder.time);
        if (builder.inputMode != null) {
            bundle.putInt(INPUT_MODE_EXTRA, builder.inputMode.intValue());
        }
        bundle.putInt(TITLE_RES_EXTRA, builder.titleTextResId);
        if (builder.titleText != null) {
            bundle.putCharSequence(TITLE_TEXT_EXTRA, builder.titleText);
        }
        bundle.putInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, builder.positiveButtonTextResId);
        if (builder.positiveButtonText != null) {
            bundle.putCharSequence(POSITIVE_BUTTON_TEXT_EXTRA, builder.positiveButtonText);
        }
        bundle.putInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, builder.negativeButtonTextResId);
        if (builder.negativeButtonText != null) {
            bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA, builder.negativeButtonText);
        }
        bundle.putInt(OVERRIDE_THEME_RES_ID, builder.overrideThemeResId);
        materialTimePicker.setArguments(bundle);
        return materialTimePicker;
    }

    public int getMinute() {
        return this.time.minute;
    }

    public void setMinute(int i) {
        this.time.setMinute(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }

    public int getHour() {
        return this.time.hour % 24;
    }

    public void setHour(int i) {
        this.time.setHourOfDay(i);
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.invalidate();
        }
    }

    public int getInputMode() {
        return this.inputMode;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = new Dialog(requireContext(), getThemeResId());
        Context context = dialog.getContext();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context, null, C1349R.attr.materialTimePickerStyle, C1349R.style.Widget_MaterialComponents_TimePicker);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, C1349R.styleable.MaterialTimePicker, C1349R.attr.materialTimePickerStyle, C1349R.style.Widget_MaterialComponents_TimePicker);
        this.clockIcon = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.MaterialTimePicker_clockIcon, 0);
        this.keyboardIcon = typedArrayObtainStyledAttributes.getResourceId(C1349R.styleable.MaterialTimePicker_keyboardIcon, 0);
        int color = typedArrayObtainStyledAttributes.getColor(C1349R.styleable.MaterialTimePicker_backgroundTint, 0);
        typedArrayObtainStyledAttributes.recycle();
        materialShapeDrawable.initializeElevationOverlay(context);
        materialShapeDrawable.setFillColor(ColorStateList.valueOf(color));
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(materialShapeDrawable);
        window.requestFeature(1);
        window.setLayout(-2, -2);
        materialShapeDrawable.setElevation(window.getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        restoreState(bundle);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putParcelable(TIME_MODEL_EXTRA, this.time);
        bundle.putInt(INPUT_MODE_EXTRA, this.inputMode);
        bundle.putInt(TITLE_RES_EXTRA, this.titleResId);
        bundle.putCharSequence(TITLE_TEXT_EXTRA, this.titleText);
        bundle.putInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, this.positiveButtonTextResId);
        bundle.putCharSequence(POSITIVE_BUTTON_TEXT_EXTRA, this.positiveButtonText);
        bundle.putInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, this.negativeButtonTextResId);
        bundle.putCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA, this.negativeButtonText);
        bundle.putInt(OVERRIDE_THEME_RES_ID, this.overrideThemeResId);
    }

    private void restoreState(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        TimeModel timeModel = (TimeModel) bundle.getParcelable(TIME_MODEL_EXTRA);
        this.time = timeModel;
        if (timeModel == null) {
            this.time = new TimeModel();
        }
        int i = 1;
        if (!getResources().getBoolean(C1349R.bool.timepicker_force_input_mode_keyboard) && this.time.format != 1) {
            i = 0;
        }
        this.inputMode = bundle.getInt(INPUT_MODE_EXTRA, i);
        this.titleResId = bundle.getInt(TITLE_RES_EXTRA, 0);
        this.titleText = bundle.getCharSequence(TITLE_TEXT_EXTRA);
        this.positiveButtonTextResId = bundle.getInt(POSITIVE_BUTTON_TEXT_RES_EXTRA, 0);
        this.positiveButtonText = bundle.getCharSequence(POSITIVE_BUTTON_TEXT_EXTRA);
        this.negativeButtonTextResId = bundle.getInt(NEGATIVE_BUTTON_TEXT_RES_EXTRA, 0);
        this.negativeButtonText = bundle.getCharSequence(NEGATIVE_BUTTON_TEXT_EXTRA);
        this.overrideThemeResId = bundle.getInt(OVERRIDE_THEME_RES_ID, 0);
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        final ViewGroup viewGroup2 = (ViewGroup) layoutInflater.inflate(C1349R.layout.material_timepicker_dialog, viewGroup);
        TimePickerView timePickerView = (TimePickerView) viewGroup2.findViewById(C1349R.id.material_timepicker_view);
        this.timePickerView = timePickerView;
        timePickerView.setOnDoubleTapListener(this);
        this.textInputStub = (ViewStub) viewGroup2.findViewById(C1349R.id.material_textinput_timepicker);
        this.modeButton = (MaterialButton) viewGroup2.findViewById(C1349R.id.material_timepicker_mode_button);
        this.okButton = (Button) viewGroup2.findViewById(C1349R.id.material_timepicker_ok_button);
        this.cancelButton = (Button) viewGroup2.findViewById(C1349R.id.material_timepicker_cancel_button);
        TextView textView = (TextView) viewGroup2.findViewById(C1349R.id.header_title);
        int i = this.titleResId;
        if (i != 0) {
            textView.setText(i);
        } else if (!TextUtils.isEmpty(this.titleText)) {
            textView.setText(this.titleText);
        }
        updateInputMode(this.modeButton);
        this.okButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTimePicker.$r8$lambda$3KnCEPbsynU1u2HHOPD3mxvQf58(this.f$0, viewGroup2, view);
            }
        });
        int i2 = this.positiveButtonTextResId;
        if (i2 != 0) {
            this.okButton.setText(i2);
        } else if (!TextUtils.isEmpty(this.positiveButtonText)) {
            this.okButton.setText(this.positiveButtonText);
        }
        this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTimePicker.$r8$lambda$6LI4ynSIuOQcLg2QaQGbiTlU2Hc(this.f$0, view);
            }
        });
        int i3 = this.negativeButtonTextResId;
        if (i3 != 0) {
            this.cancelButton.setText(i3);
        } else if (!TextUtils.isEmpty(this.negativeButtonText)) {
            this.cancelButton.setText(this.negativeButtonText);
        }
        updateCancelButtonVisibility();
        this.modeButton.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.timepicker.MaterialTimePicker$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialTimePicker.m3501$r8$lambda$pinxgCSKLWy6LHDG69A2DAj8qk(this.f$0, view);
            }
        });
        return viewGroup2;
    }

    public static /* synthetic */ void $r8$lambda$3KnCEPbsynU1u2HHOPD3mxvQf58(MaterialTimePicker materialTimePicker, ViewGroup viewGroup, View view) {
        TimePickerPresenter timePickerPresenter = materialTimePicker.activePresenter;
        if (timePickerPresenter instanceof TimePickerTextInputPresenter) {
            TimePickerTextInputPresenter timePickerTextInputPresenter = (TimePickerTextInputPresenter) timePickerPresenter;
            if (timePickerTextInputPresenter.hasError()) {
                timePickerTextInputPresenter.vibrateAndMaybeBeep(viewGroup);
                timePickerTextInputPresenter.accessibilityFocusOnError();
                return;
            }
        }
        Iterator<View.OnClickListener> it = materialTimePicker.positiveButtonListeners.iterator();
        while (it.hasNext()) {
            it.next().onClick(view);
        }
        materialTimePicker.dismiss();
    }

    public static /* synthetic */ void $r8$lambda$6LI4ynSIuOQcLg2QaQGbiTlU2Hc(MaterialTimePicker materialTimePicker, View view) {
        Iterator<View.OnClickListener> it = materialTimePicker.negativeButtonListeners.iterator();
        while (it.hasNext()) {
            it.next().onClick(view);
        }
        materialTimePicker.dismiss();
    }

    /* JADX INFO: renamed from: $r8$lambda$pi-nxgCSKLWy6LHDG69A2DAj8qk, reason: not valid java name */
    public static /* synthetic */ void m3501$r8$lambda$pinxgCSKLWy6LHDG69A2DAj8qk(MaterialTimePicker materialTimePicker, View view) {
        materialTimePicker.inputMode = materialTimePicker.inputMode == 0 ? 1 : 0;
        materialTimePicker.updateInputMode(materialTimePicker.modeButton);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.activePresenter instanceof TimePickerTextInputPresenter) {
            view.postDelayed(new Runnable() { // from class: com.google.android.material.timepicker.MaterialTimePicker$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    MaterialTimePicker.$r8$lambda$vk_2VB5ZvE1tpGsL0xuRIBlnO1s(this.f$0);
                }
            }, 100L);
        }
    }

    public static /* synthetic */ void $r8$lambda$vk_2VB5ZvE1tpGsL0xuRIBlnO1s(MaterialTimePicker materialTimePicker) {
        TimePickerPresenter timePickerPresenter = materialTimePicker.activePresenter;
        if (timePickerPresenter instanceof TimePickerTextInputPresenter) {
            ((TimePickerTextInputPresenter) timePickerPresenter).resetChecked();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.activePresenter = null;
        this.timePickerClockPresenter = null;
        this.timePickerTextInputPresenter = null;
        TimePickerView timePickerView = this.timePickerView;
        if (timePickerView != null) {
            timePickerView.setOnDoubleTapListener(null);
            this.timePickerView = null;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.cancelListeners.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.dismissListeners.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        updateCancelButtonVisibility();
    }

    @Override // com.google.android.material.timepicker.TimePickerView.OnDoubleTapListener
    public void onDoubleTap() {
        this.inputMode = 1;
        updateInputMode(this.modeButton);
        this.timePickerTextInputPresenter.resetChecked();
    }

    private void updateInputMode(MaterialButton materialButton) {
        if (materialButton == null || this.timePickerView == null || this.textInputStub == null) {
            return;
        }
        TimePickerPresenter timePickerPresenter = this.activePresenter;
        if (timePickerPresenter != null) {
            timePickerPresenter.hide();
        }
        TimePickerPresenter timePickerPresenterInitializeOrRetrieveActivePresenterForMode = initializeOrRetrieveActivePresenterForMode(this.inputMode, this.timePickerView, this.textInputStub);
        this.activePresenter = timePickerPresenterInitializeOrRetrieveActivePresenterForMode;
        timePickerPresenterInitializeOrRetrieveActivePresenterForMode.show();
        this.activePresenter.invalidate();
        ModeButtonData modeButtonData = getModeButtonData(this.inputMode);
        materialButton.setIconResource(modeButtonData.iconResId);
        materialButton.setContentDescription(getResources().getString(modeButtonData.contentDescriptionResId));
        TooltipCompat.setTooltipText(materialButton, getResources().getString(modeButtonData.tooltipTextResId));
        materialButton.sendAccessibilityEvent(4);
    }

    private void updateCancelButtonVisibility() {
        Button button = this.cancelButton;
        if (button != null) {
            button.setVisibility(isCancelable() ? 0 : 8);
        }
    }

    private TimePickerPresenter initializeOrRetrieveActivePresenterForMode(int i, TimePickerView timePickerView, ViewStub viewStub) {
        if (i == 0) {
            TimePickerClockPresenter timePickerClockPresenter = this.timePickerClockPresenter;
            if (timePickerClockPresenter == null) {
                timePickerClockPresenter = new TimePickerClockPresenter(timePickerView, this.time);
            }
            this.timePickerClockPresenter = timePickerClockPresenter;
            return timePickerClockPresenter;
        }
        if (this.timePickerTextInputPresenter == null) {
            this.timePickerTextInputPresenter = new TimePickerTextInputPresenter((LinearLayout) viewStub.inflate(), this.time);
        }
        this.timePickerTextInputPresenter.clearError();
        this.timePickerTextInputPresenter.clearCheck();
        return this.timePickerTextInputPresenter;
    }

    private ModeButtonData getModeButtonData(int i) {
        if (i == 0) {
            return new ModeButtonData(this.keyboardIcon, C1349R.string.material_timepicker_text_input_mode_description, C1349R.string.material_timepicker_text_input_mode_tooltip);
        }
        if (i == 1) {
            return new ModeButtonData(this.clockIcon, C1349R.string.material_timepicker_clock_mode_description, C1349R.string.material_timepicker_clock_mode_tooltip);
        }
        throw new IllegalArgumentException("no button data for mode: " + i);
    }

    TimePickerClockPresenter getTimePickerClockPresenter() {
        return this.timePickerClockPresenter;
    }

    void setActivePresenter(TimePickerPresenter timePickerPresenter) {
        this.activePresenter = timePickerPresenter;
    }

    public boolean addOnPositiveButtonClickListener(View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.add(onClickListener);
    }

    public boolean removeOnPositiveButtonClickListener(View.OnClickListener onClickListener) {
        return this.positiveButtonListeners.remove(onClickListener);
    }

    public void clearOnPositiveButtonClickListeners() {
        this.positiveButtonListeners.clear();
    }

    public boolean addOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.add(onClickListener);
    }

    public boolean removeOnNegativeButtonClickListener(View.OnClickListener onClickListener) {
        return this.negativeButtonListeners.remove(onClickListener);
    }

    public void clearOnNegativeButtonClickListeners() {
        this.negativeButtonListeners.clear();
    }

    public boolean addOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.add(onCancelListener);
    }

    public boolean removeOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        return this.cancelListeners.remove(onCancelListener);
    }

    public void clearOnCancelListeners() {
        this.cancelListeners.clear();
    }

    public boolean addOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.add(onDismissListener);
    }

    public boolean removeOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        return this.dismissListeners.remove(onDismissListener);
    }

    public void clearOnDismissListeners() {
        this.dismissListeners.clear();
    }

    private int getThemeResId() {
        int i = this.overrideThemeResId;
        if (i != 0) {
            return i;
        }
        TypedValue typedValueResolve = MaterialAttributes.resolve(requireContext(), C1349R.attr.materialTimePickerTheme);
        if (typedValueResolve == null) {
            return 0;
        }
        return typedValueResolve.data;
    }

    public static final class Builder {
        private Integer inputMode;
        private CharSequence negativeButtonText;
        private CharSequence positiveButtonText;
        private CharSequence titleText;
        private TimeModel time = new TimeModel();
        private int titleTextResId = 0;
        private int positiveButtonTextResId = 0;
        private int negativeButtonTextResId = 0;
        private int overrideThemeResId = 0;

        public Builder setInputMode(int i) {
            this.inputMode = Integer.valueOf(i);
            return this;
        }

        public Builder setHour(int i) {
            this.time.setHourOfDay(i);
            return this;
        }

        public Builder setMinute(int i) {
            this.time.setMinute(i);
            return this;
        }

        public Builder setTimeFormat(int i) {
            TimeModel timeModel = this.time;
            int i2 = timeModel.hour;
            int i3 = timeModel.minute;
            TimeModel timeModel2 = new TimeModel(i);
            this.time = timeModel2;
            timeModel2.setMinute(i3);
            this.time.setHourOfDay(i2);
            return this;
        }

        public Builder setTitleText(int i) {
            this.titleTextResId = i;
            return this;
        }

        public Builder setTitleText(CharSequence charSequence) {
            this.titleText = charSequence;
            return this;
        }

        public Builder setPositiveButtonText(int i) {
            this.positiveButtonTextResId = i;
            return this;
        }

        public Builder setPositiveButtonText(CharSequence charSequence) {
            this.positiveButtonText = charSequence;
            return this;
        }

        public Builder setNegativeButtonText(int i) {
            this.negativeButtonTextResId = i;
            return this;
        }

        public Builder setNegativeButtonText(CharSequence charSequence) {
            this.negativeButtonText = charSequence;
            return this;
        }

        public Builder setTheme(int i) {
            this.overrideThemeResId = i;
            return this;
        }

        public MaterialTimePicker build() {
            return MaterialTimePicker.newInstance(this);
        }
    }

    private static final class ModeButtonData {
        final int contentDescriptionResId;
        final int iconResId;
        final int tooltipTextResId;

        ModeButtonData(int i, int i2, int i3) {
            this.iconResId = i;
            this.contentDescriptionResId = i2;
            this.tooltipTextResId = i3;
        }
    }
}
