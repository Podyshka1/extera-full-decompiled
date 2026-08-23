package com.google.android.gms.internal.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzfa extends zzb implements zzfb {
    public zzfa() {
        super("com.google.android.gms.cast.remote_display.ICastRemoteDisplaySessionCallbacks");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        int i3 = parcel.readInt();
        ApiMetadata apiMetadata = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
        zzc.zzf(parcel);
        zzb(i3, apiMetadata);
        return true;
    }
}
