package com.google.android.gms.internal.fido;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzaz extends zzbl {
    static final zzaz zza = new zzaz();

    private zzaz() {
    }

    public final boolean equals(@CheckForNull Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final Object zza() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final boolean zzb() {
        return false;
    }
}
