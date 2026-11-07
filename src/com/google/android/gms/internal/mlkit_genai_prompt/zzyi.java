package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
final class zzyi {
    public static final zzyi zza;
    public static final zzyi zzb;
    public static final zzyi zzc;
    public static final zzyi zzd;
    private static final /* synthetic */ zzyi[] zze;

    static {
        zzyi zzyiVar = new zzyi("CREATE", 0);
        zza = zzyiVar;
        zzyi zzyiVar2 = new zzyi("INFERENCE", 1);
        zzb = zzyiVar2;
        zzyi zzyiVar3 = new zzyi("COUNT_TOKENS", 2);
        zzc = zzyiVar3;
        zzyi zzyiVar4 = new zzyi("CLOSE", 3);
        zzd = zzyiVar4;
        zzyi[] zzyiVarArr = {zzyiVar, zzyiVar2, zzyiVar3, zzyiVar4};
        zze = zzyiVarArr;
        EnumEntriesKt.enumEntries(zzyiVarArr);
    }

    private zzyi(String str, int i) {
    }

    public static zzyi[] values() {
        return (zzyi[]) zze.clone();
    }
}
