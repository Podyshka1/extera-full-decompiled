package com.google.mlkit.nl.languageid.internal;

import com.google.mlkit.nl.languageid.IdentifiedLanguage;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LanguageIdentifierDelegate {
    List<IdentifiedLanguage> identifyPossibleLanguages(String str, float f);

    void init();

    void release();
}
