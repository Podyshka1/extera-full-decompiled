package com.google.android.gms.vision.face.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.vision.zzs;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj extends com.google.android.gms.internal.vision.zzb implements zzh {
    zzj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.face.internal.client.INativeFaceDetector");
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final FaceParcel[] zza(IObjectWrapper iObjectWrapper, zzs zzsVar) {
        Parcel parcelM358a_ = m358a_();
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, iObjectWrapper);
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, zzsVar);
        Parcel parcelZza = zza(1, parcelM358a_);
        FaceParcel[] faceParcelArr = (FaceParcel[]) parcelZza.createTypedArray(FaceParcel.CREATOR);
        parcelZza.recycle();
        return faceParcelArr;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final FaceParcel[] zza(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i, int i2, int i3, int i4, int i5, int i6, zzs zzsVar) {
        Parcel parcelM358a_ = m358a_();
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, iObjectWrapper);
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, iObjectWrapper2);
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, iObjectWrapper3);
        parcelM358a_.writeInt(i);
        parcelM358a_.writeInt(i2);
        parcelM358a_.writeInt(i3);
        parcelM358a_.writeInt(i4);
        parcelM358a_.writeInt(i5);
        parcelM358a_.writeInt(i6);
        com.google.android.gms.internal.vision.zzd.zza(parcelM358a_, zzsVar);
        Parcel parcelZza = zza(4, parcelM358a_);
        FaceParcel[] faceParcelArr = (FaceParcel[]) parcelZza.createTypedArray(FaceParcel.CREATOR);
        parcelZza.recycle();
        return faceParcelArr;
    }

    @Override // com.google.android.gms.vision.face.internal.client.zzh
    public final void zza() {
        zzb(3, m358a_());
    }
}
