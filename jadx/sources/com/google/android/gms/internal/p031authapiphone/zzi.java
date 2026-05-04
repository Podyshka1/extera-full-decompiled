package com.google.android.gms.internal.p031authapiphone;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzi extends zzb implements zzj {
    public zzi() {
        super("com.google.android.gms.auth.api.phone.internal.ISmsRetrieverResultCallback");
    }

    @Override // com.google.android.gms.internal.p031authapiphone.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        Status status = (Status) zzc.zza(parcel, Status.CREATOR);
        zzc.zzb(parcel);
        zzb(status);
        return true;
    }
}
