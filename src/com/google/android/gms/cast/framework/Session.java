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
    private final zzav zzb;
    private final zzbg zzc;

    public Session(Context context, String str, String str2) {
        zzbg zzbgVar = new zzbg(this, null);
        this.zzc = zzbgVar;
        this.zzb = com.google.android.gms.internal.cast.zzay.zzb(context, str, str2, zzbgVar);
    }

    public abstract void end(boolean z);

    public final String getCategory() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzg();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "getCategory", zzav.class.getSimpleName());
            }
        }
        return null;
    }

    public final String getSessionId() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzh();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "getSessionId", zzav.class.getSimpleName());
            }
        }
        return null;
    }

    public long getSessionRemainingTimeMs() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return 0L;
    }

    public boolean isConnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzi();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isConnected", zzav.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isConnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzj();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isConnecting", zzav.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isDisconnected() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzl();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isDisconnected", zzav.class.getSimpleName());
            }
        }
        return true;
    }

    public boolean isDisconnecting() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzk();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isDisconnecting", zzav.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isResuming() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzm();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isResuming", zzav.class.getSimpleName());
            }
        }
        return false;
    }

    public boolean isSuspended() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzn();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "isSuspended", zzav.class.getSimpleName());
            }
        }
        return false;
    }

    public final void notifyFailedToResumeSession(int i) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzt(i);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifyFailedToResumeSession", zzav.class.getSimpleName());
        }
    }

    public final void notifyFailedToStartSession(int i) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzq(i);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifyFailedToStartSession", zzav.class.getSimpleName());
        }
    }

    public final void notifySessionEnded(int i) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzr(i);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifySessionEnded", zzav.class.getSimpleName());
        }
    }

    public final void notifySessionResumed(boolean z) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzs(z);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifySessionResumed", zzav.class.getSimpleName());
        }
    }

    public final void notifySessionStarted(String str) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzp(str);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifySessionStarted", zzav.class.getSimpleName());
        }
    }

    public final void notifySessionSuspended(int i) {
        zzav zzavVar = this.zzb;
        if (zzavVar == null) {
            return;
        }
        try {
            zzavVar.zzu(i);
        } catch (RemoteException e) {
            zza.m312d(e, "Unable to call %s on %s.", "notifySessionSuspended", zzav.class.getSimpleName());
        }
    }

    public void onResuming(Bundle bundle) {
    }

    public void onStarting(Bundle bundle) {
    }

    public abstract void resume(Bundle bundle);

    public abstract void start(Bundle bundle);

    public void zza(Bundle bundle) {
    }

    public final int zzm() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                if (zzavVar.zze() >= 211100000) {
                    return zzavVar.zzo();
                }
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "getSessionStartType", zzav.class.getSimpleName());
            }
        }
        return 0;
    }

    public final IObjectWrapper zzn() {
        zzav zzavVar = this.zzb;
        if (zzavVar != null) {
            try {
                return zzavVar.zzf();
            } catch (RemoteException e) {
                zza.m312d(e, "Unable to call %s on %s.", "getWrappedObject", zzav.class.getSimpleName());
            }
        }
        return null;
    }
}
