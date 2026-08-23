package com.google.android.recaptcha.internal;

import kotlin.jvm.JvmField;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes5.dex */
public final class zzx {
    public static final zzw zza = new zzw(null);

    @JvmField
    public static final zzx zzb = new zzx(9999);

    @JvmField
    public static final zzx zzc = new zzx(1000);

    @JvmField
    public static final zzx zzd = new zzx(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY);

    @JvmField
    public static final zzx zze = new zzx(1002);

    @JvmField
    public static final zzx zzf = new zzx(1003);

    @JvmField
    public static final zzx zzg = new zzx(1004);

    @JvmField
    public static final zzx zzh = new zzx(WebSocketProtocol.CLOSE_NO_STATUS_CODE);

    @JvmField
    public static final zzx zzi = new zzx(1006);

    @JvmField
    public static final zzx zzj = new zzx(1007);

    @JvmField
    public static final zzx zzk = new zzx(1008);

    @JvmField
    public static final zzx zzl = new zzx(1009);

    @JvmField
    public static final zzx zzm = new zzx(1010);
    private final int zzn;

    private zzx(int i) {
        this.zzn = i;
    }

    public final int zza() {
        return this.zzn;
    }
}
