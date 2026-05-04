package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt implements SessionManagerListener {
    final /* synthetic */ zzv zza;

    public zzt(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i) {
        zzy zzyVar = new zzy(9);
        zzyVar.zzb(Integer.valueOf(i));
        zzyVar.zza(Boolean.valueOf(this.zza.zzb.zze()));
        zzv.zzf(this.zza, new zzz(zzyVar));
        this.zza.zzh();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        zzy zzyVar = new zzy(8);
        zzyVar.zzb(Integer.valueOf(i));
        zzv.zzf(this.zza, new zzz(zzyVar));
        this.zza.zzh();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        zzv.zzf(this.zza, new zzz(new zzy(4)));
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzf((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        zzv.zzf(this.zza, new zzz(new zzy(7)));
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzf((CastSession) session);
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzg(str);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        zzy zzyVar = new zzy(5);
        zzyVar.zzb(Integer.valueOf(i));
        zzv.zzf(this.zza, new zzz(zzyVar));
        this.zza.zzh();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        zzv.zzf(this.zza, new zzz(new zzy(4)));
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzf((CastSession) session);
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzg(str);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        CastSession castSession = (CastSession) session;
        zzy zzyVar = new zzy(2);
        zzyVar.zza(Boolean.valueOf(this.zza.zzb.zze()));
        zzv.zzf(this.zza, new zzz(zzyVar));
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzf(castSession);
        castSession.zzj(this.zza.zze);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        zzy zzyVar = new zzy(6);
        zzyVar.zzb(Integer.valueOf(i));
        zzv.zzf(this.zza, new zzz(zzyVar));
        ((zzx) Preconditions.checkNotNull(this.zza.zzd)).zzf((CastSession) session);
    }
}
