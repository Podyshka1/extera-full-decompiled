package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.cast.LaunchOptions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzae extends com.google.android.gms.internal.cast.zzb implements zzaf {
    public zzae() {
        super("com.google.android.gms.cast.framework.ICastConnectionController");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String string = parcel.readString();
            String string2 = parcel.readString();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zzb(string, string2);
            parcel2.writeNoException();
        } else if (i == 2) {
            String string3 = parcel.readString();
            LaunchOptions launchOptions = (LaunchOptions) com.google.android.gms.internal.cast.zzc.zzb(parcel, LaunchOptions.CREATOR);
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zzc(string3, launchOptions);
            parcel2.writeNoException();
        } else if (i == 3) {
            String string4 = parcel.readString();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zzd(string4);
            parcel2.writeNoException();
        } else if (i == 4) {
            int i3 = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.zzf(parcel);
            zze(i3);
            parcel2.writeNoException();
        } else {
            if (i != 5) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(12451000);
        }
        return true;
    }
}
