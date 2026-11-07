package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public final class zzas extends zzap implements zzau {
    public zzas(IBinder iBinder) {
        super(iBinder, "com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.play_billing.zzau
    public final void zza(String str, String str2, zzaw zzawVar) {
        Parcel parcelZzs = zzs();
        parcelZzs.writeString(str);
        parcelZzs.writeString(str2);
        int i = zzar.$r8$clinit;
        parcelZzs.writeStrongBinder(zzawVar);
        zzv(1, parcelZzs);
    }
}
