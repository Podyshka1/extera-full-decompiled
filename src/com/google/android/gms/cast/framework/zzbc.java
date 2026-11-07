package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbc extends com.google.android.gms.internal.cast.zzb implements zzbd {
    public zzbc() {
        super("com.google.android.gms.cast.framework.ISessionProxy");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperZzb = zzb();
                parcel2.writeNoException();
                com.google.android.gms.internal.cast.zzc.zze(parcel2, iObjectWrapperZzb);
                return true;
            case 2:
                Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzd(bundle);
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzf(bundle2);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcel);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzg(zZza);
                parcel2.writeNoException();
                return true;
            case 5:
                long jZzi = zzi();
                parcel2.writeNoException();
                parcel2.writeLong(jZzi);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            case 7:
                Bundle bundle3 = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzc(bundle3);
                parcel2.writeNoException();
                return true;
            case 8:
                Bundle bundle4 = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zze(bundle4);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundle5 = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzh(bundle5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
