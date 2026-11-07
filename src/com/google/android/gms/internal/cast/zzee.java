package com.google.android.gms.internal.cast;

import android.content.Context;
import android.os.Bundle;
import android.os.PowerManager;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.mediarouter.media.MediaRouteSelector;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastMediaControlIntent;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.internal.Logger;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class zzee {
    private static zzee zza;
    private static final Logger zzb = new Logger("RemoteConnectionManager");
    private final CastOptions zzc;
    private final zzax zzd;
    private final zzby zze;
    private final zzeb zzh;
    private final Map zzi;
    private final Map zzj;
    private final PowerManager zzk;
    private boolean zzn;
    private final Object zzl = new Object();
    private final Object zzm = new Object();
    private final Set zzg = Collections.newSetFromMap(new ConcurrentHashMap());
    private final zzed zzf = new zzed(this, null);

    private zzee(Context context, CastOptions castOptions, zzax zzaxVar, zzby zzbyVar) {
        this.zzc = castOptions;
        this.zze = zzbyVar;
        zzeb zzebVar = new zzeb(this, null);
        this.zzh = zzebVar;
        this.zzd = zzaxVar;
        zzaxVar.zzf(zzebVar);
        this.zzi = new ConcurrentHashMap();
        this.zzj = new ConcurrentHashMap();
        this.zzk = (PowerManager) context.getSystemService("power");
        new zzec(this, null);
    }

    public static zzee zza(Context context, CastOptions castOptions, zzax zzaxVar) {
        if (zza == null) {
            zza = new zzee(context, castOptions, zzaxVar, new zzby(context));
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzj, reason: merged with bridge method [inline-methods] */
    public final void zzg(CastDevice castDevice) {
        if (((zzea) this.zzj.remove(castDevice.getDeviceId())) != null) {
            synchronized (this.zzl) {
                try {
                    Iterator it = this.zzg.iterator();
                    if (it.hasNext()) {
                        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                        throw null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void zzb(com.google.android.gms.cast.framework.zzq zzqVar) {
        synchronized (this.zzm) {
            try {
                Iterator it = this.zzi.entrySet().iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(((Map.Entry) it.next()).getValue());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzc() {
        synchronized (this.zzm) {
            try {
                Iterator it = this.zzi.values().iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    this.zzd.zze();
                    PowerManager powerManager = this.zzk;
                    if (powerManager != null) {
                        powerManager.isInteractive();
                    }
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zzd() {
        synchronized (this.zzm) {
            try {
                Iterator it = this.zzi.values().iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ void zze() {
        MediaRouteSelector mediaRouteSelectorBuild;
        boolean zIsEmpty = this.zzg.isEmpty();
        if (this.zzd.zze() || zIsEmpty) {
            if (this.zzn) {
                this.zzn = false;
                zzb.m287d("Stopping RemoteConnectionManager discovery.", new Object[0]);
                this.zze.zzc(this.zzf);
                return;
            }
            return;
        }
        if (this.zzn) {
            return;
        }
        Logger logger = zzb;
        logger.m287d("Starting RemoteConnectionManager discovery.", new Object[0]);
        zzby zzbyVar = this.zze;
        zzed zzedVar = this.zzf;
        zzbyVar.zzc(zzedVar);
        String receiverApplicationId = this.zzc.getReceiverApplicationId();
        if (receiverApplicationId.isEmpty()) {
            logger.m287d("Failed to create MediaRouteSelector. No target receiver app ID has been set.", new Object[0]);
            mediaRouteSelectorBuild = null;
        } else {
            mediaRouteSelectorBuild = new MediaRouteSelector.Builder().addControlCategory(CastMediaControlIntent.categoryForCast(receiverApplicationId)).build();
        }
        if (mediaRouteSelectorBuild == null) {
            logger.m287d("Skipping starting discovery. No target receiver app ID has been set.", new Object[0]);
            return;
        }
        this.zzn = true;
        logger.m287d("Adding mediaRouter callback for control category ".concat(String.valueOf(mediaRouteSelectorBuild.getControlCategories())), new Object[0]);
        zzbyVar.zzb(mediaRouteSelectorBuild, zzedVar, 4);
    }

    public final /* synthetic */ void zzf(Bundle bundle) {
        CastDevice fromBundle;
        if (bundle == null || (fromBundle = CastDevice.getFromBundle(bundle)) == null) {
            return;
        }
        String string = bundle.getString("com.google.android.gms.cast.EXTRA_RUNNING_RECEIVER_APP_ID");
        Map map = this.zzi;
        if (map.containsKey(fromBundle.getDeviceId())) {
            MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(map.get(fromBundle.getDeviceId()));
        }
        String receiverApplicationId = this.zzc.getReceiverApplicationId();
        if (string == null || receiverApplicationId.isEmpty() || !string.equals(receiverApplicationId)) {
            zzg(fromBundle);
            return;
        }
        Map map2 = this.zzj;
        if (map2.containsKey(fromBundle.getDeviceId())) {
        } else {
            map2.put(fromBundle.getDeviceId(), new zzea(fromBundle, string, null));
        }
        Set set = this.zzg;
        if (set.isEmpty()) {
            return;
        }
        synchronized (this.zzl) {
            try {
                Iterator it = set.iterator();
                if (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final /* synthetic */ Map zzi() {
        return this.zzi;
    }
}
