package com.google.android.gms.internal.cast;

import com.android.p003dx.p006io.Opcodes;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzi implements SessionManagerListener {
    final /* synthetic */ zzk zza;

    public zzi(zzk zzkVar) {
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionEnded(Session session, int i) {
        this.zza.zzi = (CastSession) session;
        zzk.zzm(this.zza, i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* synthetic */ void onSessionEnding(Session session) {
        this.zza.zzi = (CastSession) session;
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumeFailed(Session session, int i) {
        this.zza.zzi = (CastSession) session;
        zzk.zzm(this.zza, i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResumed(Session session, boolean z) {
        zzk.zza.m336d("onSessionResumed with wasSuspended = %b", Boolean.valueOf(z));
        this.zza.zzi = (CastSession) session;
        this.zza.zzs();
        Preconditions.checkNotNull(this.zza.zzh);
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zzb(zzkVar.zzh, z), 227);
        zzk zzkVar2 = this.zza;
        zzkVar2.zzh.zzc(zzkVar2.zzg);
        this.zza.zzu();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionResuming(Session session, String str) {
        zzk.zza.m336d("onSessionResuming with sessionId = %s", str);
        this.zza.zzi = (CastSession) session;
        zzk zzkVar = this.zza;
        zzk.zzn(zzkVar, zzkVar.zzg, str);
        Preconditions.checkNotNull(this.zza.zzh);
        zzk zzkVar2 = this.zza;
        this.zza.zzb.zze(zzkVar2.zzd.zzc(zzkVar2.zzh), Opcodes.USHR_INT_LIT8);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStartFailed(Session session, int i) {
        this.zza.zzi = (CastSession) session;
        zzk.zzm(this.zza, i);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarted(Session session, String str) {
        zzk.zza.m336d("onSessionStarted with sessionId = %s", str);
        this.zza.zzi = (CastSession) session;
        this.zza.zzs();
        zzk zzkVar = this.zza;
        zzkVar.zzh.zzf = str;
        this.zza.zzb.zze(zzkVar.zzd.zza(zzkVar.zzh), Opcodes.OR_INT_LIT8);
        zzk zzkVar2 = this.zza;
        zzkVar2.zzh.zzc(zzkVar2.zzg);
        this.zza.zzu();
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionStarting(Session session) {
        zzk.zza.m336d("onSessionStarting", new Object[0]);
        this.zza.zzi = (CastSession) session;
        if (this.zza.zzh != null) {
            zzk.zza.m341w("Start a session while there's already an active session. Create a new one.", new Object[0]);
        }
        this.zza.zzt();
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zzd(zzkVar.zzh), Opcodes.AND_INT_LIT8);
    }

    @Override // com.google.android.gms.cast.framework.SessionManagerListener
    public final /* bridge */ /* synthetic */ void onSessionSuspended(Session session, int i) {
        zzk.zza.m336d("onSessionSuspended with reason = %d", Integer.valueOf(i));
        this.zza.zzi = (CastSession) session;
        this.zza.zzs();
        Preconditions.checkNotNull(this.zza.zzh);
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zze(zzkVar.zzh, i), Opcodes.SHR_INT_LIT8);
        zzk zzkVar2 = this.zza;
        zzkVar2.zzh.zzc(zzkVar2.zzg);
        this.zza.zzr();
    }
}
