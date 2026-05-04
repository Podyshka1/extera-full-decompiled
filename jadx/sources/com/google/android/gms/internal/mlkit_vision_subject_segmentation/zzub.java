package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzub extends zza implements IInterface {
    zzub(IBinder iBinder) {
        super(iBinder, "com.google.mlkit.vision.segmentation.subject.aidls.ISubjectSegmenter");
    }

    public final zzuh zzd(IObjectWrapper iObjectWrapper, zztz zztzVar) {
        Parcel parcelZza = zza();
        zzc.zzb(parcelZza, iObjectWrapper);
        zzc.zza(parcelZza, zztzVar);
        Parcel parcelZzb = zzb(3, parcelZza);
        zzuh zzuhVarCreateFromParcel = parcelZzb.readInt() == 0 ? null : zzuh.CREATOR.createFromParcel(parcelZzb);
        parcelZzb.recycle();
        return zzuhVarCreateFromParcel;
    }

    public final void zze() {
        zzc(1, zza());
    }

    public final void zzf() {
        zzc(2, zza());
    }
}
