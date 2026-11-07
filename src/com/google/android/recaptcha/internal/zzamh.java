package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzamh extends zzafv implements zzagy {
    private static final zzamh zzf;
    private static volatile zzahe zzg;
    private int zza;
    private int zzd;
    private int zze;

    static {
        zzamh zzamhVar = new zzamh();
        zzf = zzamhVar;
        zzafv.zzL(zzamh.class, zzamhVar);
    }

    private zzamh() {
    }

    public static zzamh zzb(byte[] bArr) {
        return (zzamh) zzafv.zzV(zzf, bArr);
    }

    public final zzami zza() {
        zzami zzamiVar;
        switch (this.zze) {
            case 0:
                zzamiVar = zzami.JS_CODE_UNSPECIFIED;
                break;
            case 1:
                zzamiVar = zzami.JS_CODE_SUCCESS;
                break;
            case 2:
                zzamiVar = zzami.JS_NETWORK_ERROR;
                break;
            case 3:
                zzamiVar = zzami.JS_INTERNAL_ERROR;
                break;
            case 4:
                zzamiVar = zzami.JS_INVALID_SITE_KEY;
                break;
            case 5:
                zzamiVar = zzami.JS_INVALID_SITE_KEY_TYPE;
                break;
            case 6:
                zzamiVar = zzami.JS_3P_APP_PACKAGE_NAME_NOT_ALLOWED;
                break;
            case 7:
                zzamiVar = zzami.JS_INVALID_ACTION;
                break;
            case 8:
                zzamiVar = zzami.JS_THIRD_PARTY_APP_PACKAGE_NAME_NOT_ALLOWED;
                break;
            case 9:
                zzamiVar = zzami.JS_PROGRAM_ERROR;
                break;
            default:
                zzamiVar = null;
                break;
        }
        return zzamiVar == null ? zzami.UNRECOGNIZED : zzamiVar;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzf, "\u0000\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001", new Object[]{"zza", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzamh();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzamg(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzg;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzamh.class) {
            try {
                zzafrVar = zzg;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzf);
                    zzg = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
