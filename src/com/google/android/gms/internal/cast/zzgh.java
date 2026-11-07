package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgh extends zza implements IInterface {
    public zzgh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.usagereporting.internal.IUsageReportingService");
    }

    public final void zze(zzgf zzgfVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzgfVar);
        zzc(2, parcelZza);
    }
}
