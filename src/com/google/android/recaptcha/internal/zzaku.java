package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaku extends zzafv implements zzagy {
    private static final zzaku zzo;
    private static volatile zzahe zzp;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaky zzi;
    private zzakm zzj;
    private zzakw zzk;
    private zzakc zzl;
    private zzakq zzm;
    private zzajy zzn;

    static {
        zzaku zzakuVar = new zzaku();
        zzo = zzakuVar;
        zzafv.zzL(zzaku.class, zzakuVar);
    }

    private zzaku() {
    }

    public static zzakt zza() {
        return (zzakt) zzo.zzF();
    }

    public static zzaku zzb() {
        return zzo;
    }

    public final /* synthetic */ void zzc(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzd() {
        this.zza &= -2;
        this.zzd = zzo.zzd;
    }

    public final /* synthetic */ void zze(zzakm zzakmVar) {
        Objects.requireNonNull(zzakmVar);
        this.zzj = zzakmVar;
        this.zza |= 64;
    }

    public final /* synthetic */ void zzg(zzakc zzakcVar) {
        Objects.requireNonNull(zzakcVar);
        this.zzl = zzakcVar;
        this.zza |= 256;
    }

    public final /* synthetic */ void zzh(zzakq zzakqVar) {
        Objects.requireNonNull(zzakqVar);
        this.zzm = zzakqVar;
        this.zza |= 512;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzo, "\u0004\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ለ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဉ\b\nဉ\t\u000bဉ\n", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new zzaku();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakt(bArr);
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
        synchronized (zzaku.class) {
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
