package com.google.android.gms.internal.cast;

import android.os.Handler;
import android.os.Looper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class zzbn {
    private static final Logger zza = new Logger("SessionTransController");
    private final CastOptions zzb;
    private SessionManager zzg;
    private CallbackToFutureAdapter.Completer zzh;
    private SessionState zzi;
    private final Set zzc = DesugarCollections.synchronizedSet(new HashSet());
    private int zzf = 0;
    private final Handler zzd = new zzed(Looper.getMainLooper());
    private final Runnable zze = new Runnable() { // from class: com.google.android.gms.internal.cast.zzbj
        @Override // java.lang.Runnable
        public final void run() {
            zzbn.zze(this.zza);
        }
    };

    public zzbn(CastOptions castOptions) {
        this.zzb = castOptions;
    }

    public static /* synthetic */ void zze(zzbn zzbnVar) {
        zza.m340i("transfer with type = %d has timed out", Integer.valueOf(zzbnVar.zzf));
        zzbnVar.zzp(101);
    }

    public static /* synthetic */ void zzf(zzbn zzbnVar, SessionState sessionState) {
        zzbnVar.zzi = sessionState;
        CallbackToFutureAdapter.Completer completer = zzbnVar.zzh;
        if (completer != null) {
            completer.set(null);
        }
    }

    static /* bridge */ /* synthetic */ void zzg(zzbn zzbnVar) {
        int i = zzbnVar.zzf;
        if (i == 0) {
            zza.m336d("No need to notify transferred if the transfer type is unknown", new Object[0]);
            return;
        }
        SessionState sessionState = zzbnVar.zzi;
        if (sessionState == null) {
            zza.m336d("No need to notify with null sessionState", new Object[0]);
            return;
        }
        zza.m336d("notify transferred with type = %d, sessionState = %s", Integer.valueOf(i), zzbnVar.zzi);
        Iterator it = new HashSet(zzbnVar.zzc).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferred(zzbnVar.zzf, sessionState);
        }
    }

    static /* bridge */ /* synthetic */ void zzi(zzbn zzbnVar) {
        if (zzbnVar.zzi == null) {
            zza.m336d("skip restoring session state due to null SessionState", new Object[0]);
            return;
        }
        RemoteMediaClient remoteMediaClientZzo = zzbnVar.zzo();
        if (remoteMediaClientZzo == null) {
            zza.m336d("skip restoring session state due to null RemoteMediaClient", new Object[0]);
        } else {
            zza.m336d("resume SessionState to current session", new Object[0]);
            remoteMediaClientZzo.zzr(zzbnVar.zzi);
        }
    }

    private final RemoteMediaClient zzo() {
        SessionManager sessionManager = this.zzg;
        if (sessionManager == null) {
            zza.m336d("skip transferring as SessionManager is null", new Object[0]);
            return null;
        }
        CastSession currentCastSession = sessionManager.getCurrentCastSession();
        if (currentCastSession != null) {
            return currentCastSession.getRemoteMediaClient();
        }
        zza.m336d("skip transferring as CastSession is null", new Object[0]);
        return null;
    }

    private final void zzp(int i) {
        CallbackToFutureAdapter.Completer completer = this.zzh;
        if (completer != null) {
            completer.setCancelled();
        }
        zza.m336d("notify failed transfer with type = %d, reason = %d", Integer.valueOf(this.zzf), Integer.valueOf(i));
        Iterator it = new HashSet(this.zzc).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferFailed(this.zzf, i);
        }
        zzq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzq() {
        ((Handler) Preconditions.checkNotNull(this.zzd)).removeCallbacks((Runnable) Preconditions.checkNotNull(this.zze));
        this.zzf = 0;
        this.zzi = null;
    }

    public final void zzj(SessionManager sessionManager) {
        this.zzg = sessionManager;
        ((Handler) Preconditions.checkNotNull(this.zzd)).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbk
            @Override // java.lang.Runnable
            public final void run() {
                zzbn zzbnVar = this.zza;
                ((SessionManager) Preconditions.checkNotNull(zzbnVar.zzg)).addSessionManagerListener(new zzbm(zzbnVar, null), CastSession.class);
            }
        });
    }

    final /* synthetic */ void zzk(Exception exc) {
        zza.m342w(exc, "Fail to store SessionState", new Object[0]);
        zzp(100);
    }

    public final void zzl(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, CallbackToFutureAdapter.Completer completer) {
        int i;
        if (new HashSet(this.zzc).isEmpty()) {
            zza.m336d("No need to prepare transfer without any callback", new Object[0]);
            completer.set(null);
            return;
        }
        if (routeInfo.getPlaybackType() != 1) {
            zza.m336d("No need to prepare transfer when transferring from local", new Object[0]);
            completer.set(null);
            return;
        }
        RemoteMediaClient remoteMediaClientZzo = zzo();
        if (remoteMediaClientZzo == null || !remoteMediaClientZzo.hasMediaSession()) {
            zza.m336d("No need to prepare transfer when there is no media session", new Object[0]);
            completer.set(null);
            return;
        }
        Logger logger = zza;
        logger.m336d("Prepare route transfer for changing endpoint", new Object[0]);
        if (routeInfo2.getPlaybackType() == 0) {
            zzo.zzd(zzml.CAST_TRANSFER_TO_LOCAL_USED);
            i = 1;
        } else {
            i = CastDevice.getFromBundle(routeInfo2.getExtras()) == null ? 3 : 2;
        }
        this.zzf = i;
        this.zzh = completer;
        logger.m336d("notify transferring with type = %d", Integer.valueOf(i));
        Iterator it = new HashSet(this.zzc).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferring(this.zzf);
        }
        this.zzi = null;
        remoteMediaClientZzo.zzk(null).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzbh
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(Object obj) {
                zzbn.zzf(this.zza, (SessionState) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.internal.cast.zzbi
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                this.zza.zzk(exc);
            }
        });
        ((Handler) Preconditions.checkNotNull(this.zzd)).postDelayed((Runnable) Preconditions.checkNotNull(this.zze), 10000L);
    }

    public final void zzm(SessionTransferCallback sessionTransferCallback) {
        zza.m336d("register callback = %s", sessionTransferCallback);
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(sessionTransferCallback);
        this.zzc.add(sessionTransferCallback);
    }
}
