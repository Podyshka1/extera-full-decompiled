package com.google.android.recaptcha.internal;

import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalc extends zzafv implements zzagy {
    private static final zzalc zzo;
    private static volatile zzahe zzp;
    private int zza;
    private long zze;
    private int zzf;
    private zzaer zzh;
    private String zzi;
    private String zzj;
    private zzaer zzk;
    private String zzl;
    private String zzm;
    private String zzn;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzage zzg = zzafv.zzR();

    static {
        zzalc zzalcVar = new zzalc();
        zzo = zzalcVar;
        zzafv.zzL(zzalc.class, zzalcVar);
    }

    private zzalc() {
        zzaer zzaerVar = zzaer.zza;
        this.zzh = zzaerVar;
        this.zzi = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzj = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzk = zzaerVar;
        this.zzl = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzm = _UrlKt.FRAGMENT_ENCODE_SET;
        this.zzn = _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public static zzalc zze() {
        return zzo;
    }

    public final String zza() {
        return this.zzd;
    }

    public final List zzb() {
        return this.zzg;
    }

    public final zzaer zzc() {
        return this.zzh;
    }

    public final zzaer zzd() {
        return this.zzk;
    }

    public final int zzh() {
        int i;
        int i2 = this.zzf;
        if (i2 == 15) {
            i = 17;
        } else if (i2 != 16) {
            switch (i2) {
                case 0:
                    i = 2;
                    break;
                case 1:
                    i = 3;
                    break;
                case 2:
                    i = 4;
                    break;
                case 3:
                    i = 5;
                    break;
                case 4:
                    i = 6;
                    break;
                case 5:
                    i = 7;
                    break;
                case 6:
                    i = 8;
                    break;
                case 7:
                    i = 9;
                    break;
                case 8:
                    i = 10;
                    break;
                case 9:
                    i = 11;
                    break;
                case 10:
                    i = 12;
                    break;
                default:
                    i = 0;
                    break;
            }
        } else {
            i = 18;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzo, "\u0004\u000b\u0000\u0001\u0001\f\u000b\u0000\u0001\u0000\u0001ለ\u0000\u0002ဂ\u0001\u0004ဌ\u0002\u0005\u001b\u0006ည\u0003\u0007ለ\u0004\bለ\u0005\tည\u0006\nለ\u0007\u000bለ\b\fለ\t", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", zzale.class, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new zzalc();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalb(bArr);
        }
        if (i2 == 5) {
            return zzo;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzp;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzalc.class) {
            try {
                zzafrVar = zzp;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzo);
                    zzp = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
