package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaj extends com.google.android.gms.internal.cast.zza implements zzal {
    public zzaj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ICastSession");
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zze(Bundle bundle) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, null);
        zzc(1, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zzf(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(2, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zzg(ConnectionResult connectionResult) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, connectionResult);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zzh(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zzc(parcelZza, applicationMetadata);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(4, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zzi(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(5, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzal
    public final void zzj(boolean z, int i) {
        Parcel parcelZza = zza();
        int i2 = com.google.android.gms.internal.cast.zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(0);
        zzc(6, parcelZza);
    }
}
