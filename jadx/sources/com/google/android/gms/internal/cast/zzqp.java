package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqp extends zztp implements zzuy {
    private static final zzqp zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzqp zzqpVar = new zzqp();
        zzb = zzqpVar;
        zztp.zzH(zzqp.class, zzqpVar);
    }

    private zzqp() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzqp();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zzqo(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
