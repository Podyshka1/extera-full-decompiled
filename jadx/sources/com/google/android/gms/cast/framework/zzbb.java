package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzbb extends zzb implements zzbc {
    public zzbb() {
        super("com.google.android.gms.cast.framework.ISessionProvider");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String string = parcel.readString();
            zzc.zzb(parcel);
            IObjectWrapper iObjectWrapperZzb = zzb(string);
            parcel2.writeNoException();
            zzc.zze(parcel2, iObjectWrapperZzb);
        } else if (i == 2) {
            boolean zZzd = zzd();
            parcel2.writeNoException();
            int i3 = zzc.$r8$clinit;
            parcel2.writeInt(zZzd ? 1 : 0);
        } else if (i == 3) {
            String strZzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(strZzc);
        } else {
            if (i != 4) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
