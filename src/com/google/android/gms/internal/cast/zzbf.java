package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;
import androidx.mediarouter.media.MediaTransferReceiver;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class zzbf extends zzal {
    private static final Logger zza = new Logger("MediaRouterProxy");
    private final MediaRouter zzb;
    private final CastOptions zzc;
    private final Map zzd = new HashMap();
    private zzbn zze;
    private boolean zzf;

    public zzbf(Context context, MediaRouter mediaRouter, final CastOptions castOptions, com.google.android.gms.cast.internal.zzn zznVar) {
        this.zzb = mediaRouter;
        this.zzc = castOptions;
        if (Build.VERSION.SDK_INT <= 32) {
            zza.m340i("Don't need to set MediaRouterParams for Android S v2 or below", new Object[0]);
            return;
        }
        zza.m336d("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
        this.zze = new zzbn(castOptions);
        Intent intent = new Intent(context, (Class<?>) MediaTransferReceiver.class);
        intent.setPackage(context.getPackageName());
        boolean zIsEmpty = context.getPackageManager().queryBroadcastReceivers(intent, 0).isEmpty();
        this.zzf = !zIsEmpty;
        if (!zIsEmpty) {
            zzo.zzd(zzml.CAST_OUTPUT_SWITCHER_ENABLED);
        }
        zznVar.zza(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"}).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.internal.cast.zzbc
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                this.zza.zzp(castOptions, task);
            }
        });
    }

    private final void zzt(MediaRouteSelector mediaRouteSelector, int i) {
        Set set = (Set) this.zzd.get(mediaRouteSelector);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.addCallback(mediaRouteSelector, (MediaRouter.Callback) it.next(), i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final void zzq(MediaRouteSelector mediaRouteSelector) {
        Set set = (Set) this.zzd.get(mediaRouteSelector);
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zzb.removeCallback((MediaRouter.Callback) it.next());
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final Bundle zzb(String str) {
        for (MediaRouter.RouteInfo routeInfo : this.zzb.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                return routeInfo.getExtras();
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final String zzc() {
        return this.zzb.getSelectedRoute().getId();
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzd(Bundle bundle, final int i) {
        final MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzt(mediaRouteSelectorFromBundle, i);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbe
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzo(mediaRouteSelectorFromBundle, i);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zze(Bundle bundle, zzao zzaoVar) {
        MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        if (!this.zzd.containsKey(mediaRouteSelectorFromBundle)) {
            this.zzd.put(mediaRouteSelectorFromBundle, new HashSet());
        }
        ((Set) this.zzd.get(mediaRouteSelectorFromBundle)).add(new zzat(zzaoVar));
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzf() {
        Iterator it = this.zzd.values().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((Set) it.next()).iterator();
            while (it2.hasNext()) {
                this.zzb.removeCallback((MediaRouter.Callback) it2.next());
            }
        }
        this.zzd.clear();
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzg(Bundle bundle) {
        final MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            zzq(mediaRouteSelectorFromBundle);
        } else {
            new zzed(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbd
                @Override // java.lang.Runnable
                public final void run() {
                    this.zza.zzq(mediaRouteSelectorFromBundle);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzh() {
        MediaRouter mediaRouter = this.zzb;
        mediaRouter.selectRoute(mediaRouter.getDefaultRoute());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzi(String str) {
        zza.m336d("select route with routeId = %s", str);
        for (MediaRouter.RouteInfo routeInfo : this.zzb.getRoutes()) {
            if (routeInfo.getId().equals(str)) {
                zza.m336d("media route is found and selected", new Object[0]);
                this.zzb.selectRoute(routeInfo);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final void zzj(int i) {
        this.zzb.unselect(i);
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzk() {
        MediaRouter.RouteInfo bluetoothRoute = this.zzb.getBluetoothRoute();
        return bluetoothRoute != null && this.zzb.getSelectedRoute().getId().equals(bluetoothRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzl() {
        MediaRouter.RouteInfo defaultRoute = this.zzb.getDefaultRoute();
        return defaultRoute != null && this.zzb.getSelectedRoute().getId().equals(defaultRoute.getId());
    }

    @Override // com.google.android.gms.internal.cast.zzam
    public final boolean zzm(Bundle bundle, int i) {
        MediaRouteSelector mediaRouteSelectorFromBundle = MediaRouteSelector.fromBundle(bundle);
        if (mediaRouteSelectorFromBundle == null) {
            return false;
        }
        return this.zzb.isRouteAvailable(mediaRouteSelectorFromBundle, i);
    }

    public final zzbn zzn() {
        return this.zze;
    }

    final /* synthetic */ void zzo(MediaRouteSelector mediaRouteSelector, int i) {
        synchronized (this.zzd) {
            zzt(mediaRouteSelector, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final /* synthetic */ void zzp(CastOptions castOptions, Task task) {
        boolean z;
        CastOptions castOptions2;
        if (task.isSuccessful()) {
            Bundle bundle = (Bundle) task.getResult();
            boolean z2 = bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            zza.m336d("The module-to-client output switcher flag %s", true != z2 ? "not existed" : "existed");
            if (z2) {
                z = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
            }
        } else {
            z = true;
        }
        Logger logger = zza;
        logger.m340i("Set up output switcher flags: %b (from module), %b (from CastOptions)", Boolean.valueOf(z), Boolean.valueOf(castOptions.zzh()));
        boolean z3 = z && castOptions.zzh();
        MediaRouter mediaRouter = this.zzb;
        if (mediaRouter == null || (castOptions2 = this.zzc) == null) {
            return;
        }
        boolean zZzf = castOptions2.zzf();
        boolean zZze = castOptions2.zze();
        mediaRouter.setRouterParams(new MediaRouterParams.Builder().setMediaTransferReceiverEnabled(z3).setTransferToLocalEnabled(zZzf).setOutputSwitcherEnabled(zZze).build());
        logger.m340i("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(this.zzf), Boolean.valueOf(z3), Boolean.valueOf(zZzf), Boolean.valueOf(zZze));
        if (zZzf) {
            this.zzb.setOnPrepareTransferListener(new zzbb((zzbn) Preconditions.checkNotNull(this.zze)));
            zzo.zzd(zzml.CAST_TRANSFER_TO_LOCAL_ENABLED);
        }
    }

    public final void zzr(MediaSessionCompat mediaSessionCompat) {
        this.zzb.setMediaSessionCompat(mediaSessionCompat);
    }

    public final boolean zzs() {
        return this.zzf;
    }
}
