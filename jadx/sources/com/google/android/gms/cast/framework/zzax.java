package com.google.android.gms.cast.framework;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zza;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public final class zzax extends zza implements zzay {
    zzax(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ISessionManager");
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final IObjectWrapper zzf() {
        Parcel parcelZzb = zzb(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final IObjectWrapper zzg() {
        Parcel parcelZzb = zzb(7, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzb.readStrongBinder());
        parcelZzb.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzh(zzao zzaoVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzaoVar);
        zzc(4, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzi(zzba zzbaVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzbaVar);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzay
    public final void zzj(boolean z, boolean z2) {
        Parcel parcelZza = zza();
        int i = zzc.$r8$clinit;
        parcelZza.writeInt(1);
        parcelZza.writeInt(z2 ? 1 : 0);
        zzc(6, parcelZza);
    }
}
