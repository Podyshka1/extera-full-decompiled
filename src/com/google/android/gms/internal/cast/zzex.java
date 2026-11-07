package com.google.android.gms.internal.cast;

import android.os.Parcel;
import android.view.Surface;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzex extends zzb implements zzey {
    public zzex() {
        super("com.google.android.gms.cast.remote_display.ICastRemoteDisplayCallbacks");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            int i3 = parcel.readInt();
            int i4 = parcel.readInt();
            Surface surface = (Surface) zzc.zzb(parcel, Surface.CREATOR);
            ApiMetadata apiMetadata = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
            zzc.zzf(parcel);
            zzb(i3, i4, surface, apiMetadata);
        } else if (i == 2) {
            int i5 = parcel.readInt();
            ApiMetadata apiMetadata2 = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
            zzc.zzf(parcel);
            zzd(i5, apiMetadata2);
        } else if (i == 3) {
            ApiMetadata apiMetadata3 = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
            zzc.zzf(parcel);
            zzf(apiMetadata3);
        } else if (i == 4) {
            ApiMetadata apiMetadata4 = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
            zzc.zzf(parcel);
            zzc(apiMetadata4);
        } else {
            if (i != 5) {
                return false;
            }
            boolean zZza = zzc.zza(parcel);
            ApiMetadata apiMetadata5 = (ApiMetadata) zzc.zzb(parcel, ApiMetadata.CREATOR);
            zzc.zzf(parcel);
            zze(zZza, apiMetadata5);
        }
        parcel2.writeNoException();
        return true;
    }
}
