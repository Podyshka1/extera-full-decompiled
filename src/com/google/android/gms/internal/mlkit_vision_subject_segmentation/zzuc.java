package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes5.dex */
public final class zzuc extends zza implements zzue {
    public zzuc(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.segmentation.subject.aidls.ISubjectSegmenterCreator");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzue
    public final zzub zzd(IObjectWrapper iObjectWrapper, zzuj zzujVar) {
        zzub zzubVar;
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zzujVar);
        Parcel parcelZzb = zzb(1, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzubVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.mlkit.vision.segmentation.subject.aidls.ISubjectSegmenter");
            zzubVar = iInterfaceQueryLocalInterface instanceof zzub ? (zzub) iInterfaceQueryLocalInterface : new zzub(strongBinder);
        }
        parcelZzb.recycle();
        return zzubVar;
    }
}
