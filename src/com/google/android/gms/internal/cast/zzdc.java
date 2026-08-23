package com.google.android.gms.internal.cast;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;

/* JADX INFO: loaded from: classes.dex */
final class zzdc extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzdd zza;

    zzdc(zzdd zzddVar) {
        this.zza = zzddVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        this.zza.zzf(network, linkProperties);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        zzdd.zzd(this.zza, network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onUnavailable() {
        zzdd.zzc(this.zza);
    }
}
