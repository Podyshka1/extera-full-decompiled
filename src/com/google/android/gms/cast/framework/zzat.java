package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzat extends com.google.android.gms.internal.cast.zza implements zzav {
    public zzat(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISession");
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final int zze() {
        Parcel parcelZzb = zzb(17, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final IObjectWrapper zzf() {
        Parcel parcelZzb = zzb(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final String zzg() {
        Parcel parcelZzb = zzb(2, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final String zzh() {
        Parcel parcelZzb = zzb(3, zza());
        String string = parcelZzb.readString();
        parcelZzb.recycle();
        return string;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzi() {
        Parcel parcelZzb = zzb(5, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzj() {
        Parcel parcelZzb = zzb(6, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzk() {
        Parcel parcelZzb = zzb(7, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzl() {
        Parcel parcelZzb = zzb(8, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzm() {
        Parcel parcelZzb = zzb(9, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final boolean zzn() {
        Parcel parcelZzb = zzb(10, zza());
        boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcelZzb);
        parcelZzb.recycle();
        return zZza;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final int zzo() {
        Parcel parcelZzb = zzb(18, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzp(String str) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc(11, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzq(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(12, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzr(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(13, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzs(boolean z) {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.cast.zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        zzc(14, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzt(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(15, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzav
    public final void zzu(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(16, parcelZza);
    }
}
