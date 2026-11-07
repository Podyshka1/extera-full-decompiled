package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyr implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(Float.valueOf(((zzhv) obj2).zzb()), Float.valueOf(((zzhv) obj).zzb()));
    }
}
