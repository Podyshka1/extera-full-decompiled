package com.google.mlkit.nl.languageid.internal;

import android.content.Context;
import com.google.mlkit.nl.languageid.LanguageIdentificationOptions;

/* JADX INFO: loaded from: classes.dex */
public interface LanguageIdentifierCreatorDelegate {
    LanguageIdentifierDelegate create(Context context, LanguageIdentificationOptions languageIdentificationOptions);

    int getPriority();
}
