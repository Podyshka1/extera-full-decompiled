package com.google.android.recaptcha.internal;

import okhttp3.internal.p025ws.WebSocketProtocol;
import org.telegram.messenger.MediaDataController;

/* JADX INFO: loaded from: classes5.dex */
public final class zzx {
    public static final zzw zza = new zzw(null);
    public static final zzx zzb = new zzx(9999);
    public static final zzx zzc = new zzx(MediaDataController.MAX_STYLE_RUNS_COUNT);
    public static final zzx zzd = new zzx(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY);
    public static final zzx zze = new zzx(1002);
    public static final zzx zzf = new zzx(1003);
    public static final zzx zzg = new zzx(1004);
    public static final zzx zzh = new zzx(WebSocketProtocol.CLOSE_NO_STATUS_CODE);
    public static final zzx zzi = new zzx(1006);
    public static final zzx zzj = new zzx(1007);
    public static final zzx zzk = new zzx(1008);
    public static final zzx zzl = new zzx(1009);
    public static final zzx zzm = new zzx(1010);
    private final int zzn;

    private zzx(int i) {
        this.zzn = i;
    }

    public final int zza() {
        return this.zzn;
    }
}
