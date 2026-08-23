package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzln extends zzhk implements zzin {
    private static final zzln zzb;
    private int zzd;
    private int zzf;
    private zzho zze = zzhk.zzs();
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzln zzlnVar = new zzln();
        zzb = zzlnVar;
        zzhk.zzx(zzln.class, zzlnVar);
    }

    private zzln() {
    }

    @Override // com.google.android.gms.internal.play_billing.zzhk
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzhk.zzu(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001a\u0002င\u0000\u0003ဈ\u0001", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzln();
        }
        zzlm zzlmVar = null;
        if (i2 == 4) {
            return new zzll(zzlmVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
