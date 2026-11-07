package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbg extends zzl implements zzbh {
    public zzbg() {
        super("com.google.android.apps.aicore.aidl.ILLMResultWithInfoCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            zzci zzciVar = (zzci) zzm.zza(parcel, zzci.CREATOR);
            zzm.zzc(parcel);
            zzb(zzciVar);
            return true;
        }
        if (i != 3) {
            return false;
        }
        zzaj zzajVar = (zzaj) zzm.zza(parcel, zzaj.CREATOR);
        zzm.zzc(parcel);
        zzc(zzajVar);
        return true;
    }
}
