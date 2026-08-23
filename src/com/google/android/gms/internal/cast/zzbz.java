package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzbz implements SessionManagerListener {
    final /* synthetic */ zzce zza;

    public /* synthetic */ zzbz(zzce zzceVar, byte[] bArr) {
        Objects.requireNonNull(zzceVar);
        this.zza = zzceVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i) {
        int i2 = zzce.$r8$clinit;
        zzce.zzb.m282d("onSessionEnded with error = %d", Integer.valueOf(i));
        zzce zzceVar = this.zza;
        zzceVar.zzm();
        if (zzceVar.zzp() == 2) {
            return;
        }
        zzceVar.zzl();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        zzce zzceVar = this.zza;
        zzce.zzb.m282d("onSessionStarted with transferType = %d", Integer.valueOf(zzceVar.zzp()));
        if (zzceVar.zzg() && zzceVar.zzp() == 2) {
            zzceVar.zzn();
        }
        zzceVar.zzl();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
    }
}
