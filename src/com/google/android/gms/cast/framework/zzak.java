package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.cast.zza;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes4.dex */
public final class zzak extends zza implements zzam {
    zzak(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ICastSession");
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zze(boolean z, int i) {
        Parcel parcelZza = zza();
        int i2 = zzc.$r8$clinit;
        parcelZza.writeInt(z ? 1 : 0);
        parcelZza.writeInt(0);
        zzc(6, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzf(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, applicationMetadata);
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        parcelZza.writeInt(z ? 1 : 0);
        zzc(4, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzg(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(5, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzh(Bundle bundle) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, null);
        zzc(1, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzi(ConnectionResult connectionResult) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, connectionResult);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzam
    public final void zzj(int i) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzc(2, parcelZza);
    }
}
