package com.google.mlkit.nl.languageid.internal;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LanguageIdentifierDelegate {
    List identifyPossibleLanguages(String str, float f);

    void init();

    void release();
}
