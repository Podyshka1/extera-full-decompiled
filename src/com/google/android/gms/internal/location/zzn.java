package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes4.dex */
public final class zzn extends zza implements zzo {
    public zzn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final Location zzd() {
        Parcel parcelZzb = zzb(7, zza());
        Location location = (Location) zzc.zza(parcelZzb, Location.CREATOR);
        parcelZzb.recycle();
        return location;
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzh(LocationSettingsRequest locationSettingsRequest, zzs zzsVar, String str) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, locationSettingsRequest);
        zzc.zze(parcelZza, zzsVar);
        parcelZza.writeString(null);
        zzc(63, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzj(LastLocationRequest lastLocationRequest, zzq zzqVar) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, lastLocationRequest);
        zzc.zze(parcelZza, zzqVar);
        zzc(82, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzk(zzdb zzdbVar, LocationRequest locationRequest, IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzdbVar);
        zzc.zzd(parcelZza, locationRequest);
        zzc.zze(parcelZza, iStatusCallback);
        zzc(88, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzm(PendingIntent pendingIntent) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, pendingIntent);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzs(com.google.android.gms.location.zzb zzbVar, PendingIntent pendingIntent, IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzbVar);
        zzc.zzd(parcelZza, pendingIntent);
        zzc.zze(parcelZza, iStatusCallback);
        zzc(70, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzy(zzdb zzdbVar, IStatusCallback iStatusCallback) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzdbVar);
        zzc.zze(parcelZza, iStatusCallback);
        zzc(89, parcelZza);
    }

    @Override // com.google.android.gms.internal.location.zzo
    public final void zzz(zzdf zzdfVar) {
        Parcel parcelZza = zza();
        zzc.zzd(parcelZza, zzdfVar);
        zzc(59, parcelZza);
    }
}
