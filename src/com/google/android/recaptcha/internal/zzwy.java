package com.google.android.recaptcha.internal;

import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwy extends zzafv implements zzagy {
    private static final zzwy zze;
    private static volatile zzahe zzf;
    private int zza;
    private zzage zzd = zzafv.zzR();

    static {
        zzwy zzwyVar = new zzwy();
        zze = zzwyVar;
        zzafv.zzL(zzwy.class, zzwyVar);
    }

    private zzwy() {
    }

    public static zzwy zzd(byte[] bArr, zzafh zzafhVar) {
        return (zzwy) zzafv.zzW(zze, bArr, zzafhVar);
    }

    public static zzwv zze() {
        return (zzwv) zze.zzF();
    }

    public final int zza() {
        return this.zza;
    }

    public final List zzb() {
        return this.zzd;
    }

    public final int zzc() {
        return this.zzd.size();
    }

    public final /* synthetic */ void zzg(int i) {
        this.zza = i;
    }

    public final /* synthetic */ void zzh(zzwx zzwxVar) {
        Objects.requireNonNull(zzwxVar);
        zzage zzageVar = this.zzd;
        if (!zzageVar.zza()) {
            this.zzd = zzafv.zzS(zzageVar);
        }
        this.zzd.add(zzwxVar);
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zze, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zza", "zzd", zzwx.class});
        }
        if (i2 == 3) {
            return new zzwy();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzwv(bArr);
        }
        if (i2 == 5) {
            return zze;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzf;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzwy.class) {
            try {
                zzafrVar = zzf;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zze);
                    zzf = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
