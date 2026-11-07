package com.google.android.gms.internal.cast;

import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzl implements SessionManagerListener {
    final /* synthetic */ zzn zza;

    public zzl(zzn zznVar) {
        Objects.requireNonNull(zznVar);
        this.zza = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i) {
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zzh(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void onSessionEnding(Session session) {
        this.zza.zzo((CastSession) session);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zzh(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        int i = zzn.$r8$clinit;
        zzn.zzb.m311d("onSessionResumed with wasSuspended = %b", Boolean.valueOf(z));
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zze();
        Preconditions.checkNotNull(zznVar.zzm());
        zznVar.zzj().zzd(zznVar.zzk().zzd(zznVar.zzm(), z), 227);
        zznVar.zzg();
        zznVar.zzb();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        zzn.zzb.m311d("onSessionResuming with sessionId = %s", str);
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zzf(zznVar.zzl(), str);
        Preconditions.checkNotNull(zznVar.zzm());
        zznVar.zzj().zzd(zznVar.zzk().zzc(zznVar.zzm()), Opcodes.USHR_INT_LIT8);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zzh(i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        zzn.zzb.m311d("onSessionStarted with sessionId = %s", str);
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zze();
        zznVar.zzm().zzf = str;
        zznVar.zzj().zzd(zznVar.zzk().zza(zznVar.zzm()), Opcodes.OR_INT_LIT8);
        zznVar.zzg();
        zznVar.zzb();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        zzn.zzb.m311d("onSessionStarting", new Object[0]);
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        if (zznVar.zzm() != null) {
            zzn.zzb.m318w("Start a session while there's already an active session. Create a new one.", new Object[0]);
        }
        zznVar.zzd();
        zzo zzoVarZzm = zznVar.zzm();
        zznVar.zzj().zzd(zznVar.zzk().zzb(zzoVarZzm), Opcodes.AND_INT_LIT8);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        int i2 = zzn.$r8$clinit;
        zzn.zzb.m311d("onSessionSuspended with reason = %d", Integer.valueOf(i));
        zzn zznVar = this.zza;
        zznVar.zzo((CastSession) session);
        zznVar.zze();
        Preconditions.checkNotNull(zznVar.zzm());
        zznVar.zzj().zzd(zznVar.zzk().zze(zznVar.zzm(), i), Opcodes.SHR_INT_LIT8);
        zznVar.zzg();
        zznVar.zzc();
    }
}
