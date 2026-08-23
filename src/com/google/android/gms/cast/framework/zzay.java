package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzay extends com.google.android.gms.internal.cast.zzb implements zzaz {
    public zzay() {
        super("com.google.android.gms.cast.framework.ISessionManagerListener");
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
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzc(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string = parcel.readString();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzd(iObjectWrapperAsInterface2, string);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i3 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zze(iObjectWrapperAsInterface3, i3);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzf(iObjectWrapperAsInterface4);
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i4 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzg(iObjectWrapperAsInterface5, i4);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string2 = parcel.readString();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzh(iObjectWrapperAsInterface6, string2);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zZza = com.google.android.gms.internal.cast.zzc.zza(parcel);
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzi(iObjectWrapperAsInterface7, zZza);
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i5 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzj(iObjectWrapperAsInterface8, i5);
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i6 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.zzf(parcel);
                zzk(iObjectWrapperAsInterface9, i6);
                parcel2.writeNoException();
                return true;
            case 11:
                parcel2.writeNoException();
                parcel2.writeInt(12451000);
                return true;
            default:
                return false;
        }
    }
}
