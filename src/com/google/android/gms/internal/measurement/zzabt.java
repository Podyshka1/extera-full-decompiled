package com.google.android.gms.internal.measurement;

import java.io.Closeable;
import okio.Buffer$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public final class zzabt implements Closeable {
    private static final ThreadLocal zza = new zzabs();
    private int zzb = 0;

    public static int zza() {
        return zzd().zzb;
    }

    public static zzabt zzc() {
        zzabt zzabtVarZzd = zzd();
        int i = zzabtVarZzd.zzb + 1;
        zzabtVarZzd.zzb = i;
        if (i != 0) {
            return zzabtVarZzd;
        }
        Buffer$$ExternalSyntheticBUOutline2.m835m("Overflow of RecursionDepth (possible error in core library)");
        return null;
    }

    private static zzabt zzd() {
        return (zzabt) zza.get();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.zzb;
        if (i > 0) {
            this.zzb = i - 1;
        } else {
            Buffer$$ExternalSyntheticBUOutline2.m835m("Mismatched calls to RecursionDepth (possible error in core library)");
        }
    }

    public final int zzb() {
        return this.zzb;
    }
}
