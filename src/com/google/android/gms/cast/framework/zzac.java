package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzac extends com.google.android.gms.internal.cast.zzb implements zzad {
    public zzac() {
        super("com.google.android.gms.cast.framework.IAppVisibilityListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            IObjectWrapper iObjectWrapperZzb = zzb();
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.zze(parcel2, iObjectWrapperZzb);
        } else if (i == 2) {
            zzc();
            parcel2.writeNoException();
        } else if (i == 3) {
            zzd();
            parcel2.writeNoException();
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
