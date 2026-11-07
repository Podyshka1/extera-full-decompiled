package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastDevice;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzed extends MediaRouter.Callback {
    final /* synthetic */ zzee zza;

    public /* synthetic */ zzed(zzee zzeeVar, byte[] bArr) {
        Objects.requireNonNull(zzeeVar);
        this.zza = zzeeVar;
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzee.zzb.m311d("RemoteConnectionMediaRouterCallback.onRouteAdded.", new Object[0]);
        this.zza.zzf(routeInfo.getExtras());
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzee.zzb.m311d("RemoteConnectionMediaRouterCallback.onRouteChanged.", new Object[0]);
        this.zza.zzf(routeInfo.getExtras());
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        CastDevice fromBundle;
        zzee.zzb.m311d("RemoteConnectionMediaRouterCallback.onRouteRemoved.", new Object[0]);
        Bundle extras = routeInfo.getExtras();
        if (extras == null || (fromBundle = CastDevice.getFromBundle(extras)) == null) {
            return;
        }
        extras.getString("com.google.android.gms.cast.EXTRA_RUNNING_RECEIVER_APP_ID");
        zzee zzeeVar = this.zza;
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(zzeeVar.zzi().get(fromBundle.getDeviceId()));
        zzeeVar.zzg(fromBundle);
    }
}
