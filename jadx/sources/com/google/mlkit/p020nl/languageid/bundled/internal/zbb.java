package com.google.mlkit.p020nl.languageid.bundled.internal;

import android.content.Context;
import com.google.mlkit.p020nl.languageid.LanguageIdentificationOptions;
import com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierCreatorDelegate;
import com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierDelegate;

/* JADX INFO: loaded from: classes.dex */
public final class zbb implements LanguageIdentifierCreatorDelegate {
    @Override // com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierCreatorDelegate
    public final LanguageIdentifierDelegate create(Context context, LanguageIdentificationOptions languageIdentificationOptions) {
        return new ThickLanguageIdentifier(context, languageIdentificationOptions);
    }

    @Override // com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierCreatorDelegate
    public final int getPriority() {
        return 100;
    }
}
