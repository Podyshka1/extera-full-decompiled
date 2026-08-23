package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import com.google.android.material.C1349R;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
abstract class DateFormatTextWatcher extends TextWatcherAdapter {
    private final CalendarConstraints constraints;
    private final DateFormat dateFormat;
    private final String formatHint;
    private int lastLength = 0;
    private final String outOfRange;
    private final Runnable setErrorCallback;
    private Runnable setRangeErrorCallback;
    private final TextInputLayout textInputLayout;

    void onInvalidDate() {
    }

    abstract void onValidDate(Long l);

    DateFormatTextWatcher(final String str, DateFormat dateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.formatHint = str;
        this.dateFormat = dateFormat;
        this.textInputLayout = textInputLayout;
        this.constraints = calendarConstraints;
        this.outOfRange = textInputLayout.getContext().getString(C1349R.string.mtrl_picker_out_of_range);
        this.setErrorCallback = new Runnable() { // from class: com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.$r8$lambda$WisZO76PIdPa6C8OvZJgtYqx1W8(this.f$0, str);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$WisZO76PIdPa6C8OvZJgtYqx1W8(DateFormatTextWatcher dateFormatTextWatcher, String str) {
        TextInputLayout textInputLayout = dateFormatTextWatcher.textInputLayout;
        DateFormat dateFormat = dateFormatTextWatcher.dateFormat;
        Context context = textInputLayout.getContext();
        textInputLayout.setError(context.getString(C1349R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(C1349R.string.mtrl_picker_invalid_format_use), dateFormatTextWatcher.sanitizeDateString(str)) + "\n" + String.format(context.getString(C1349R.string.mtrl_picker_invalid_format_example), dateFormatTextWatcher.sanitizeDateString(dateFormat.format(new Date(UtcDates.getTodayCalendar().getTimeInMillis())))));
        dateFormatTextWatcher.onInvalidDate();
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.textInputLayout.removeCallbacks(this.setErrorCallback);
        this.textInputLayout.removeCallbacks(this.setRangeErrorCallback);
        this.textInputLayout.setError(null);
        onValidDate(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.formatHint.length()) {
            return;
        }
        try {
            Date date = this.dateFormat.parse(charSequence.toString());
            this.textInputLayout.setError(null);
            long time = date.getTime();
            if (this.constraints.getDateValidator().isValid(time) && this.constraints.isWithinBounds(time)) {
                onValidDate(Long.valueOf(date.getTime()));
                return;
            }
            Runnable runnableCreateRangeErrorCallback = createRangeErrorCallback(time);
            this.setRangeErrorCallback = runnableCreateRangeErrorCallback;
            runValidation(this.textInputLayout, runnableCreateRangeErrorCallback);
        } catch (ParseException unused) {
            runValidation(this.textInputLayout, this.setErrorCallback);
        }
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.lastLength = charSequence.length();
    }

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (!Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) && editable.length() != 0 && editable.length() < this.formatHint.length() && editable.length() >= this.lastLength) {
            char cCharAt = this.formatHint.charAt(editable.length());
            if (Character.isLetterOrDigit(cCharAt)) {
                return;
            }
            editable.append(cCharAt);
        }
    }

    private Runnable createRangeErrorCallback(final long j) {
        return new Runnable() { // from class: com.google.android.material.datepicker.DateFormatTextWatcher$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher.m3471$r8$lambda$HHcrrijRZjKFRrqXL2jy2ZghE(this.f$0, j);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$HHcrrijRZjKF-RrqXL2jy2Z-ghE, reason: not valid java name */
    public static /* synthetic */ void m3471$r8$lambda$HHcrrijRZjKFRrqXL2jy2ZghE(DateFormatTextWatcher dateFormatTextWatcher, long j) {
        dateFormatTextWatcher.getClass();
        dateFormatTextWatcher.textInputLayout.setError(String.format(dateFormatTextWatcher.outOfRange, dateFormatTextWatcher.sanitizeDateString(DateStrings.getDateString(j))));
        dateFormatTextWatcher.onInvalidDate();
    }

    private String sanitizeDateString(String str) {
        return str.replace(' ', (char) 160);
    }

    public void runValidation(View view, Runnable runnable) {
        view.post(runnable);
    }
}
