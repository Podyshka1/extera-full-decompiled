package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzp extends zzb implements zzn {
    zzp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetectorCreator");
    }

    @Override // com.google.android.gms.internal.vision.zzn
    public final zzl zza(IObjectWrapper iObjectWrapper, zzk zzkVar) {
        zzl zzoVar;
        Parcel parcelM358a_ = m358a_();
        zzd.zza(parcelM358a_, iObjectWrapper);
        zzd.zza(parcelM358a_, zzkVar);
        Parcel parcelZza = zza(1, parcelM358a_);
        IBinder strongBinder = parcelZza.readStrongBinder();
        if (strongBinder == null) {
            zzoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
            if (iInterfaceQueryLocalInterface instanceof zzl) {
                zzoVar = (zzl) iInterfaceQueryLocalInterface;
            } else {
                zzoVar = new zzo(strongBinder);
            }
        }
        parcelZza.recycle();
        return zzoVar;
    }
}
