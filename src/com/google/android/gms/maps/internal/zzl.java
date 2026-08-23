package com.google.android.gms.maps.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl extends com.google.android.gms.internal.maps.zza implements IMapViewDelegate {
    zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.IMapViewDelegate");
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void getMapAsync(zzat zzatVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zzg(parcelZza, zzatVar);
        zzc(9, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final IObjectWrapper getView() {
        Parcel parcelZzJ = zzJ(8, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzJ.readStrongBinder());
        parcelZzJ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onCreate(Bundle bundle) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zze(parcelZza, bundle);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onDestroy() {
        zzc(5, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onEnterAmbient(Bundle bundle) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zze(parcelZza, bundle);
        zzc(10, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onExitAmbient() {
        zzc(11, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onLowMemory() {
        zzc(6, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onPause() {
        zzc(4, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onResume() {
        zzc(3, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onSaveInstanceState(Bundle bundle) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zze(parcelZza, bundle);
        Parcel parcelZzJ = zzJ(7, parcelZza);
        if (parcelZzJ.readInt() != 0) {
            bundle.readFromParcel(parcelZzJ);
        }
        parcelZzJ.recycle();
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onStart() {
        zzc(12, zza());
    }

    @Override // com.google.android.gms.maps.internal.IMapViewDelegate
    public final void onStop() {
        zzc(13, zza());
    }
}
