package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class zzaam {
    public static final zzaam zza;
    public static final zzaam zzb;
    private static final /* synthetic */ zzaam[] zzc;

    static {
        zzaam zzaamVar = new zzaam("INFERENCE_WITHOUT_CACHE", 0);
        zza = zzaamVar;
        zzaam zzaamVar2 = new zzaam("INFERENCE_WITH_CACHE", 1);
        zzb = zzaamVar2;
        zzaam[] zzaamVarArr = {zzaamVar, zzaamVar2};
        zzc = zzaamVarArr;
        EnumEntriesKt.enumEntries(zzaamVarArr);
    }

    private zzaam(String str, int i) {
    }

    public static zzaam[] values() {
        return (zzaam[]) zzc.clone();
    }
}
