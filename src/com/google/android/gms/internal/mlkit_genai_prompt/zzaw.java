package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaw extends zzl implements zzax {
    public zzaw() {
        super("com.google.android.apps.aicore.aidl.ICortanaResultCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 2) {
            zzah zzahVar = (zzah) zzm.zza(parcel, zzah.CREATOR);
            zzm.zzc(parcel);
            zzb(zzahVar);
            return true;
        }
        if (i != 3) {
            return false;
        }
        int i3 = parcel.readInt();
        zzm.zzc(parcel);
        zzc(i3);
        return true;
    }
}
