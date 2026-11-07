package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbd extends zzb implements zzbe {
    public zzbd() {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbg zzbfVar;
        switch (i) {
            case 1:
                Bundle bundle = (Bundle) zzc.zzb(parcel, Bundle.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbfVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    zzbfVar = iInterfaceQueryLocalInterface instanceof zzbg ? (zzbg) iInterfaceQueryLocalInterface : new zzbf(strongBinder);
                }
                zzc.zzf(parcel);
                zzb(bundle, zzbfVar);
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundle2 = (Bundle) zzc.zzb(parcel, Bundle.CREATOR);
                int i3 = parcel.readInt();
                zzc.zzf(parcel);
                zzc(bundle2, i3);
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle3 = (Bundle) zzc.zzb(parcel, Bundle.CREATOR);
                zzc.zzf(parcel);
                zzd(bundle3);
                parcel2.writeNoException();
                return true;
            case 4:
                Bundle bundle4 = (Bundle) zzc.zzb(parcel, Bundle.CREATOR);
                int i4 = parcel.readInt();
                zzc.zzf(parcel);
                boolean zZze = zze(bundle4, i4);
                parcel2.writeNoException();
                parcel2.writeInt(zZze ? 1 : 0);
                return true;
            case 5:
                String string = parcel.readString();
                zzc.zzf(parcel);
                zzf(string);
                parcel2.writeNoException();
                return true;
            case 6:
                zzg();
                parcel2.writeNoException();
                return true;
            case 7:
                boolean zZzh = zzh();
                parcel2.writeNoException();
                int i5 = zzc.$r8$clinit;
                parcel2.writeInt(zZzh ? 1 : 0);
                return true;
            case 8:
                String string2 = parcel.readString();
                zzc.zzf(parcel);
                Bundle bundleZzi = zzi(string2);
                parcel2.writeNoException();
                zzc.zzd(parcel2, bundleZzi);
                return true;
            case 9:
                String strZzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(strZzj);
                return true;
            case 10:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            case 11:
                zzk();
                parcel2.writeNoException();
                return true;
            case 12:
                boolean zZzl = zzl();
                parcel2.writeNoException();
                int i6 = zzc.$r8$clinit;
                parcel2.writeInt(zZzl ? 1 : 0);
                return true;
            case 13:
                int i7 = parcel.readInt();
                zzc.zzf(parcel);
                zzm(i7);
                parcel2.writeNoException();
                return true;
            case 14:
                String string3 = parcel.readString();
                zzc.zzf(parcel);
                zzn(string3);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
