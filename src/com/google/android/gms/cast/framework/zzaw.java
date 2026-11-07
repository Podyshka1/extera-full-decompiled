package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaw extends com.google.android.gms.internal.cast.zza implements zzax {
    public zzaw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISessionManager");
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final IObjectWrapper zze() {
        Parcel parcelZzb = zzb(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzf(zzaz zzazVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzazVar);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzg(zzaz zzazVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzazVar);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzh(zzan zzanVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzanVar);
        zzc(4, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzi(zzan zzanVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzanVar);
        zzc(5, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzj(boolean z, boolean z2) {
        Parcel parcelZza = zza();
        int i = com.google.android.gms.internal.cast.zzc.$r8$clinit;
        parcelZza.writeInt(1);
        parcelZza.writeInt(z2 ? 1 : 0);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final IObjectWrapper zzk() {
        Parcel parcelZzb = zzb(7, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final int zzl() {
        Parcel parcelZzb = zzb(8, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.cast.framework.zzax
    public final void zzm(Bundle bundle) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, bundle);
        zzc(9, parcelZza);
    }
}
