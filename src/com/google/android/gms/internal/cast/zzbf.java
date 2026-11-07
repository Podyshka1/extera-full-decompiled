package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbf extends zza implements zzbg {
    public zzbf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final int zze() {
        Parcel parcelZzb = zzb(7, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzf(String str, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, bundle);
        zzc(1, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzg(String str, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, bundle);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzh(String str, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, bundle);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzi(String str, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, bundle);
        zzc(4, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzj(String str, Bundle bundle, int i) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzc.zzc(parcelZza, bundle);
        parcelZza.writeInt(i);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzk(String str, String str2, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, bundle);
        zzc(8, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzl(String str, String str2, Bundle bundle) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, bundle);
        zzc(9, parcelZza);
    }

    @Override // com.google.android.gms.internal.cast.zzbg
    public final void zzm(String str, String str2, Bundle bundle, int i) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzc.zzc(parcelZza, bundle);
        parcelZza.writeInt(i);
        zzc(10, parcelZza);
    }
}
