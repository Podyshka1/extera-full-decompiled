package com.exteragram.messenger.translators;

import java.util.HashSet;
import java.util.Set;
import p022j$.util.DesugarCollections;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class DeepLTranslator$$ExternalSyntheticBackport0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ Set m283m(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            Objects.requireNonNull(obj);
            if (!hashSet.add(obj)) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return DesugarCollections.unmodifiableSet(hashSet);
    }
}
