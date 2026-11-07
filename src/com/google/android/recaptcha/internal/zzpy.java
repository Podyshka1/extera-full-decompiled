package com.google.android.recaptcha.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzpy {
    Map zza;

    public final Map zza() {
        Map map = this.zza;
        if (map != null) {
            return map;
        }
        zzpj zzpjVar = new zzpj();
        this.zza = zzpjVar;
        return zzpjVar;
    }
}
