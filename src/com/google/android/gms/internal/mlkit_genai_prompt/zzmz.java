package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
final class zzmz extends zznb implements Serializable {
    static final zzmz zza = new zzmz();

    private zzmz() {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
