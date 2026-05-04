package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzot extends zzit implements zzkf {
    private static final zzot zzb;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzot zzotVar = new zzot();
        zzb = zzotVar;
        zzit.zzD(zzot.class, zzotVar);
    }

    private zzot() {
    }

    @Override // com.google.android.recaptcha.internal.zzit
    protected final Object zzh(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzit.zzA(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzot();
        }
        zzor zzorVar = null;
        if (i2 == 4) {
            return new zzos(zzorVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
