package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public final class zzab {
    private static final Logger zza = new Logger("DiscoveryManager");
    private final zzap zzb;

    public zzab(zzap zzapVar) {
        this.zzb = zzapVar;
    }

    public final IObjectWrapper zza() {
        try {
            return this.zzb.zze();
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "getWrappedThis", zzap.class.getSimpleName());
            return null;
        }
    }
}
