package com.google.android.gms.internal.cast;

import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.RouteListingPreference;
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
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
@TargetApi(30)
public final class zzce {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzb = new Logger("SessionTransController");
    private final CastOptions zzc;
    private boolean zzh;
    private SessionManager zzi;
    private CallbackToFutureAdapter.Completer zzj;
    private SessionState zzk;
    private final Set zzd = Collections.synchronizedSet(new HashSet());
    private int zzg = 0;
    private final Handler zze = new zzfk(Looper.getMainLooper());
    private final Runnable zzf = new Runnable() { // from class: com.google.android.gms.internal.cast.zzcd
        @Override // java.lang.Runnable
        public final /* synthetic */ void run() {
            this.zza.zzh();
        }
    };

    public zzce(CastOptions castOptions) {
        this.zzc = castOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public final void zzl() {
        ((Handler) Preconditions.checkNotNull(this.zze)).removeCallbacks((Runnable) Preconditions.checkNotNull(this.zzf));
        this.zzg = 0;
        this.zzk = null;
    }

    private final void zzr(int i) {
        CallbackToFutureAdapter.Completer completer = this.zzj;
        if (completer != null) {
            completer.setCancelled();
        }
        zzb.m287d("notify failed transfer with type = %d, reason = %d", Integer.valueOf(this.zzg), Integer.valueOf(i));
        Iterator it = new HashSet(this.zzd).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferFailed(this.zzg, i);
        }
        zzl();
    }

    private final RemoteMediaClient zzs() {
        SessionManager sessionManager = this.zzi;
        if (sessionManager == null) {
            zzb.m287d("skip transferring as SessionManager is null", new Object[0]);
            return null;
        }
        CastSession currentCastSession = sessionManager.getCurrentCastSession();
        if (currentCastSession != null) {
            return currentCastSession.getRemoteMediaClient();
        }
        zzb.m287d("skip transferring as CastSession is null", new Object[0]);
        return null;
    }

    public final void zza(SessionManager sessionManager) {
        this.zzi = sessionManager;
        ((Handler) Preconditions.checkNotNull(this.zze)).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzca
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzi();
            }
        });
    }

    public final void zzb(boolean z) {
        this.zzh = z;
    }

    public final void zzc(SessionTransferCallback sessionTransferCallback) {
        zzb.m287d("register callback = %s", sessionTransferCallback);
        Preconditions.checkMainThread("Must be called from the main thread.");
        Preconditions.checkNotNull(sessionTransferCallback);
        this.zzd.add(sessionTransferCallback);
    }

    public final void zzd(SessionTransferCallback sessionTransferCallback) {
        zzb.m287d("unregister callback = %s", sessionTransferCallback);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (sessionTransferCallback != null) {
            this.zzd.remove(sessionTransferCallback);
        }
    }

    public final void zze(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, CallbackToFutureAdapter.Completer completer) {
        Set set = this.zzd;
        if (new HashSet(set).isEmpty()) {
            zzb.m287d("No need to prepare transfer without any callback", new Object[0]);
            completer.set(null);
            return;
        }
        int i = 1;
        if (routeInfo.getPlaybackType() != 1) {
            zzb.m287d("No need to prepare transfer when transferring from local", new Object[0]);
            completer.set(null);
            return;
        }
        RemoteMediaClient remoteMediaClientZzs = zzs();
        if (remoteMediaClientZzs == null || !remoteMediaClientZzs.hasMediaSession()) {
            zzb.m287d("No need to prepare transfer when there is no media session", new Object[0]);
            completer.set(null);
            return;
        }
        Logger logger = zzb;
        logger.m287d("Prepare route transfer for changing endpoint", new Object[0]);
        if (routeInfo2.getPlaybackType() == 0) {
            zzr.zzb(zzpm.CAST_TRANSFER_TO_LOCAL_USED);
        } else {
            i = CastDevice.getFromBundle(routeInfo2.getExtras()) == null ? 3 : 2;
        }
        this.zzg = i;
        this.zzj = completer;
        logger.m287d("notify transferring with type = %d", Integer.valueOf(i));
        Iterator it = new HashSet(set).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferring(this.zzg);
        }
        this.zzk = null;
        remoteMediaClientZzs.zzf(null).addOnSuccessListener(new OnSuccessListener() { // from class: com.google.android.gms.internal.cast.zzcb
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final /* synthetic */ void onSuccess(Object obj) {
                this.zza.zzj((SessionState) obj);
            }
        }).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.internal.cast.zzcc
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                this.zza.zzk(exc);
            }
        });
        ((Handler) Preconditions.checkNotNull(this.zze)).postDelayed((Runnable) Preconditions.checkNotNull(this.zzf), 20000L);
    }

    public final void zzf(MediaRouter mediaRouter) {
        if (zzg()) {
            SessionManager sessionManager = this.zzi;
            if ((sessionManager != null ? sessionManager.getCurrentCastSession() : null) == null) {
                mediaRouter.setRouteListingPreference(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (MediaRouter.RouteInfo routeInfo : mediaRouter.getRoutes()) {
                if (CastDevice.getFromBundle(routeInfo.getExtras()) != null) {
                    arrayList.add(new RouteListingPreference.Item.Builder(routeInfo.getId()).setFlags(0).build());
                }
            }
            zzb.m287d("updateRouteListingPreference with %d available routes", Integer.valueOf(arrayList.size()));
            mediaRouter.setRouteListingPreference(new RouteListingPreference.Builder().setItems(arrayList).build());
        }
    }

    public final boolean zzg() {
        return this.zzh && this.zzc.zzj();
    }

    public final /* synthetic */ void zzh() {
        zzb.m291i("transfer with type = %d has timed out", Integer.valueOf(this.zzg));
        zzr(101);
    }

    public final /* synthetic */ void zzi() {
        ((SessionManager) Preconditions.checkNotNull(this.zzi)).addSessionManagerListener(new zzbz(this, null), CastSession.class);
    }

    public final /* synthetic */ void zzj(SessionState sessionState) {
        this.zzk = sessionState;
        CallbackToFutureAdapter.Completer completer = this.zzj;
        if (completer != null) {
            completer.set(null);
        }
    }

    public final /* synthetic */ void zzk(Exception exc) {
        zzb.m295w(exc, "Fail to store SessionState", new Object[0]);
        zzr(100);
    }

    public final /* synthetic */ void zzm() {
        int i = this.zzg;
        if (i == 0) {
            zzb.m287d("No need to notify transferred if the transfer type is unknown", new Object[0]);
            return;
        }
        SessionState sessionState = this.zzk;
        if (sessionState == null) {
            zzb.m287d("No need to notify with null sessionState", new Object[0]);
            return;
        }
        zzb.m287d("notify transferred with type = %d, sessionState = %s", Integer.valueOf(i), this.zzk);
        Iterator it = new HashSet(this.zzd).iterator();
        while (it.hasNext()) {
            ((SessionTransferCallback) it.next()).onTransferred(this.zzg, sessionState);
        }
    }

    public final /* synthetic */ void zzn() {
        if (this.zzk == null) {
            zzb.m287d("skip restoring session state due to null SessionState", new Object[0]);
            return;
        }
        RemoteMediaClient remoteMediaClientZzs = zzs();
        if (remoteMediaClientZzs == null) {
            zzb.m287d("skip restoring session state due to null RemoteMediaClient", new Object[0]);
        } else {
            zzb.m287d("resume SessionState to current session", new Object[0]);
            remoteMediaClientZzs.zzg(this.zzk);
        }
    }

    public final /* synthetic */ int zzp() {
        return this.zzg;
    }
}
