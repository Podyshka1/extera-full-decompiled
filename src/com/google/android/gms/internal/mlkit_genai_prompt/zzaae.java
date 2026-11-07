package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaae implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return ComparisonsKt.compareValues(Long.valueOf(((zzaab) obj).zzd()), Long.valueOf(((zzaab) obj2).zzd()));
    }
}
