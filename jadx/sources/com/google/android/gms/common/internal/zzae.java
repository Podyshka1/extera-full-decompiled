package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzae extends com.google.android.gms.internal.common.zza implements zzag {
    zzae(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final com.google.android.gms.common.zzq zze(com.google.android.gms.common.zzo zzoVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zzc(parcelZza, zzoVar);
        Parcel parcelZzB = zzB(6, parcelZza);
        com.google.android.gms.common.zzq zzqVar = (com.google.android.gms.common.zzq) com.google.android.gms.internal.common.zzc.zza(parcelZzB, com.google.android.gms.common.zzq.CREATOR);
        parcelZzB.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final com.google.android.gms.common.zzq zzf(com.google.android.gms.common.zzo zzoVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zzc(parcelZza, zzoVar);
        Parcel parcelZzB = zzB(8, parcelZza);
        com.google.android.gms.common.zzq zzqVar = (com.google.android.gms.common.zzq) com.google.android.gms.internal.common.zzc.zza(parcelZzB, com.google.android.gms.common.zzq.CREATOR);
        parcelZzB.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzh(com.google.android.gms.common.zzs zzsVar, IObjectWrapper iObjectWrapper) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.common.zzc.zzc(parcelZza, zzsVar);
        com.google.android.gms.internal.common.zzc.zze(parcelZza, iObjectWrapper);
        Parcel parcelZzB = zzB(5, parcelZza);
        boolean zZzf = com.google.android.gms.internal.common.zzc.zzf(parcelZzB);
        parcelZzB.recycle();
        return zZzf;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzi() {
        Parcel parcelZzB = zzB(7, zza());
        boolean zZzf = com.google.android.gms.internal.common.zzc.zzf(parcelZzB);
        parcelZzB.recycle();
        return zZzf;
    }
}
