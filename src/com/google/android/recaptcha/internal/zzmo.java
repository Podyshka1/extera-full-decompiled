package com.google.android.recaptcha.internal;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzmo extends zzit implements zzkf {
    private static final zziz zzb = new zzmm();
    private static final zzmo zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private zziy zzk = zzit.zzv();

    static {
        zzmo zzmoVar = new zzmo();
        zzd = zzmoVar;
        zzit.zzD(zzmo.class, zzmoVar);
    }

    private zzmo() {
    }

    static /* synthetic */ void zzH(zzmo zzmoVar, String str) {
        str.getClass();
        zzmoVar.zzf = str;
    }

    static /* synthetic */ void zzJ(zzmo zzmoVar, String str) {
        str.getClass();
        zzmoVar.zzh = str;
    }

    public static zzmn zzf() {
        return (zzmn) zzd.zzp();
    }

    static /* synthetic */ void zzj(zzmo zzmoVar, String str) {
        str.getClass();
        zzmoVar.zzi = str;
    }

    static /* synthetic */ void zzk(zzmo zzmoVar, String str) {
        str.getClass();
        zzmoVar.zzj = str;
    }

    @Override // com.google.android.recaptcha.internal.zzit
    protected final Object zzh(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzit.zzA(zzd, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0004\u0002Ȉ\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006Ȉ\u0007,", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzmo();
        }
        zzmm zzmmVar = null;
        if (i2 == 4) {
            return new zzmn(zzmmVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzd;
    }
}
