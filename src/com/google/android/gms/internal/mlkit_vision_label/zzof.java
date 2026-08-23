package com.google.android.gms.internal.mlkit_vision_label;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzof extends zza implements IInterface {
    zzof(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.label.aidls.IImageLabeler");
    }

    public final List zzd(IObjectWrapper iObjectWrapper, zzod zzodVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zzodVar);
        Parcel parcelZzb = zzb(3, parcelZza);
        ArrayList arrayListCreateTypedArrayList = parcelZzb.createTypedArrayList(zzoj.CREATOR);
        parcelZzb.recycle();
        return arrayListCreateTypedArrayList;
    }

    public final void zze() {
        zzc(1, zza());
    }

    public final void zzf() {
        zzc(2, zza());
    }
}
