package com.google.android.gms.internal.mlkit_vision_label;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zze extends zza implements zzg {
    public zze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.label.internal.client.INativeImageLabelerCreator");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzg
    public final zzd zzd(IObjectWrapper iObjectWrapper, zzj zzjVar) {
        zzd zzdVar;
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zzjVar);
        Parcel parcelZzb = zzb(1, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzdVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.label.internal.client.INativeImageLabeler");
            zzdVar = iInterfaceQueryLocalInterface instanceof zzd ? (zzd) iInterfaceQueryLocalInterface : new zzd(strongBinder);
        }
        parcelZzb.recycle();
        return zzdVar;
    }
}
