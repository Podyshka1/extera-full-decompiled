package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.wearable.zzc;

/* JADX INFO: loaded from: classes5.dex */
public final class zzev extends com.google.android.gms.internal.wearable.zza implements IInterface {
    public zzev(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.wearable.internal.IRpcResponseCallback");
    }

    public final void zzd(boolean z, byte[] bArr) {
        Parcel parcelZza = zza();
        zzc.zzc(parcelZza, z);
        parcelZza.writeByteArray(bArr);
        zzK(1, parcelZza);
    }
}
