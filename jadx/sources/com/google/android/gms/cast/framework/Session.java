package com.google.android.gms.cast.framework;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Session {
    private static final Logger zza = new Logger("Session");
    private final zzaw zzb;
    private final zzbi zzc;

    protected Session(Context context, String str, String str2) {
        zzbi zzbiVar = new zzbi(this, null);
        this.zzc = zzbiVar;
        this.zzb = com.google.android.gms.internal.cast.zzag.zzd(context, str, str2, zzbiVar);
    }

    protected abstract void end(boolean z);

    public final String getSessionId() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                return zzawVar.zzi();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "getSessionId", zzaw.class.getSimpleName());
            }
        }
        return null;
    }

    public abstract long getSessionRemainingTimeMs();

    public boolean isConnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                return zzawVar.zzp();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "isConnected", zzaw.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isConnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                return zzawVar.zzq();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "isConnecting", zzaw.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isResuming() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                return zzawVar.zzt();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "isResuming", zzaw.class.getSimpleName());
            }
        }
        return false;
    }

    protected final void notifyFailedToResumeSession(int i) {
        zzaw zzawVar = this.zzb;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzj(i);
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "notifyFailedToResumeSession", zzaw.class.getSimpleName());
        }
    }

    protected final void notifyFailedToStartSession(int i) {
        zzaw zzawVar = this.zzb;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzk(i);
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "notifyFailedToStartSession", zzaw.class.getSimpleName());
        }
    }

    protected final void notifySessionEnded(int i) {
        zzaw zzawVar = this.zzb;
        if (zzawVar == null) {
            return;
        }
        try {
            zzawVar.zzl(i);
        } catch (RemoteException e) {
            zza.m337d(e, "Unable to call %s on %s.", "notifySessionEnded", zzaw.class.getSimpleName());
        }
    }

    protected abstract void onResuming(Bundle bundle);

    protected abstract void onStarting(Bundle bundle);

    protected abstract void resume(Bundle bundle);

    protected abstract void start(Bundle bundle);

    protected abstract void zzk(Bundle bundle);

    public final int zzm() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                if (zzawVar.zze() >= 211100000) {
                    return this.zzb.zzf();
                }
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "getSessionStartType", zzaw.class.getSimpleName());
            }
        }
        return 0;
    }

    public final IObjectWrapper zzn() {
        zzaw zzawVar = this.zzb;
        if (zzawVar != null) {
            try {
                return zzawVar.zzg();
            } catch (RemoteException e) {
                zza.m337d(e, "Unable to call %s on %s.", "getWrappedObject", zzaw.class.getSimpleName());
            }
        }
        return null;
    }
}
