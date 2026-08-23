package com.google.android.recaptcha.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class zzie {
    static final zzie zza = new zzie(true);
    public static final /* synthetic */ int zzb = 0;
    private static volatile boolean zzc = false;
    private final Map zzd;

    public zzie() {
        this.zzd = new HashMap();
    }

    public final zzir zza(zzke zzkeVar, int i) {
        return (zzir) this.zzd.get(new zzid(zzkeVar, i));
    }

    public zzie(boolean z) {
        this.zzd = Collections.EMPTY_MAP;
    }
}
