package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.cast.zzb;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzaz extends zzb implements zzba {
    public zzaz() {
        super("com.google.android.gms.cast.framework.ISessionManagerListener");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 1:
                IObjectWrapper iObjectWrapperZzb = zzb();
                parcel2.writeNoException();
                zzc.zze(parcel2, iObjectWrapperZzb);
                return true;
            case 2:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzc.zzb(parcel);
                zzj(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string = parcel.readString();
                zzc.zzb(parcel);
                zzi(iObjectWrapperAsInterface2, string);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i3 = parcel.readInt();
                zzc.zzb(parcel);
                zzh(iObjectWrapperAsInterface3, i3);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                zzc.zzb(parcel);
                zzd(iObjectWrapperAsInterface4);
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper iObjectWrapperAsInterface5 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i4 = parcel.readInt();
                zzc.zzb(parcel);
                zzc(iObjectWrapperAsInterface5, i4);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper iObjectWrapperAsInterface6 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                String string2 = parcel.readString();
                zzc.zzb(parcel);
                zzg(iObjectWrapperAsInterface6, string2);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper iObjectWrapperAsInterface7 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zZzf = zzc.zzf(parcel);
                zzc.zzb(parcel);
                zzf(iObjectWrapperAsInterface7, zZzf);
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper iObjectWrapperAsInterface8 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i5 = parcel.readInt();
                zzc.zzb(parcel);
                zze(iObjectWrapperAsInterface8, i5);
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface9 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                int i6 = parcel.readInt();
                zzc.zzb(parcel);
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
