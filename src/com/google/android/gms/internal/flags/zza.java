package com.google.android.gms.internal.flags;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zza implements IInterface {
    private final IBinder zza;
    private final String zzb = "com.google.android.gms.flags.IFlagProvider";

    public zza(IBinder iBinder, String str) {
        this.zza = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.zza;
    }
}
