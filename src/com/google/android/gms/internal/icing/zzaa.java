package com.google.android.gms.internal.icing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaa extends zza implements IInterface {
    zzaa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    }

    public final void zze(zzac zzacVar, com.google.firebase.appindexing.internal.zzc[] zzcVarArr) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, zzacVar);
        parcelZza.writeTypedArray(zzcVarArr, 0);
        zzc(7, parcelZza);
    }
}
