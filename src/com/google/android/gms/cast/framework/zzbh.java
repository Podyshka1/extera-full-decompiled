package com.google.android.gms.cast.framework;

import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbh extends zzay {

    @NotOnlyInitialized
    private final SessionManagerListener zza;
    private final Class zzb;

    public zzbh(SessionManagerListener sessionManagerListener, Class cls) {
        this.zza = sessionManagerListener;
        this.zzb = cls;
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final IObjectWrapper zzb() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzc(IObjectWrapper iObjectWrapper) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionStarting((Session) cls.cast(session));
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzd(IObjectWrapper iObjectWrapper, String str) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionStarted((Session) cls.cast(session), str);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionStartFailed((Session) cls.cast(session), i);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzf(IObjectWrapper iObjectWrapper) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionEnding((Session) cls.cast(session));
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionEnded((Session) cls.cast(session), i);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzh(IObjectWrapper iObjectWrapper, String str) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionResuming((Session) cls.cast(session), str);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzi(IObjectWrapper iObjectWrapper, boolean z) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionResumed((Session) cls.cast(session), z);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzj(IObjectWrapper iObjectWrapper, int i) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionResumeFailed((Session) cls.cast(session), i);
    }

    @Override // com.google.android.gms.cast.framework.zzaz
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
        SessionManagerListener sessionManagerListener;
        Session session = (Session) ObjectWrapper.unwrap(iObjectWrapper);
        Class cls = this.zzb;
        if (!cls.isInstance(session) || (sessionManagerListener = this.zza) == null) {
            return;
        }
        sessionManagerListener.onSessionSuspended((Session) cls.cast(session), i);
    }
}
