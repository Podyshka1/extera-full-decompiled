package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzba extends zzl implements zzbb {
    public zzba() {
        super("com.google.android.apps.aicore.aidl.ICortanaStateCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            return false;
        }
        ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzm.zza(parcel, ParcelFileDescriptor.CREATOR);
        zzm.zzc(parcel);
        zzd(parcelFileDescriptor);
        return true;
    }
}
