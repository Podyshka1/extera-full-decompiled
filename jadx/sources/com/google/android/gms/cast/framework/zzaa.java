package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.cast.zzq;
import com.google.android.gms.common.ConnectionResult;

/* JADX INFO: loaded from: classes4.dex */
final class zzaa extends zzq {
    final /* synthetic */ CastSession zza;

    /* synthetic */ zzaa(CastSession castSession, zzz zzzVar) {
        this.zza = castSession;
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zza() {
        CastSession castSession = this.zza;
        if (castSession.zze == null) {
            return;
        }
        try {
            if (castSession.zzj != null) {
                castSession.zzj.zzq();
            }
            this.zza.zze.zzh(null);
        } catch (RemoteException e) {
            CastSession.zzb.m337d(e, "Unable to call %s on %s.", "onConnected", zzam.class.getSimpleName());
        }
        CastSession castSession2 = this.zza;
        if (castSession2.zzm != null) {
            castSession2.zzm.zza();
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzb(int i) {
        CastSession castSession = this.zza;
        if (castSession.zze == null) {
            return;
        }
        try {
            castSession.zze.zzi(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.zzb.m337d(e, "Unable to call %s on %s.", "onConnectionFailed", zzam.class.getSimpleName());
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzc(int i) {
        CastSession castSession = this.zza;
        if (castSession.zze == null) {
            return;
        }
        try {
            castSession.zze.zzj(i);
        } catch (RemoteException e) {
            CastSession.zzb.m337d(e, "Unable to call %s on %s.", "onConnectionSuspended", zzam.class.getSimpleName());
        }
    }

    @Override // com.google.android.gms.cast.zzq
    public final void zzd(int i) {
        CastSession castSession = this.zza;
        if (castSession.zze == null) {
            return;
        }
        try {
            castSession.zze.zzi(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.zzb.m337d(e, "Unable to call %s on %s.", "onDisconnected", zzam.class.getSimpleName());
        }
    }
}
