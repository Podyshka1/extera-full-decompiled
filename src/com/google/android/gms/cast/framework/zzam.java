package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzam extends com.google.android.gms.internal.cast.zzb implements zzan {
    public zzam() {
        super("com.google.android.gms.cast.framework.ICastStateListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            IObjectWrapper iObjectWrapperZzb = zzb();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, iObjectWrapperZzb);
        } else if (i == 2) {
            int i3 = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zzc(i3);
            parcel2.writeNoException();
        } else {
            if (i != 3) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
