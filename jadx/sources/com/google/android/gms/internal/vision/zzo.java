package com.google.android.gms.internal.vision;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.vision.barcode.Barcode;

/* JADX INFO: loaded from: classes4.dex */
public final class zzo extends zzb implements zzl {
    zzo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.vision.barcode.internal.client.INativeBarcodeDetector");
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final Barcode[] zza(IObjectWrapper iObjectWrapper, zzs zzsVar) {
        Parcel parcelM358a_ = m358a_();
        zzd.zza(parcelM358a_, iObjectWrapper);
        zzd.zza(parcelM358a_, zzsVar);
        Parcel parcelZza = zza(1, parcelM358a_);
        Barcode[] barcodeArr = (Barcode[]) parcelZza.createTypedArray(Barcode.CREATOR);
        parcelZza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final Barcode[] zzb(IObjectWrapper iObjectWrapper, zzs zzsVar) {
        Parcel parcelM358a_ = m358a_();
        zzd.zza(parcelM358a_, iObjectWrapper);
        zzd.zza(parcelM358a_, zzsVar);
        Parcel parcelZza = zza(2, parcelM358a_);
        Barcode[] barcodeArr = (Barcode[]) parcelZza.createTypedArray(Barcode.CREATOR);
        parcelZza.recycle();
        return barcodeArr;
    }

    @Override // com.google.android.gms.internal.vision.zzl
    public final void zza() {
        zzb(3, m358a_());
    }
}
