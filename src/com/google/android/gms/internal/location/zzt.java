package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt extends zza implements zzu {
    public zzt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzD(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar, String str) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, locationSettingsRequest);
        zzc.zzc(parcelZza, zzaaVar);
        parcelZza.writeString(null);
        zzc(63, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzq(LastLocationRequest lastLocationRequest, zzed zzedVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, lastLocationRequest);
        zzc.zzb(parcelZza, zzedVar);
        zzc(90, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzr(LastLocationRequest lastLocationRequest, zzy zzyVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, lastLocationRequest);
        zzc.zzc(parcelZza, zzyVar);
        zzc(82, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final Location zzs() {
        Parcel parcelZzb = zzb(7, zza());
        Location location = (Location) zzc.zza(parcelZzb, Location.CREATOR);
        parcelZzb.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzv(zzeh zzehVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, zzehVar);
        zzc(59, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzw(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, zzedVar);
        zzc.zzb(parcelZza, locationRequest);
        zzc.zzc(parcelZza, iStatusCallback);
        zzc(88, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzu
    public final void zzx(zzed zzedVar, IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, zzedVar);
        zzc.zzc(parcelZza, iStatusCallback);
        zzc(89, parcelZza);
    }
}
