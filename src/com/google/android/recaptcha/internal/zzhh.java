package com.google.android.recaptcha.internal;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzhh {
    private final Context zza;

    public zzhh(Context context) {
        this.zza = context;
        new ConcurrentHashMap();
        zzc();
    }

    private static final Map zzc() {
        Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to(0, zzaiv.NET_CAPABILITY_MMS), TuplesKt.to(1, zzaiv.NET_CAPABILITY_SUPL), TuplesKt.to(2, zzaiv.NET_CAPABILITY_DUN), TuplesKt.to(3, zzaiv.NET_CAPABILITY_FOTA), TuplesKt.to(4, zzaiv.NET_CAPABILITY_IMS), TuplesKt.to(5, zzaiv.NET_CAPABILITY_CBS), TuplesKt.to(6, zzaiv.NET_CAPABILITY_WIFI_P2P), TuplesKt.to(7, zzaiv.NET_CAPABILITY_IA), TuplesKt.to(8, zzaiv.NET_CAPABILITY_RCS), TuplesKt.to(9, zzaiv.NET_CAPABILITY_XCAP), TuplesKt.to(10, zzaiv.NET_CAPABILITY_EIMS), TuplesKt.to(11, zzaiv.NET_CAPABILITY_NOT_METERED), TuplesKt.to(12, zzaiv.NET_CAPABILITY_INTERNET), TuplesKt.to(13, zzaiv.NET_CAPABILITY_NOT_RESTRICTED), TuplesKt.to(14, zzaiv.NET_CAPABILITY_TRUSTED), TuplesKt.to(15, zzaiv.NET_CAPABILITY_NOT_VPN));
        mapMutableMapOf.put(17, zzaiv.NET_CAPABILITY_CAPTIVE_PORTAL);
        mapMutableMapOf.put(16, zzaiv.NET_CAPABILITY_VALIDATED);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            mapMutableMapOf.put(18, zzaiv.NET_CAPABILITY_NOT_ROAMING);
            mapMutableMapOf.put(19, zzaiv.NET_CAPABILITY_FOREGROUND);
            mapMutableMapOf.put(20, zzaiv.NET_CAPABILITY_NOT_CONGESTED);
            mapMutableMapOf.put(21, zzaiv.NET_CAPABILITY_NOT_SUSPENDED);
        }
        if (i >= 29) {
            mapMutableMapOf.put(23, zzaiv.NET_CAPABILITY_MCX);
        }
        if (i >= 30) {
            mapMutableMapOf.put(25, zzaiv.NET_CAPABILITY_TEMPORARILY_NOT_METERED);
        }
        if (i >= 31) {
            mapMutableMapOf.put(32, zzaiv.NET_CAPABILITY_HEAD_UNIT);
            mapMutableMapOf.put(29, zzaiv.NET_CAPABILITY_ENTERPRISE);
        }
        if (i >= 33) {
            mapMutableMapOf.put(35, zzaiv.NET_CAPABILITY_PRIORITIZE_BANDWIDTH);
            mapMutableMapOf.put(34, zzaiv.NET_CAPABILITY_PRIORITIZE_LATENCY);
            mapMutableMapOf.put(33, zzaiv.NET_CAPABILITY_MMTEL);
        }
        return mapMutableMapOf;
    }

    public final zzhg zza(Exception exc, zzhg zzhgVar) {
        NetworkCapabilities networkCapabilities;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zza.getSystemService("connectivity");
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                if (networkCapabilities.hasCapability(16)) {
                    return zzhgVar;
                }
            }
        } catch (Exception unused) {
        }
        return new zzhg(zzhf.zzc, zzhe.zzy, exc.getMessage(), null, 8, null);
    }

    public final Set zzb() {
        try {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            ConnectivityManager connectivityManager = (ConnectivityManager) this.zza.getSystemService("connectivity");
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(connectivityManager.getActiveNetwork());
            if (networkCapabilities != null && networkCapabilities.hasTransport(1)) {
                linkedHashSet.add(zzaiv.TRANSPORT_WIFI);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(0)) {
                linkedHashSet.add(zzaiv.TRANSPORT_CELLULAR);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                linkedHashSet.add(zzaiv.TRANSPORT_VPN);
            }
            if (networkCapabilities != null && networkCapabilities.hasTransport(3)) {
                linkedHashSet.add(zzaiv.TRANSPORT_ETHERNET);
            }
            if (networkCapabilities != null && networkCapabilities.hasCapability(16)) {
                linkedHashSet.add(zzaiv.NET_CAPABILITY_VALIDATED);
            }
            return linkedHashSet;
        } catch (Exception unused) {
            return SetsKt.emptySet();
        }
    }
}
