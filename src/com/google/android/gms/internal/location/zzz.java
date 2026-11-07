package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.location.LocationSettingsResult;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzz extends zzb implements zzaa {
    public zzz() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        LocationSettingsResult locationSettingsResult = (LocationSettingsResult) zzc.zza(parcel, LocationSettingsResult.CREATOR);
        ApiMetadata apiMetadata = (ApiMetadata) zzc.zza(parcel, ApiMetadata.CREATOR);
        zzc.zzd(parcel);
        zzb(locationSettingsResult, apiMetadata);
        return true;
    }
}
