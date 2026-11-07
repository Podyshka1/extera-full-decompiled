package com.google.android.gms.cast.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaf extends com.google.android.gms.internal.cast.zzb implements zzag {
    public zzaf() {
        super("com.google.android.gms.cast.internal.IBundleCallback");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
        ApiMetadata apiMetadata = (ApiMetadata) com.google.android.gms.internal.cast.zzc.zzb(parcel, ApiMetadata.CREATOR);
        com.google.android.gms.internal.cast.zzc.zzf(parcel);
        zzb(bundle, apiMetadata);
        return true;
    }
}
