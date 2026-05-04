package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzan extends zzb implements zzao {
    public zzan() {
        super("com.google.android.gms.cast.framework.ICastStateListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            IObjectWrapper iObjectWrapperZzb = zzb();
            parcel2.writeNoException();
            zzc.zze(parcel2, iObjectWrapperZzb);
        } else if (i == 2) {
            int i3 = parcel.readInt();
            zzc.zzb(parcel);
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
