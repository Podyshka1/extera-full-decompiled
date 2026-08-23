package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Looper;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.internal.Logger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class zzay extends MediaRouter.Callback {
    private static final Logger zzb = new Logger("MRDiscoveryCallback");
    private final zzbg zzf;
    private final Map zzd = DesugarCollections.synchronizedMap(new HashMap());
    private final LinkedHashSet zze = new LinkedHashSet();
    private final Set zzc = DesugarCollections.synchronizedSet(new LinkedHashSet());
    public final zzax zza = new zzax(this);

    public zzay(Context context) {
        this.zzf = new zzbg(context);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m336d("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        zzf(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m336d("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        zzf(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m336d("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        zzf(routeInfo, false);
    }

    public final void zza(List list) {
        zzb.m336d("SetRouteDiscovery for " + list.size() + " IDs", new Object[0]);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(zzes.zza((String) it.next()));
        }
        zzb.m336d("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
        HashMap map = new HashMap();
        synchronized (this.zzd) {
            try {
                for (String str : linkedHashSet) {
                    zzaw zzawVar = (zzaw) this.zzd.get(zzes.zza(str));
                    if (zzawVar != null) {
                        map.put(str, zzawVar);
                    }
                }
                this.zzd.clear();
                this.zzd.putAll(map);
            } catch (Throwable th) {
                throw th;
            }
        }
        zzb.m336d("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
        synchronized (this.zze) {
            this.zze.clear();
            this.zze.addAll(linkedHashSet);
        }
        zzb();
    }

    final void zzb() {
        LinkedHashSet linkedHashSet = this.zze;
        Logger logger = zzb;
        logger.m336d("Starting RouteDiscovery with " + linkedHashSet.size() + " IDs", new Object[0]);
        logger.m336d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzc();
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzav
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzc();
                }
            });
        }
    }

    final void zzc() {
        this.zzf.zzb(this);
        synchronized (this.zze) {
            try {
                for (String str : this.zze) {
                    MediaRouteSelector mediaRouteSelectorBuild = new MediaRouteSelector.Builder().addControlCategory(CastMediaControlIntent.categoryForCast(str)).build();
                    if (((zzaw) this.zzd.get(str)) == null) {
                        this.zzd.put(str, new zzaw(mediaRouteSelectorBuild));
                    }
                    zzb.m336d("Adding mediaRouter callback for control category " + CastMediaControlIntent.categoryForCast(str), new Object[0]);
                    this.zzf.zza().addCallback(mediaRouteSelectorBuild, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzb.m336d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
    }

    public final void zzd() {
        zzb.m336d("Stopping RouteDiscovery.", new Object[0]);
        this.zzd.clear();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zzf.zzb(this);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzau
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zze();
                }
            });
        }
    }

    final void zze() {
        this.zzf.zzb(this);
    }

    public final void zzf(MediaRouter.RouteInfo routeInfo, boolean z) {
        boolean z2;
        boolean zRemove;
        Logger logger = zzb;
        logger.m336d("MediaRouterDiscoveryCallback.updateRouteToAppIds (add=%b) route %s", Boolean.valueOf(z), routeInfo);
        synchronized (this.zzd) {
            try {
                logger.m336d("appIdToRouteInfo has these appId route keys: " + String.valueOf(this.zzd.keySet()), new Object[0]);
                z2 = false;
                for (Map.Entry entry : this.zzd.entrySet()) {
                    String str = (String) entry.getKey();
                    zzaw zzawVar = (zzaw) entry.getValue();
                    if (routeInfo.matchesSelector(zzawVar.zzb)) {
                        if (z) {
                            Logger logger2 = zzb;
                            logger2.m336d("Adding/updating route for appId " + str, new Object[0]);
                            zRemove = zzawVar.zza.add(routeInfo);
                            if (!zRemove) {
                                logger2.m341w("Route " + String.valueOf(routeInfo) + " already exists for appId " + str, new Object[0]);
                            }
                        } else {
                            Logger logger3 = zzb;
                            logger3.m336d("Removing route for appId " + str, new Object[0]);
                            zRemove = zzawVar.zza.remove(routeInfo);
                            if (!zRemove) {
                                logger3.m341w("Route " + String.valueOf(routeInfo) + " already removed from appId " + str, new Object[0]);
                            }
                        }
                        z2 = zRemove;
                    }
                }
            } finally {
            }
        }
        if (z2) {
            zzb.m336d("Invoking callback.onRouteUpdated.", new Object[0]);
            synchronized (this.zzc) {
                try {
                    HashMap map = new HashMap();
                    synchronized (this.zzd) {
                        for (String str2 : this.zzd.keySet()) {
                            zzaw zzawVar2 = (zzaw) this.zzd.get(zzes.zza(str2));
                            zzfu zzfuVarZzk = zzawVar2 == null ? zzfu.zzk() : zzfu.zzj(zzawVar2.zza);
                            if (!zzfuVarZzk.isEmpty()) {
                                map.put(str2, zzfuVarZzk);
                            }
                        }
                    }
                    zzft.zzc(map.entrySet());
                    Iterator it = this.zzc.iterator();
                    if (it.hasNext()) {
                        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
    }
}
