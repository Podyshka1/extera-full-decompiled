package com.google.mlkit.p020nl.languageid.internal;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public interface LanguageIdentifierDelegate {
    List identifyPossibleLanguages(String str, float f);

    void init();

    void release();
}
