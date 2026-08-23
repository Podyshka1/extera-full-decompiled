package com.google.android.gms.cast.framework.media.internal;

import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzh extends com.google.android.gms.internal.cast.zzb implements zzi {
    public zzh() {
        super("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTaskProgressPublisher");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            long j = parcel.readLong();
            long j2 = parcel.readLong();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zzb(j, j2);
            parcel2.writeNoException();
        } else {
            if (i != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
