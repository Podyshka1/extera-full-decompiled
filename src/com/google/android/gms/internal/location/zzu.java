package com.google.android.gms.internal.location;

import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.location.LastLocationRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;

/* JADX INFO: loaded from: classes4.dex */
public interface zzu extends IInterface {
    void zzD(LocationSettingsRequest locationSettingsRequest, zzaa zzaaVar, String str);

    void zzq(LastLocationRequest lastLocationRequest, zzed zzedVar);

    @Deprecated
    void zzr(LastLocationRequest lastLocationRequest, zzy zzyVar);

    @Deprecated
    Location zzs();

    @Deprecated
    void zzv(zzeh zzehVar);

    void zzw(zzed zzedVar, LocationRequest locationRequest, IStatusCallback iStatusCallback);

    void zzx(zzed zzedVar, IStatusCallback iStatusCallback);
}
