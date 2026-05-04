package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class zzd implements Parcelable {
    public static final Parcelable.Creator<zzd> CREATOR = new zzb();
    Messenger zza;

    public zzd(IBinder iBinder) {
        this.zza = new Messenger(iBinder);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        try {
            return zza().equals(((zzd) obj).zza());
        } catch (ClassCastException unused) {
            return false;
        }
    }

    public final int hashCode() {
        return zza().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Messenger messenger = this.zza;
        messenger.getClass();
        parcel.writeStrongBinder(messenger.getBinder());
    }

    public final IBinder zza() {
        Messenger messenger = this.zza;
        messenger.getClass();
        return messenger.getBinder();
    }

    public final void zzb(Message message) throws RemoteException {
        Messenger messenger = this.zza;
        messenger.getClass();
        messenger.send(message);
    }
}
