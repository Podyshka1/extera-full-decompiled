package com.google.android.gms.cloudmessaging;

import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
final class zzq {
    private final Messenger zza;
    private final zzd zzb;

    zzq(IBinder iBinder) throws RemoteException {
        String interfaceDescriptor = iBinder.getInterfaceDescriptor();
        if (Objects.equals(interfaceDescriptor, "android.os.IMessenger")) {
            this.zza = new Messenger(iBinder);
            this.zzb = null;
        } else {
            if (!Objects.equals(interfaceDescriptor, "com.google.android.gms.iid.IMessengerCompat")) {
                Log.w("MessengerIpcClient", "Invalid interface descriptor: ".concat(String.valueOf(interfaceDescriptor)));
                throw new RemoteException();
            }
            this.zzb = new zzd(iBinder);
            this.zza = null;
        }
    }

    final void zza(Message message) throws RemoteException {
        Messenger messenger = this.zza;
        if (messenger != null) {
            messenger.send(message);
            return;
        }
        zzd zzdVar = this.zzb;
        if (zzdVar == null) {
            throw new IllegalStateException("Both messengers are null");
        }
        zzdVar.zzb(message);
    }
}
