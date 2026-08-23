package com.google.android.gms.internal.mlkit_vision_label;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzd extends zza implements IInterface {
    zzd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.label.internal.client.INativeImageLabeler");
    }

    public final void zzd() {
        zzc(2, zza());
    }

    public final zzh[] zze(IObjectWrapper iObjectWrapper, zzl zzlVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zzlVar);
        Parcel parcelZzb = zzb(1, parcelZza);
        zzh[] zzhVarArr = (zzh[]) parcelZzb.createTypedArray(zzh.CREATOR);
        parcelZzb.recycle();
        return zzhVarArr;
    }
}
