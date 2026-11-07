package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbm extends zzl implements zzbn {
    public zzbm() {
        super("com.google.android.apps.aicore.aidl.IPrepareInferenceEngineCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            zzb();
            return true;
        }
        if (i == 3) {
            int i3 = parcel.readInt();
            zzm.zzc(parcel);
            zzc(i3);
            return true;
        }
        if (i != 4) {
            return false;
        }
        zzq zzqVar = (zzq) zzm.zza(parcel, zzq.CREATOR);
        zzm.zzc(parcel);
        zzd(zzqVar);
        return true;
    }
}
