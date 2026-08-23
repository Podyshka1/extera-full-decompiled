package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes4.dex */
public interface zzo extends IInterface {
    Location zzd();

    void zzh(LocationSettingsRequest locationSettingsRequest, zzs zzsVar, String str);

    void zzj(LastLocationRequest lastLocationRequest, zzq zzqVar);

    void zzk(zzdb zzdbVar, LocationRequest locationRequest, IStatusCallback iStatusCallback);

    void zzm(PendingIntent pendingIntent);

    void zzs(com.google.android.gms.location.zzb zzbVar, PendingIntent pendingIntent, IStatusCallback iStatusCallback);

    void zzy(zzdb zzdbVar, IStatusCallback iStatusCallback);

    void zzz(zzdf zzdfVar);
}
