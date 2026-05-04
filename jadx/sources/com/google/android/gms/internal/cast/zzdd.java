package com.google.android.gms.internal.cast;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkRequest;
import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class zzdd implements zzda {
    private static final Logger zzb = new Logger("ConnectivityMonitor");
    private final zzrx zzc;
    private final ConnectivityManager zze;
    private boolean zzh;
    private final Context zzi;
    private final Object zzj = new Object();
    public final Set zza = DesugarCollections.synchronizedSet(new HashSet());
    private final Map zzf = DesugarCollections.synchronizedMap(new HashMap());
    private final List zzg = DesugarCollections.synchronizedList(new ArrayList());
    private final ConnectivityManager.NetworkCallback zzd = new zzdc(this);

    public zzdd(Context context, zzrx zzrxVar) {
        this.zzc = zzrxVar;
        this.zzi = context;
        this.zze = (ConnectivityManager) context.getSystemService("connectivity");
    }

    static /* bridge */ /* synthetic */ void zzc(zzdd zzddVar) {
        synchronized (Preconditions.checkNotNull(zzddVar.zzj)) {
            if (zzddVar.zzf != null && zzddVar.zzg != null) {
                zzb.m336d("all networks are unavailable.", new Object[0]);
                zzddVar.zzf.clear();
                zzddVar.zzg.clear();
                zzddVar.zzg();
            }
        }
    }

    static /* bridge */ /* synthetic */ void zzd(zzdd zzddVar, Network network) {
        synchronized (Preconditions.checkNotNull(zzddVar.zzj)) {
            try {
                if (zzddVar.zzf != null && zzddVar.zzg != null) {
                    zzb.m336d("the network is lost", new Object[0]);
                    if (zzddVar.zzg.remove(network)) {
                        zzddVar.zzf.remove(network);
                    }
                    zzddVar.zzg();
                }
            } finally {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzf(Network network, LinkProperties linkProperties) {
        synchronized (Preconditions.checkNotNull(this.zzj)) {
            try {
                if (this.zzf != null && this.zzg != null) {
                    zzb.m336d("a new network is available", new Object[0]);
                    if (this.zzf.containsKey(network)) {
                        this.zzg.remove(network);
                    }
                    this.zzf.put(network, linkProperties);
                    this.zzg.add(network);
                    zzg();
                }
            } finally {
            }
        }
    }

    private final void zzg() {
        if (this.zzc == null) {
            return;
        }
        synchronized (this.zza) {
            try {
                Iterator it = this.zza.iterator();
                while (it.hasNext()) {
                    WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                    if (!this.zzc.isShutdown()) {
                        final zzcz zzczVar = null;
                        this.zzc.execute(new Runnable(zzczVar) { // from class: com.google.android.gms.internal.cast.zzdb
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.zza.zze();
                                throw null;
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzda
    public final void zza() {
        LinkProperties linkProperties;
        zzb.m336d("Start monitoring connectivity changes", new Object[0]);
        if (this.zzh || this.zze == null || ContextCompat.checkSelfPermission(this.zzi, "android.permission.ACCESS_NETWORK_STATE") != 0) {
            return;
        }
        Network activeNetwork = this.zze.getActiveNetwork();
        if (activeNetwork != null && (linkProperties = this.zze.getLinkProperties(activeNetwork)) != null) {
            zzf(activeNetwork, linkProperties);
        }
        this.zze.registerNetworkCallback(new NetworkRequest.Builder().addTransportType(1).build(), this.zzd);
        this.zzh = true;
    }

    public final boolean zze() {
        List list = this.zzg;
        return (list == null || list.isEmpty()) ? false : true;
    }
}
