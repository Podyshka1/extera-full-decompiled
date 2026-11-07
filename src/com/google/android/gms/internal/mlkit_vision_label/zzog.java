package com.google.android.gms.internal.mlkit_vision_label;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzog extends zza implements zzoi {
    public zzog(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.label.aidls.IImageLabelerCreator");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zzoi
    public final zzof zzd(IObjectWrapper iObjectWrapper, zzol zzolVar) {
        zzof zzofVar;
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zzolVar);
        Parcel parcelZzb = zzb(1, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzofVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.label.aidls.IImageLabeler");
            zzofVar = iInterfaceQueryLocalInterface instanceof zzof ? (zzof) iInterfaceQueryLocalInterface : new zzof(strongBinder);
        }
        parcelZzb.recycle();
        return zzofVar;
    }
}
