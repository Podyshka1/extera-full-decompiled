package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw implements SessionManagerListener {
    final /* synthetic */ zzy zza;

    public zzw(zzy zzyVar) {
        Objects.requireNonNull(zzyVar);
        this.zza = zzyVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i) {
        zzcr zzcrVar = new zzcr(9);
        zzcrVar.zza(Integer.valueOf(i));
        zzy zzyVar = this.zza;
        zzcrVar.zzb(Boolean.valueOf(zzyVar.zzd().zze()));
        zzyVar.zza(new zzcs(zzcrVar));
        zzyVar.zzc();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnding(Session session) {
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        zzcr zzcrVar = new zzcr(8);
        zzcrVar.zza(Integer.valueOf(i));
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        zzyVar.zzc();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        zzcs zzcsVar = new zzcs(new zzcr(4));
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzh((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        zzcs zzcsVar = new zzcs(new zzcr(7));
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzh((CastSession) session);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzg(str);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        zzcr zzcrVar = new zzcr(5);
        zzcrVar.zza(Integer.valueOf(i));
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        zzyVar.zzc();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        zzcs zzcsVar = new zzcs(new zzcr(4));
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzh((CastSession) session);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzg(str);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        CastSession castSession = (CastSession) session;
        zzcr zzcrVar = new zzcr(2);
        zzy zzyVar = this.zza;
        zzcrVar.zzb(Boolean.valueOf(zzyVar.zzd().zze()));
        zzyVar.zza(new zzcs(zzcrVar));
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzh(castSession);
        castSession.zzb(zzyVar.zzf());
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        zzcr zzcrVar = new zzcr(6);
        zzcrVar.zza(Integer.valueOf(i));
        zzcs zzcsVar = new zzcs(zzcrVar);
        zzy zzyVar = this.zza;
        zzyVar.zza(zzcsVar);
        ((zzaa) Preconditions.checkNotNull(zzyVar.zze())).zzh((CastSession) session);
    }
}
