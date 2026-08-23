package com.google.android.gms.internal.icing;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzab extends zzb implements zzac {
    public zzab() {
        super("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks");
    }

    @Override // com.google.android.gms.internal.icing.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb((Status) zzc.zza(parcel, Status.CREATOR));
        } else if (i == 2) {
        } else {
            if (i != 4) {
                return false;
            }
        }
        return true;
    }
}
