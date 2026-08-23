package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbo extends zzbl implements zzbq {
    zzbo(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // com.google.android.gms.internal.measurement.zzbq
    public final Bundle zze(Bundle bundle) {
        Parcel parcelZza = zza();
        zzbn.zzc(parcelZza, bundle);
        Parcel parcelZzP = zzP(1, parcelZza);
        Bundle bundle2 = (Bundle) zzbn.zzb(parcelZzP, Bundle.CREATOR);
        parcelZzP.recycle();
        return bundle2;
    }
}
