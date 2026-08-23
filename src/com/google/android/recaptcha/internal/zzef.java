package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzef {
    private List zza = CollectionsKt.emptyList();

    public final long zza(long[] jArr) {
        Iterator it = CollectionsKt.plus((Collection) this.zza, (Iterable) ArraysKt.toList(jArr)).iterator();
        if (!it.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it.next();
        while (it.hasNext()) {
            next = Long.valueOf(((Number) it.next()).longValue() ^ ((Number) next).longValue());
        }
        return ((Number) next).longValue();
    }

    public final void zzb(long[] jArr) {
        this.zza = ArraysKt.toList(jArr);
    }
}
