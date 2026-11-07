package com.google.android.gms.internal.mlkit_genai_prompt;

import android.content.Context;
import com.google.mlkit.genai.prompt.GenerationConfig;
import com.google.mlkit.genai.prompt.ModelConfig;
import kotlin.LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
public final class zzyt {
    public /* synthetic */ zzyt(DefaultConstructorMarker defaultConstructorMarker) {
    }

    public static final /* synthetic */ Context zza(zzyt zzytVar) {
        return (Context) zzzy.zzn.getValue();
    }

    public static final int zzb(GenerationConfig generationConfig, zzye zzyeVar) {
        ModelConfig zzb = generationConfig.getZzb();
        int zza = zzb.getZza();
        if (zza != 0) {
            if (zza != 1) {
                return -1;
            }
            int zzb2 = zzb.getZzb();
            if (zzb2 == 1) {
                zzye zzyeVar2 = zzye.zza;
                int iOrdinal = zzyeVar.ordinal();
                if (iOrdinal != 0) {
                    return iOrdinal != 3 ? -1 : 653;
                }
                return 646;
            }
            if (zzb2 != 2) {
                return -1;
            }
            zzye zzyeVar3 = zzye.zza;
            int iOrdinal2 = zzyeVar.ordinal();
            if (iOrdinal2 != 0) {
                return iOrdinal2 != 3 ? -1 : 652;
            }
            return 647;
        }
        int zzb3 = zzb.getZzb();
        if (zzb3 == 1) {
            zzye zzyeVar4 = zzye.zza;
            int iOrdinal3 = zzyeVar.ordinal();
            if (iOrdinal3 == 0) {
                return 645;
            }
            if (iOrdinal3 == 1) {
                return 649;
            }
            if (iOrdinal3 == 2) {
                return 650;
            }
            if (iOrdinal3 == 3) {
                return 651;
            }
            if (iOrdinal3 == 4) {
                return 655;
            }
            LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
            return 0;
        }
        if (zzb3 != 2) {
            return -1;
        }
        zzye zzyeVar5 = zzye.zza;
        int iOrdinal4 = zzyeVar.ordinal();
        if (iOrdinal4 == 0) {
            return 636;
        }
        if (iOrdinal4 == 1) {
            return 643;
        }
        if (iOrdinal4 == 2) {
            return 644;
        }
        if (iOrdinal4 == 3) {
            return 648;
        }
        if (iOrdinal4 == 4) {
            return 654;
        }
        LazyKt__LazyJVMKt$$ExternalSyntheticBUOutline0.m861m();
        return 0;
    }
}
