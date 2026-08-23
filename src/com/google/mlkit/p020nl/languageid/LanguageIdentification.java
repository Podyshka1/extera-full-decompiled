package com.google.mlkit.p020nl.languageid;

import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.p020nl.languageid.internal.LanguageIdentifierImpl;

/* JADX INFO: loaded from: classes.dex */
public abstract class LanguageIdentification {
    public static LanguageIdentifier getClient() {
        return ((LanguageIdentifierImpl.Factory) MlKitContext.getInstance().get(LanguageIdentifierImpl.Factory.class)).create(LanguageIdentificationOptions.zza);
    }
}
