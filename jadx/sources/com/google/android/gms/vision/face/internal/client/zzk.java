package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzk extends com.google.android.gms.internal.vision.zzb implements zzi {
    zzk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.face.internal.client.INativeFaceDetectorCreator");
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzi
    public final zzh newFaceDetector(IObjectWrapper iObjectWrapper, zzf zzfVar) {
        zzh zzjVar;
        Parcel parcelM358a_ = m358a_();
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, iObjectWrapper);
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, zzfVar);
        Parcel parcelZza = zza(1, parcelM358a_);
        IBinder strongBinder = parcelZza.readStrongBinder();
        if (strongBinder == null) {
            zzjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
            if (iInterfaceQueryLocalInterface instanceof zzh) {
                zzjVar = (zzh) iInterfaceQueryLocalInterface;
            } else {
                zzjVar = new zzj(strongBinder);
            }
        }
        parcelZza.recycle();
        return zzjVar;
    }
}
