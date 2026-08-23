package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzz extends com.google.android.gms.cast.zzp {
    final /* synthetic */ CastSession zza;

    public /* synthetic */ zzz(CastSession castSession, byte[] bArr) {
        Objects.requireNonNull(castSession);
        this.zza = castSession;
    }

    @Override // com.google.android.gms.cast.zzp
    public final void zza() {
        CastSession castSession = this.zza;
        if (castSession.zzi() == null) {
            return;
        }
        try {
            if (castSession.zzk() != null) {
                castSession.zzk().zzb();
            }
            castSession.zzi().zze(null);
        } catch (RemoteException e) {
            CastSession.zzb.m283d(e, "Unable to call %s on %s.", "onConnected", zzal.class.getSimpleName());
        }
        CastSession castSession2 = this.zza;
        if (castSession2.zzl() != null) {
            castSession2.zzl().zza();
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void zzb(int i) {
        CastSession castSession = this.zza;
        if (castSession.zzi() == null) {
            return;
        }
        try {
            castSession.zzi().zzg(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.zzb.m283d(e, "Unable to call %s on %s.", "onConnectionFailed", zzal.class.getSimpleName());
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void zzc(int i) {
        CastSession castSession = this.zza;
        if (castSession.zzi() == null) {
            return;
        }
        try {
            castSession.zzi().zzf(i);
        } catch (RemoteException e) {
            CastSession.zzb.m283d(e, "Unable to call %s on %s.", "onConnectionSuspended", zzal.class.getSimpleName());
        }
    }

    @Override // com.google.android.gms.cast.zzp
    public final void zzd(int i) {
        CastSession castSession = this.zza;
        if (castSession.zzi() == null) {
            return;
        }
        try {
            castSession.zzi().zzg(new ConnectionResult(i));
        } catch (RemoteException e) {
            CastSession.zzb.m283d(e, "Unable to call %s on %s.", "onDisconnected", zzal.class.getSimpleName());
        }
    }
}
