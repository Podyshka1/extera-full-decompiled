package org.telegram.messenger.utils;

import android.text.TextWatcher;

/* JADX INFO: loaded from: classes5.dex */
public interface TextWatcherImpl extends TextWatcher {
    @Override // android.text.TextWatcher
    default void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    default void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
