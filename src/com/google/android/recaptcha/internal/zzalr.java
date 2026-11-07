package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzalr extends zzafv implements zzagy {
    private static final zzalr zzl;
    private static volatile zzahe zzm;
    private int zza;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzaer zzf;
    private zzaer zzg;
    private zzaer zzh;
    private zzagc zzi;
    private int zzj;
    private int zzk;

    static {
        zzalr zzalrVar = new zzalr();
        zzl = zzalrVar;
        zzafv.zzL(zzalr.class, zzalrVar);
    }

    private zzalr() {
        zzaer zzaerVar = zzaer.zza;
        this.zzf = zzaerVar;
        this.zzg = zzaerVar;
        this.zzh = zzaerVar;
        this.zzi = zzafv.zzO();
    }

    public static zzalp zzi() {
        return (zzalp) zzl.zzF();
    }

    @Deprecated
    public final boolean zza() {
        return (this.zza & 1) != 0;
    }

    @Deprecated
    public final String zzb() {
        return this.zzd;
    }

    @Deprecated
    public final boolean zzc() {
        return (this.zza & 2) != 0;
    }

    @Deprecated
    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return (this.zza & 4) != 0;
    }

    public final zzaer zzg() {
        return this.zzf;
    }

    public final zzaer zzh() {
        return this.zzh;
    }

    public final /* synthetic */ void zzj() {
        this.zza &= -2;
        this.zzd = zzl.zzd;
    }

    public final /* synthetic */ void zzk() {
        this.zza &= -3;
        this.zze = zzl.zze;
    }

    public final /* synthetic */ void zzl(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 4;
        this.zzf = zzaerVar;
    }

    public final /* synthetic */ void zzn(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 8;
        this.zzg = zzaerVar;
    }

    public final /* synthetic */ void zzo(zzaer zzaerVar) {
        Objects.requireNonNull(zzaerVar);
        this.zza |= 16;
        this.zzh = zzaerVar;
    }

    public final /* synthetic */ void zzq(int i) {
        this.zzj = 2;
        this.zza |= 32;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzl, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003'\u0004᠌\u0005\u0005င\u0006\u0006ည\u0002\u0007ည\u0003\bည\u0004", new Object[]{"zza", "zzd", "zze", "zzi", "zzj", zzalq.zza, "zzk", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzalr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzalp(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzm;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzalr.class) {
            try {
                zzafrVar = zzm;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzl);
                    zzm = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
