package com.google.android.gms.internal.mlkit_genai_prompt;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
public final class zzye {
    public static final zzye zza;
    public static final zzye zzb;
    public static final zzye zzc;
    public static final zzye zzd;
    public static final zzye zze;
    private static final /* synthetic */ zzye[] zzf;

    static {
        zzye zzyeVar = new zzye("INFERENCE_WITHOUT_CACHE", 0);
        zza = zzyeVar;
        zzye zzyeVar2 = new zzye("CACHE_CREATION", 1);
        zzb = zzyeVar2;
        zzye zzyeVar3 = new zzye("INFERENCE_WITH_CACHE", 2);
        zzc = zzyeVar3;
        zzye zzyeVar4 = new zzye("STRUCTURED_OUTPUT_INFERENCE_WITHOUT_CACHE", 3);
        zzd = zzyeVar4;
        zzye zzyeVar5 = new zzye("STRUCTURED_OUTPUT_INFERENCE_WITH_CACHE", 4);
        zze = zzyeVar5;
        zzye[] zzyeVarArr = {zzyeVar, zzyeVar2, zzyeVar3, zzyeVar4, zzyeVar5};
        zzf = zzyeVarArr;
        EnumEntriesKt.enumEntries(zzyeVarArr);
    }

    private zzye(String str, int i) {
    }

    public static zzye[] values() {
        return (zzye[]) zzf.clone();
    }
}
