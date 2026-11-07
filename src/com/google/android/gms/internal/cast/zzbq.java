package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Looper;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.internal.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbq extends MediaRouter.Callback {
    private static final Logger zzb = new Logger("MRDiscoveryCallback");
    private final zzby zzf;
    private final Map zzd = Collections.synchronizedMap(new HashMap());
    private final LinkedHashSet zze = new LinkedHashSet();
    private final Set zzc = Collections.synchronizedSet(new LinkedHashSet());
    public final zzbn zza = new zzbn(this);

    public zzbq(Context context) {
        this.zzf = new zzby(context);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m311d("MediaRouterDiscoveryCallback.onRouteAdded.", new Object[0]);
        zza(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m311d("MediaRouterDiscoveryCallback.onRouteChanged.", new Object[0]);
        zza(routeInfo, true);
    }

    @Override // androidx.mediarouter.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        zzb.m311d("MediaRouterDiscoveryCallback.onRouteRemoved.", new Object[0]);
        zza(routeInfo, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0189, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0190, code lost:
    
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zza(MediaRouter.RouteInfo routeInfo, boolean z) {
        boolean z2;
        boolean zRemove;
        Logger logger = zzb;
        logger.m311d("MediaRouterDiscoveryCallback.updateRouteToAppIds (add=%b) route %s", Boolean.valueOf(z), routeInfo);
        Map map = this.zzd;
        synchronized (map) {
            try {
                String strValueOf = String.valueOf(map.keySet());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 45);
                sb.append("appIdToRouteInfo has these appId route keys: ");
                sb.append(strValueOf);
                logger.m311d(sb.toString(), new Object[0]);
                z2 = false;
                for (Map.Entry entry : map.entrySet()) {
                    String str = (String) entry.getKey();
                    zzbm zzbmVar = (zzbm) entry.getValue();
                    if (routeInfo.matchesSelector(zzbmVar.zzb)) {
                        if (z) {
                            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 32);
                            sb2.append("Adding/updating route for appId ");
                            sb2.append(str);
                            logger.m311d(sb2.toString(), new Object[0]);
                            zRemove = zzbmVar.zza.add(routeInfo);
                            if (!zRemove) {
                                String strValueOf2 = String.valueOf(routeInfo);
                                StringBuilder sb3 = new StringBuilder(strValueOf2.length() + 32 + String.valueOf(str).length());
                                sb3.append("Route ");
                                sb3.append(strValueOf2);
                                sb3.append(" already exists for appId ");
                                sb3.append(str);
                                logger.m318w(sb3.toString(), new Object[0]);
                            }
                        } else {
                            StringBuilder sb4 = new StringBuilder(String.valueOf(str).length() + 25);
                            sb4.append("Removing route for appId ");
                            sb4.append(str);
                            logger.m311d(sb4.toString(), new Object[0]);
                            zRemove = zzbmVar.zza.remove(routeInfo);
                            if (!zRemove) {
                                String strValueOf3 = String.valueOf(routeInfo);
                                StringBuilder sb5 = new StringBuilder(strValueOf3.length() + 34 + String.valueOf(str).length());
                                sb5.append("Route ");
                                sb5.append(strValueOf3);
                                sb5.append(" already removed from appId ");
                                sb5.append(str);
                                logger.m318w(sb5.toString(), new Object[0]);
                            }
                        }
                        z2 = zRemove;
                    }
                }
            } finally {
            }
        }
        if (z2) {
            zzb.m311d("Invoking callback.onRouteUpdated.", new Object[0]);
            synchronized (this.zzc) {
                try {
                    HashMap map2 = new HashMap();
                    Map map3 = this.zzd;
                    synchronized (map3) {
                        for (String str2 : map3.keySet()) {
                            zzbm zzbmVar2 = (zzbm) map3.get(zzhb.zza(str2));
                            zzhz zzhzVarZzh = zzbmVar2 == null ? zzhz.zzh() : zzhz.zzj(zzbmVar2.zza);
                            if (!zzhzVarZzh.isEmpty()) {
                                map2.put(str2, zzhzVarZzh);
                            }
                        }
                    }
                    zzhy.zzb(map2.entrySet());
                    Iterator it = this.zzc.iterator();
                    while (it.hasNext()) {
                        ((com.google.android.gms.cast.framework.zzbf) it.next()).zza();
                    }
                } finally {
                }
            }
        }
    }

    public final void zzb() {
        zzb.m311d("Stopping RouteDiscovery.", new Object[0]);
        this.zzd.clear();
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zzf.zzc(this);
        } else {
            new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbp
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zzc();
                }
            });
        }
    }

    public final void zzc() {
        this.zzf.zzc(this);
    }

    public final void zzd() {
        LinkedHashSet linkedHashSet = this.zze;
        Logger logger = zzb;
        int size = linkedHashSet.size();
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 33);
        sb.append("Starting RouteDiscovery with ");
        sb.append(size);
        sb.append(" IDs");
        logger.m311d(sb.toString(), new Object[0]);
        logger.m311d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(this.zzd.keySet())), new Object[0]);
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zze();
        } else {
            new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbo
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    this.zza.zze();
                }
            });
        }
    }

    public final void zze() {
        zzby zzbyVar = this.zzf;
        zzbyVar.zzc(this);
        LinkedHashSet<String> linkedHashSet = this.zze;
        synchronized (linkedHashSet) {
            try {
                for (String str : linkedHashSet) {
                    MediaRouteSelector mediaRouteSelectorBuild = new MediaRouteSelector.Builder().addControlCategory(CastMediaControlIntent.categoryForCast(str)).build();
                    Map map = this.zzd;
                    if (((zzbm) map.get(str)) == null) {
                        map.put(str, new zzbm(mediaRouteSelectorBuild));
                    }
                    Logger logger = zzb;
                    String strCategoryForCast = CastMediaControlIntent.categoryForCast(str);
                    StringBuilder sb = new StringBuilder(strCategoryForCast.length() + 49);
                    sb.append("Adding mediaRouter callback for control category ");
                    sb.append(strCategoryForCast);
                    logger.m311d(sb.toString(), new Object[0]);
                    zzbyVar.zzb(mediaRouteSelectorBuild, this, 4);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Map map2 = this.zzd;
        zzb.m311d("appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map2.keySet())), new Object[0]);
    }

    public final void zzf(List list) {
        Logger logger = zzb;
        int size = list.size();
        StringBuilder sb = new StringBuilder(String.valueOf(size).length() + 26);
        sb.append("SetRouteDiscovery for ");
        sb.append(size);
        sb.append(" IDs");
        logger.m311d(sb.toString(), new Object[0]);
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(zzhb.zza((String) it.next()));
        }
        Map map = this.zzd;
        logger.m311d("resetting routes. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
        HashMap map2 = new HashMap();
        synchronized (map) {
            try {
                for (String str : linkedHashSet) {
                    zzbm zzbmVar = (zzbm) map.get(zzhb.zza(str));
                    if (zzbmVar != null) {
                        map2.put(str, zzbmVar);
                    }
                }
                map.clear();
                map.putAll(map2);
            } catch (Throwable th) {
                throw th;
            }
        }
        logger.m311d("Routes reset. appIdToRouteInfo has these appId route keys: ".concat(String.valueOf(map.keySet())), new Object[0]);
        LinkedHashSet linkedHashSet2 = this.zze;
        synchronized (linkedHashSet2) {
            linkedHashSet2.clear();
            linkedHashSet2.addAll(linkedHashSet);
        }
        zzd();
    }
}
