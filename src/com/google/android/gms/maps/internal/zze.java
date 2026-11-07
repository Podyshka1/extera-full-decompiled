package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.maps.zzj;
import com.google.android.gms.internal.maps.zzk;
import com.google.android.gms.maps.GoogleMapOptions;

/* JADX INFO: loaded from: classes5.dex */
public final class zze extends com.google.android.gms.internal.maps.zza implements zzf {
    public zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.internal.ICreator");
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final int zzd() {
        Parcel parcelZzJ = zzJ(9, zza());
        int i = parcelZzJ.readInt();
        parcelZzJ.recycle();
        return i;
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final ICameraUpdateFactoryDelegate zze() {
        ICameraUpdateFactoryDelegate zzbVar;
        Parcel parcelZzJ = zzJ(4, zza());
        IBinder strongBinder = parcelZzJ.readStrongBinder();
        if (strongBinder == null) {
            zzbVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate");
            zzbVar = iInterfaceQueryLocalInterface instanceof ICameraUpdateFactoryDelegate ? (ICameraUpdateFactoryDelegate) iInterfaceQueryLocalInterface : new zzb(strongBinder);
        }
        parcelZzJ.recycle();
        return zzbVar;
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final IMapViewDelegate zzg(IObjectWrapper iObjectWrapper, GoogleMapOptions googleMapOptions) {
        IMapViewDelegate zzlVar;
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zzg(parcelZza, iObjectWrapper);
        com.google.android.gms.internal.maps.zzc.zze(parcelZza, googleMapOptions);
        Parcel parcelZzJ = zzJ(3, parcelZza);
        IBinder strongBinder = parcelZzJ.readStrongBinder();
        if (strongBinder == null) {
            zzlVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IMapViewDelegate");
            zzlVar = iInterfaceQueryLocalInterface instanceof IMapViewDelegate ? (IMapViewDelegate) iInterfaceQueryLocalInterface : new zzl(strongBinder);
        }
        parcelZzJ.recycle();
        return zzlVar;
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final zzk zzj() {
        Parcel parcelZzJ = zzJ(5, zza());
        zzk zzkVarZzb = zzj.zzb(parcelZzJ.readStrongBinder());
        parcelZzJ.recycle();
        return zzkVarZzb;
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final void zzl(IObjectWrapper iObjectWrapper, int i) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zzg(parcelZza, iObjectWrapper);
        parcelZza.writeInt(20000000);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final void zzm(IObjectWrapper iObjectWrapper, int i) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zzg(parcelZza, iObjectWrapper);
        parcelZza.writeInt(i);
        zzc(10, parcelZza);
    }

    @Override // com.google.android.gms.maps.internal.zzf
    public final void zzn(IObjectWrapper iObjectWrapper) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.maps.zzc.zzg(parcelZza, iObjectWrapper);
        zzc(11, parcelZza);
    }
}
