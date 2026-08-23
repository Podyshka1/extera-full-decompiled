package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzne extends zztp implements zzuy {
    private static final zzne zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzne zzneVar = new zzne();
        zzb = zzneVar;
        zztp.zzH(zzne.class, zzneVar);
    }

    private zzne() {
    }

    public static zznd zza() {
        return (zznd) zzb.zzv();
    }

    static /* synthetic */ void zzd(zzne zzneVar, String str) {
        str.getClass();
        zzneVar.zzd |= 1;
        zzneVar.zze = str;
    }

    static /* synthetic */ void zze(zzne zzneVar, String str) {
        str.getClass();
        zzneVar.zzd |= 2;
        zzneVar.zzf = str;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzne();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznd(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
