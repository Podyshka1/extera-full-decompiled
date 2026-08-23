package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zza;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzau extends zza implements zzaw {
    zzau(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISession");
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final int zze() {
        Parcel parcelZzb = zzb(17, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final int zzf() {
        Parcel parcelZzb = zzb(18, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final IObjectWrapper zzg() {
        Parcel parcelZzb = zzb(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final String zzi() {
        Parcel parcelZzb = zzb(3, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzj(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(15, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzk(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(12, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final void zzl(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(13, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzp() {
        Parcel parcelZzb = zzb(5, zza());
        boolean zZzf = zzc.zzf(parcelZzb);
        parcelZzb.recycle();
        return zZzf;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzq() {
        Parcel parcelZzb = zzb(6, zza());
        boolean zZzf = zzc.zzf(parcelZzb);
        parcelZzb.recycle();
        return zZzf;
    }

    @Override // com.google.android.gms.cast.framework.zzaw
    public final boolean zzt() {
        Parcel parcelZzb = zzb(9, zza());
        boolean zZzf = zzc.zzf(parcelZzb);
        parcelZzb.recycle();
        return zZzf;
    }
}
