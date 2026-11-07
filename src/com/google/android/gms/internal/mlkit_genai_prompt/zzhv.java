package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzhv {
    public static zzhv zzf(String str, float f, int i, zzho zzhoVar, List list) {
        return new zzhg(str, f, i, zzhoVar, list == null ? zzml.zzk() : zzml.zzq(list));
    }

    public abstract String zza();

    public abstract float zzb();

    public abstract int zzc();

    public abstract zzho zzd();

    public abstract zzml zze();
}
