package com.google.android.gms.internal.fido;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
final class zzbn extends zzbl {
    private final Object zza;

    public zzbn(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzbn) {
            return this.zza.equals(((zzbn) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() + 1502476572;
    }

    public final String toString() {
        return "Optional.of(" + this.zza.toString() + ")";
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final boolean zzb() {
        return true;
    }
}
