package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;
import androidx.mediarouter.media.MediaTransferReceiver;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbx extends zzbd {
    private static final Logger zza = new Logger("MediaRouterProxy");
    private final MediaRouter zzb;
    private final CastOptions zzc;
    private final Map zzd = new HashMap();
    private zzce zze;
    private boolean zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;
    private MediaRouterParams zzj;

    public zzbx(Context context, MediaRouter mediaRouter, CastOptions castOptions, com.google.android.gms.cast.internal.zzn zznVar) {
        this.zzb = mediaRouter;
        this.zzc = castOptions;
        if (PlatformVersion.isAtLeastT()) {
            zza.m282d("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
            this.zze = new zzce(castOptions);
            new Intent(context, (Class<?>) MediaTransferReceiver.class).setPackage(context.getPackageName());
            this.zzf = !context.getPackageManager().queryBroadcastReceivers(r5, 0).isEmpty();
            this.zzg = true;
            this.zzh = true;
            zznVar.zzb(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED", "com.google.android.gms.cast.FLAG_SHOW_SYSTEM_OUTPUT_SWITCHER_ON_CAST_ICON_CLICK"}).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.internal.cast.zzbw
                @Override // com.google.android.gms.tasks.OnCompleteListener
                public final /* synthetic */ void onComplete(Task task) {
                    this.zza.zzw(task);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzA, reason: merged with bridge method [inline-methods] */
    public final void zzy(MediaRouteSelector mediaRouteSelector) {
        Set set = (Set) this.zzd.get(mediaRouteSelector);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.removeCallback((MediaRouter.Callback) it.next());
        }
    }

    private final void zzz(MediaRouteSelector mediaRouteSelector, int i) {
        Set set = (Set) this.zzd.get(mediaRouteSelector);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.addCallback(mediaRouteSelector, (MediaRouter.Callback) it.next(), i);
        }
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzb(Bundle bundle, zzbg zzbgVar) {
        MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        Map map = this.zzd;
        if (!map.containsKey(mediaRouteSelectorFromBundle)) {
            map.put(mediaRouteSelectorFromBundle, new HashSet());
        }
        ((Set) map.get(mediaRouteSelectorFromBundle)).add(new zzbl(zzbgVar, this, this.zze));
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzc(Bundle bundle, final int i) {
        final MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzz(mediaRouteSelectorFromBundle, i);
        } else {
            new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbu
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zzx(mediaRouteSelectorFromBundle, i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzd(Bundle bundle) {
        final MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzy(mediaRouteSelectorFromBundle);
        } else {
            new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbv
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zzy(mediaRouteSelectorFromBundle);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final boolean zze(Bundle bundle, int i) {
        MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return false;
        }
        return this.zzb.isRouteAvailable(mediaRouteSelectorFromBundle, i);
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzf(String str) {
        Logger logger = zza;
        logger.m282d("select route with routeId = %s", str);
        MediaRouter mediaRouter = this.zzb;
        for (MediaRouter.RouteInfo routeInfo : mediaRouter.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                logger.m282d("media route is found and selected", new Object[0]);
                mediaRouter.selectRoute(routeInfo);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzg() {
        MediaRouter mediaRouter = this.zzb;
        mediaRouter.selectRoute(mediaRouter.getDefaultRoute());
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final boolean zzh() {
        MediaRouter mediaRouter = this.zzb;
        MediaRouter.RouteInfo defaultRoute = mediaRouter.getDefaultRoute();
        return defaultRoute != null && mediaRouter.getSelectedRoute().getId().equals(defaultRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final Bundle zzi(String str) {
        for (MediaRouter.RouteInfo routeInfo : this.zzb.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                return routeInfo.getExtras();
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final String zzj() {
        return this.zzb.getSelectedRoute().getId();
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzk() {
        Map map = this.zzd;
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((Set) it.next()).iterator();
            while (it2.hasNext()) {
                this.zzb.removeCallback((MediaRouter.Callback) it2.next());
            }
        }
        map.clear();
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final boolean zzl() {
        MediaRouter mediaRouter = this.zzb;
        MediaRouter.RouteInfo bluetoothRoute = mediaRouter.getBluetoothRoute();
        return bluetoothRoute != null && mediaRouter.getSelectedRoute().getId().equals(bluetoothRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzm(int i) {
        this.zzb.unselect(i);
    }

    @Override // com.google.android.gms.internal.cast.zzbe
    public final void zzn(String str) {
        MediaRouter mediaRouter = this.zzb;
        for (MediaRouter.GroupRouteInfo groupRouteInfo : mediaRouter.getConnectedGroupRoutes()) {
            if (groupRouteInfo.getId().equals(str)) {
                zza.m282d("clean up the connectedGroupRoute = %s", groupRouteInfo);
                groupRouteInfo.disconnect();
            }
        }
        MediaRouter.RouteInfo selectedRoute = mediaRouter.getSelectedRoute();
        if (selectedRoute == null || selectedRoute.isSystemRoute() || !selectedRoute.getId().equals(str)) {
            return;
        }
        zza.m282d("clean up the selected route = %s", selectedRoute);
        mediaRouter.unselect(0);
    }

    public final boolean zzo() {
        CastOptions castOptions;
        return this.zzf && this.zzg && (castOptions = this.zzc) != null && castOptions.zzh();
    }

    public final void zzp(boolean z) {
        this.zzi = z;
    }

    public final boolean zzq() {
        return this.zzi;
    }

    public final void zzr(Boolean bool, Boolean bool2) {
        MediaRouterParams mediaRouterParams;
        MediaRouterParams mediaRouterParams2;
        boolean z = false;
        if (!PlatformVersion.isAtLeastT()) {
            zza.m286i("updateMediaRouterParams - not allowed on Android S and below", new Object[0]);
            return;
        }
        MediaRouter mediaRouter = this.zzb;
        if (mediaRouter == null || (mediaRouterParams = this.zzj) == null) {
            zza.m284e("updateMediaRouterParams - %s must not be null", mediaRouter == null ? "mediaRouter" : "routerParams");
            return;
        }
        MediaRouterParams.Builder builder = new MediaRouterParams.Builder(mediaRouterParams);
        boolean z2 = true;
        if (bool != null) {
            boolean z3 = this.zzh && bool.booleanValue();
            if (this.zzj.isOutputSwitcherEnabled() != z3) {
                builder = builder.setOutputSwitcherEnabled(z3);
                z = true;
            }
        }
        if (bool2 == null || (mediaRouterParams2 = this.zzj) == null || mediaRouterParams2.isTransferToLocalEnabled() == bool2.booleanValue()) {
            z2 = z;
        } else {
            builder = builder.setTransferToLocalEnabled(bool2.booleanValue());
        }
        if (z2) {
            MediaRouterParams mediaRouterParamsBuild = builder.build();
            this.zzj = mediaRouterParamsBuild;
            mediaRouter.setRouterParams(mediaRouterParamsBuild);
        }
    }

    public final void zzs(SessionTransferCallback sessionTransferCallback) {
        zzce zzceVar = this.zze;
        if (zzceVar != null) {
            zzceVar.zzc(sessionTransferCallback);
            this.zzb.setOnPrepareTransferListener(new zzbt((zzce) Preconditions.checkNotNull(this.zze)));
        }
    }

    public final void zzt(SessionTransferCallback sessionTransferCallback) {
        zzce zzceVar = this.zze;
        if (zzceVar != null) {
            zzceVar.zzd(sessionTransferCallback);
            this.zzb.setOnPrepareTransferListener(null);
        }
    }

    public final zzce zzu() {
        return this.zze;
    }

    public final void zzv(MediaSessionCompat mediaSessionCompat) {
        this.zzb.setMediaSessionCompat(mediaSessionCompat);
    }

    public final /* synthetic */ void zzw(Task task) {
        CastOptions castOptions;
        if (task.isSuccessful()) {
            Bundle bundle = (Bundle) task.getResult();
            if (bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED")) {
                boolean z = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
                this.zzg = z;
                zza.m282d("The module-to-client output switcher flag value is %b", Boolean.valueOf(z));
            }
            if (bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_SHOW_SYSTEM_OUTPUT_SWITCHER_ON_CAST_ICON_CLICK")) {
                boolean z2 = bundle.getBoolean("com.google.android.gms.cast.FLAG_SHOW_SYSTEM_OUTPUT_SWITCHER_ON_CAST_ICON_CLICK");
                this.zzh = z2;
                zza.m282d("The module-to-client show system output switcher on cast icon click flag value is %b", Boolean.valueOf(z2));
            }
        }
        boolean z3 = this.zzg;
        boolean z4 = this.zzh;
        MediaRouter mediaRouter = this.zzb;
        if (mediaRouter == null || (castOptions = this.zzc) == null) {
            return;
        }
        boolean zZzf = castOptions.zzf();
        boolean z5 = z4 && castOptions.getShowSystemOutputSwitcherOnCastIconClick();
        boolean z6 = z3 && castOptions.zzh();
        MediaRouterParams mediaRouterParamsBuild = new MediaRouterParams.Builder().setMediaTransferReceiverEnabled(z6).setTransferToLocalEnabled(zZzf).setOutputSwitcherEnabled(z5).setMediaTransferRestrictedToSelfProviders(castOptions.zzk()).build();
        this.zzj = mediaRouterParamsBuild;
        mediaRouter.setRouterParams(mediaRouterParamsBuild);
        zza.m286i("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(this.zzf), Boolean.valueOf(z6), Boolean.valueOf(zZzf), Boolean.valueOf(z5));
        zzce zzceVar = this.zze;
        if (zzceVar != null) {
            zzceVar.zzb(this.zzf && z6);
        }
        if (this.zzf && z6) {
            zzr.zzb(zzpm.CAST_OUTPUT_SWITCHER_ENABLED);
        }
        if (zZzf) {
            zzr.zzb(zzpm.CAST_TRANSFER_TO_LOCAL_ENABLED);
        }
    }

    public final /* synthetic */ void zzx(MediaRouteSelector mediaRouteSelector, int i) {
        synchronized (this.zzd) {
            zzz(mediaRouteSelector, i);
        }
    }
}
