package com.google.android.gms.internal.maps;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl extends zza implements zzn {
    public zzl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.maps.model.internal.ICircleDelegate");
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final double zzd() {
        Parcel parcelZzJ = zzJ(6, zza());
        double d = parcelZzJ.readDouble();
        parcelZzJ.recycle();
        return d;
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final int zzi() {
        Parcel parcelZzJ = zzJ(18, zza());
        int i = parcelZzJ.readInt();
        parcelZzJ.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final void zzn() {
        zzc(1, zza());
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final void zzo(LatLng latLng) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, latLng);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final void zzq(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(11, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final void zzr(double d) {
        Parcel parcelZza = zza();
        parcelZza.writeDouble(d);
        zzc(5, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final void zzs(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.maps.zzn
    public final boolean zzy(zzn zznVar) {
        Parcel parcelZza = zza();
        zzc.zzg(parcelZza, zznVar);
        Parcel parcelZzJ = zzJ(17, parcelZza);
        boolean zZzh = zzc.zzh(parcelZzJ);
        parcelZzJ.recycle();
        return zZzh;
    }
}
