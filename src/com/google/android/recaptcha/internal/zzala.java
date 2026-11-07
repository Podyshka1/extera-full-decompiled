package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzala extends zzafv implements zzagy {
    private static final zzala zzn;
    private static volatile zzahe zzo;
    private int zza;
    private zzaku zzk;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzl = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzm = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzala zzalaVar = new zzala();
        zzn = zzalaVar;
        zzafv.zzL(zzala.class, zzalaVar);
    }

    private zzala() {
    }

    public static zzakz zza() {
        return (zzakz) zzn.zzF();
    }

    public final /* synthetic */ void zzb(String str) {
        Objects.requireNonNull(str);
        this.zza |= 1;
        this.zzd = str;
    }

    public final /* synthetic */ void zzc(String str) {
        Objects.requireNonNull(str);
        this.zza |= 2;
        this.zze = str;
    }

    public final /* synthetic */ void zzd(String str) {
        Objects.requireNonNull(str);
        this.zza |= 4;
        this.zzf = str;
    }

    public final /* synthetic */ void zze(String str) {
        Objects.requireNonNull(str);
        this.zza |= 8;
        this.zzg = str;
    }

    public final /* synthetic */ void zzg(zzaku zzakuVar) {
        Objects.requireNonNull(zzakuVar);
        this.zzk = zzakuVar;
        this.zza |= 128;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzn, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ለ\u0000\u0002ለ\u0001\u0003ለ\u0002\u0004ለ\u0003\u0005ለ\u0004\u0006ለ\u0005\u0007ለ\u0006\bဉ\u0007\tለ\b\nለ\t", new Object[]{"zza", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzala();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzakz(bArr);
        }
        if (i2 == 5) {
            return zzn;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzo;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzala.class) {
            try {
                zzafrVar = zzo;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzn);
                    zzo = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
