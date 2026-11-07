package com.google.android.gms.internal.play_billing;

import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzav extends zzaq implements zzaw {
    public zzav() {
        super("com.google.android.apps.play.billingtestcompanion.aidl.IBillingOverrideServiceCallback");
    }

    @Override // com.google.android.gms.internal.play_billing.zzaq
    public final boolean zzb(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        int i3 = parcel.readInt();
        zzar.zzb(parcel);
        zza(i3);
        return true;
    }
}
