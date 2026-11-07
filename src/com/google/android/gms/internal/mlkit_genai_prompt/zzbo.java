package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbo extends zzl implements zzbp {
    public zzbo() {
        super("com.google.android.apps.aicore.aidl.ITokenizationCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            int i3 = parcel.readInt();
            zzm.zzc(parcel);
            zzb(i3);
            return true;
        }
        if (i == 3) {
            int i4 = parcel.readInt();
            zzm.zzc(parcel);
            zzc(i4);
            return true;
        }
        if (i == 4) {
            zzct zzctVar = (zzct) zzm.zza(parcel, zzct.CREATOR);
            zzm.zzc(parcel);
            zzd(zzctVar);
            return true;
        }
        if (i != 5) {
            return false;
        }
        zzq zzqVar = (zzq) zzm.zza(parcel, zzq.CREATOR);
        zzm.zzc(parcel);
        zze(zzqVar);
        return true;
    }
}
