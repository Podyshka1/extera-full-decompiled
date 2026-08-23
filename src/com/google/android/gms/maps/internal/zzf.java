package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zzk;
import com.google.android.gms.maps.GoogleMapOptions;

/* JADX INFO: loaded from: classes4.dex */
public interface zzf extends IInterface {
    int zzd();

    ICameraUpdateFactoryDelegate zze();

    IMapViewDelegate zzg(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions);

    zzk zzj();

    void zzl(IObjectWrapper iObjectWrapper, int i);

    void zzm(IObjectWrapper iObjectWrapper, int i);

    void zzn(IObjectWrapper iObjectWrapper);
}
