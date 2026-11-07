package com.google.android.gms.internal.cast;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.core.content.ContextCompat;
import com.google.android.gms.cast.internal.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzek implements zzeg {
    private static final Logger zzb = new Logger("ConnectivityMonitor");
    public final Set zza;
    private final zzwo zzc;
    private final ConnectivityManager zze;
    private boolean zzh;
    private final Context zzi;
    private final boolean zzk;
    private final BroadcastReceiver zzl;
    private final ConnectivityManager.NetworkCallback zzd = new zzeh(this);
    private final Map zzf = new HashMap();
    private final List zzg = new ArrayList();
    private final Object zzj = new Object();

    public zzek(Context context, zzwo zzwoVar) {
        this.zzk = Build.VERSION.SDK_INT >= 31;
        this.zzl = new zzei(this);
        this.zza = new HashSet();
        this.zzc = zzwoVar;
        this.zzi = context;
        this.zze = (ConnectivityManager) context.getSystemService("connectivity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzg, reason: merged with bridge method [inline-methods] */
    public final void zzc(Network network, LinkProperties linkProperties) {
        synchronized (this.zzj) {
            try {
                zzb.m311d("a new network is available", new Object[0]);
                Map map = this.zzf;
                if (map.containsKey(network)) {
                    this.zzg.remove(network);
                }
                map.put(network, linkProperties);
                this.zzg.add(network);
            } catch (Throwable th) {
                throw th;
            }
        }
        zzf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final void zzf() {
        zzwo zzwoVar = this.zzc;
        if (zzwoVar == null) {
            return;
        }
        Set set = this.zza;
        synchronized (set) {
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    if (!zzwoVar.isShutdown()) {
                        final zzef zzefVar = null;
                        zzwoVar.execute(new Runnable(zzefVar) { // from class: com.google.android.gms.internal.cast.zzej
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                this.zza.zzb(null);
                            }
                        });
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.cast.zzeg
    public final void zza() {
        ConnectivityManager connectivityManager;
        LinkProperties linkProperties;
        zzb.m311d("Start monitoring connectivity changes", new Object[0]);
        if (this.zzh || (connectivityManager = this.zze) == null) {
            return;
        }
        Context context = this.zzi;
        if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0) {
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (linkProperties = connectivityManager.getLinkProperties(activeNetwork)) != null) {
                zzc(activeNetwork, linkProperties);
            }
            NetworkRequest.Builder builderAddTransportType = new NetworkRequest.Builder().addTransportType(1);
            if (this.zzk) {
                builderAddTransportType.setIncludeOtherUidNetworks(true);
            } else {
                context.registerReceiver(this.zzl, new IntentFilter("android.net.wifi.STATE_CHANGE"));
            }
            connectivityManager.registerNetworkCallback(builderAddTransportType.build(), this.zzd);
            this.zzh = true;
        }
    }

    public final /* synthetic */ void zzb(zzef zzefVar) {
        boolean zIsEmpty;
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        synchronized (this.zzj) {
            zIsEmpty = this.zzg.isEmpty();
        }
        if (!zIsEmpty && !this.zzk && (connectivityManager = this.zze) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null) {
            activeNetworkInfo.isConnected();
        }
        zzefVar.zza();
    }

    public final /* synthetic */ void zzd(Network network) {
        synchronized (this.zzj) {
            try {
                zzb.m311d("the network is lost", new Object[0]);
                if (this.zzg.remove(network)) {
                    this.zzf.remove(network);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zzf();
    }

    public final /* synthetic */ void zze() {
        synchronized (this.zzj) {
            zzb.m311d("all networks are unavailable.", new Object[0]);
            this.zzf.clear();
            this.zzg.clear();
        }
        zzf();
    }
}
