package com.google.android.gms.internal.cast;

import android.os.RemoteException;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbl extends MediaRouter.Callback {
    private static final Logger zza = new Logger("MediaRouterCallback");
    private final zzbg zzb;
    private final zzbx zzc;
    private final zzce zzd;

    public zzbl(zzbg zzbgVar, zzbx zzbxVar, zzce zzceVar) {
        this.zzb = (zzbg) Preconditions.checkNotNull(zzbgVar);
        this.zzc = zzbxVar;
        this.zzd = zzceVar;
    }

    private final void zza(MediaRouter mediaRouter) {
        zzce zzceVar = this.zzd;
        if (zzceVar != null) {
            zzceVar.zzf(mediaRouter);
        }
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        try {
            this.zzb.zzf(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteAdded", zzbg.class.getSimpleName());
        }
        zza(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        if (routeInfo.isSelected()) {
            try {
                this.zzb.zzg(routeInfo.getId(), routeInfo.getExtras());
            } catch (RemoteException e) {
                zza.m283d(e, "Unable to call %s on %s.", "onRouteChanged", zzbg.class.getSimpleName());
            }
            zza(mediaRouter);
        }
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteConnected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2) {
        if (routeInfo.getPlaybackType() != 1) {
            zza.m286i("ignore onRouteConnected for non-remote connected routeId: %s", routeInfo.getId());
            return;
        }
        zza.m286i("onRouteConnected with connectedRouteId = %s", routeInfo.getId());
        this.zzc.zzp(true);
        try {
            zzbg zzbgVar = this.zzb;
            if (zzbgVar.zze() >= 251600000) {
                zzbgVar.zzl(routeInfo2.getId(), routeInfo.getId(), routeInfo.getExtras());
            } else {
                zzbgVar.zzk(routeInfo2.getId(), routeInfo.getId(), routeInfo.getExtras());
            }
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteConnected", zzbg.class.getSimpleName());
        }
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteDisconnected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteInfo routeInfo2, int i) {
        if (routeInfo == null || routeInfo.getPlaybackType() != 1) {
            zza.m286i("ignore onRouteDisconnected for invalid or non-remote disconnected route", new Object[0]);
            return;
        }
        zza.m286i("onRouteDisconnected with disconnectedRouteId = %s, requestedRouteId = %s, reason = %d", ((MediaRouter.RouteInfo) Preconditions.checkNotNull(routeInfo)).getId(), routeInfo2.getId(), Integer.valueOf(i));
        this.zzc.zzp(false);
        try {
            zzbg zzbgVar = this.zzb;
            if (zzbgVar.zze() >= 251600000) {
                zzbgVar.zzm(routeInfo2.getId(), routeInfo.getId(), routeInfo.getExtras(), i);
            } else {
                zzbgVar.zzj(routeInfo.getId(), routeInfo.getExtras(), i);
            }
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteDisconnected", zzbg.class.getSimpleName());
        }
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        try {
            this.zzb.zzh(routeInfo.getId(), routeInfo.getExtras());
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteRemoved", zzbg.class.getSimpleName());
        }
        zza(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteSelected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, int i, MediaRouter.RouteInfo routeInfo2) {
        if (routeInfo.getPlaybackType() != 1) {
            zza.m286i("ignore onRouteSelected for non-remote selected routeId: %s", routeInfo.getId());
            return;
        }
        zza.m286i("onRouteSelected with reason = %d, routeId = %s", Integer.valueOf(i), routeInfo.getId());
        try {
            zzbg zzbgVar = this.zzb;
            if (zzbgVar.zze() >= 220400000) {
                zzbgVar.zzk(routeInfo2.getId(), routeInfo.getId(), routeInfo.getExtras());
            } else {
                zzbgVar.zzi(routeInfo2.getId(), routeInfo.getExtras());
            }
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteSelected", zzbg.class.getSimpleName());
        }
        zza(mediaRouter);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteUnselected(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, int i) {
        if (routeInfo.getPlaybackType() != 1) {
            zza.m286i("ignore onRouteUnselected for non-remote routeId: %s", routeInfo.getId());
            return;
        }
        zza.m286i("onRouteUnselected with reason = %d, routeId = %s", Integer.valueOf(i), routeInfo.getId());
        try {
            this.zzb.zzj(routeInfo.getId(), routeInfo.getExtras(), i);
        } catch (RemoteException e) {
            zza.m283d(e, "Unable to call %s on %s.", "onRouteUnselected", zzbg.class.getSimpleName());
        }
        zza(mediaRouter);
    }
}
