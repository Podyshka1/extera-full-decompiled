package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* JADX INFO: loaded from: classes.dex */
public class SessionManager {
    private static final Logger zza = new Logger("SessionManager");
    private final zzay zzb;
    private final Context zzc;

    public SessionManager(zzay zzayVar, Context context) {
        this.zzb = zzayVar;
        this.zzc = context;
    }

    public void endCurrentSession(boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            zza.m340i("End session for %s", this.zzc.getPackageName());
            this.zzb.zzj(true, z);
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "endCurrentSession", zzay.class.getSimpleName());
        }
    }

    public CastSession getCurrentCastSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        Session currentSession = getCurrentSession();
        if (currentSession == null || !(currentSession instanceof CastSession)) {
            return null;
        }
        return (CastSession) currentSession;
    }

    public Session getCurrentSession() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            return (Session) ObjectWrapper.unwrap(this.zzb.zzf());
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "getWrappedCurrentSession", zzay.class.getSimpleName());
            return null;
        }
    }

    public final IObjectWrapper zzb() {
        try {
            return this.zzb.zzg();
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "getWrappedThis", zzay.class.getSimpleName());
            return null;
        }
    }

    final void zzc(CastStateListener castStateListener) {
        Preconditions.checkNotNull(castStateListener);
        try {
            this.zzb.zzh(new zzab(castStateListener));
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "addCastStateListener", zzay.class.getSimpleName());
        }
    }

    public void addSessionManagerListener(SessionManagerListener sessionManagerListener, Class cls) {
        if (sessionManagerListener == null) {
            throw new NullPointerException("SessionManagerListener can't be null");
        }
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            this.zzb.zzi(new zzbj(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "addSessionManagerListener", zzay.class.getSimpleName());
        }
    }
}
