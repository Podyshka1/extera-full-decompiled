package com.google.android.gms.cast.framework;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import android.widget.Toast;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public class SessionManager {
    private static final Logger zza = new Logger("SessionManager");
    private final zzax zzb;
    private final Context zzc;

    public SessionManager(zzax zzaxVar, Context context) {
        this.zzb = zzaxVar;
        this.zzc = context;
    }

    public void addSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        addSessionManagerListener(sessionManagerListener, Session.class);
    }

    public void endCurrentSession(boolean z) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            zza.m286i("End session for %s", this.zzc.getPackageName());
            this.zzb.zzj(true, z);
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "endCurrentSession", zzax.class.getSimpleName());
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
            return (Session) ObjectWrapper.unwrap(this.zzb.zze());
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "getWrappedCurrentSession", zzax.class.getSimpleName());
            return null;
        }
    }

    public void removeSessionManagerListener(SessionManagerListener<Session> sessionManagerListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        removeSessionManagerListener(sessionManagerListener, Session.class);
    }

    public void startSession(Intent intent) {
        try {
            Logger logger = zza;
            Context context = this.zzc;
            logger.m286i("Start session for %s", context.getPackageName());
            Bundle extras = intent.getExtras();
            if (extras != null && extras.getString("CAST_INTENT_TO_CAST_ROUTE_ID_KEY") != null) {
                String string = extras.getString("CAST_INTENT_TO_CAST_DEVICE_NAME_KEY");
                if (!extras.getBoolean("CAST_INTENT_TO_CAST_NO_TOAST_KEY")) {
                    Toast.makeText(context, context.getString(C1331R.string.cast_connecting_to_device, string), 0).show();
                }
                this.zzb.zzm(new Bundle(extras));
                intent.removeExtra("CAST_INTENT_TO_CAST_ROUTE_ID_KEY");
            }
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "startSession", zzax.class.getSimpleName());
        }
    }

    public final int zza() {
        try {
            return this.zzb.zzl();
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "addCastStateListener", zzax.class.getSimpleName());
            return 1;
        }
    }

    public final void zzb(CastStateListener castStateListener) {
        Preconditions.checkNotNull(castStateListener);
        try {
            this.zzb.zzh(new zzaa(castStateListener));
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "addCastStateListener", zzax.class.getSimpleName());
        }
    }

    public final void zzc(CastStateListener castStateListener) {
        try {
            this.zzb.zzi(new zzaa(castStateListener));
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "removeCastStateListener", zzax.class.getSimpleName());
        }
    }

    public final IObjectWrapper zzd() {
        try {
            return this.zzb.zzk();
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "getWrappedThis", zzax.class.getSimpleName());
            return null;
        }
    }

    public <T extends Session> void removeSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (sessionManagerListener == null) {
            return;
        }
        try {
            this.zzb.zzg(new zzbh(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "removeSessionManagerListener", zzax.class.getSimpleName());
        }
    }

    public <T extends Session> void addSessionManagerListener(SessionManagerListener<T> sessionManagerListener, Class<T> cls) {
        if (sessionManagerListener == null) {
            f$$ExternalSyntheticBUOutline2.m179m("SessionManagerListener can't be null");
            return;
        }
        Preconditions.checkNotNull(cls);
        Preconditions.checkMainThread("Must be called from the main thread.");
        try {
            this.zzb.zzf(new zzbh(sessionManagerListener, cls));
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "addSessionManagerListener", zzax.class.getSimpleName());
        }
    }
}
