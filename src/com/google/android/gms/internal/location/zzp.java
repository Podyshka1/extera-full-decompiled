package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzp extends zzb implements zzq {
    public zzp() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzk zzkVar = (zzk) zzc.zza(parcel, zzk.CREATOR);
            ApiMetadata apiMetadata = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
            zzc.zzd(parcel);
            zzd(zzkVar, apiMetadata);
        } else {
            if (i != 2) {
                return false;
            }
            ApiMetadata apiMetadata2 = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
            zzc.zzd(parcel);
            zze(apiMetadata2);
        }
        return true;
    }
}
