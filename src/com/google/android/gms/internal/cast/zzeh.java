package com.google.android.gms.internal.cast;

import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzeh extends ConnectivityManager.NetworkCallback {
    final /* synthetic */ zzek zza;

    public zzeh(zzek zzekVar) {
        Objects.requireNonNull(zzekVar);
        this.zza = zzekVar;
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onAvailable(Network network) {
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
        this.zza.zzc(network, linkProperties);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onLost(Network network) {
        this.zza.zzd(network);
    }

    @Override // android.net.ConnectivityManager.NetworkCallback
    public final void onUnavailable() {
        this.zza.zze();
    }
}
