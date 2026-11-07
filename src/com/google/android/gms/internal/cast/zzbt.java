package com.google.android.gms.internal.cast;

import android.os.Handler;
import android.os.Looper;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbt implements MediaRouter.OnPrepareTransferListener {
    private static final Logger zza = new Logger("MediaRouterOPTListener");
    private final zzce zzb;
    private final Handler zzc = new zzfk(Looper.getMainLooper());

    public zzbt(zzce zzceVar) {
        this.zzb = (zzce) Preconditions.checkNotNull(zzceVar);
    }

    @Override // androidx.mediarouter.media.MediaRouter.OnPrepareTransferListener
    public final ListenableFuture onPrepareTransfer(final MediaRouter.RouteInfo routeInfo, final MediaRouter.RouteInfo routeInfo2) {
        zza.m311d("Prepare transfer from Route(%s) to Route(%s)", routeInfo, routeInfo2);
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: com.google.android.gms.internal.cast.zzbs
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final /* synthetic */ Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.zza.zza(routeInfo, routeInfo2, completer);
            }
        });
    }

    public final /* synthetic */ Object zza(final MediaRouter.RouteInfo routeInfo, final MediaRouter.RouteInfo routeInfo2, final CallbackToFutureAdapter.Completer completer) {
        return Boolean.valueOf(this.zzc.post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzb(routeInfo, routeInfo2, completer);
            }
        }));
    }

    public final /* synthetic */ void zzb(MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, CallbackToFutureAdapter.Completer completer) {
        this.zzb.zze(routeInfo, routeInfo2, completer);
    }
}
