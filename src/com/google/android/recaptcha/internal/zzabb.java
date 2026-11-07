package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzabb extends zzaav {
    private final zzaay zza;
    private final zzaaz zzb;
    private final zzaba zzc;

    private zzabb(zzaay zzaayVar, int i, zzaaz zzaazVar, zzaba zzabaVar) {
        this.zza = zzaayVar;
        this.zzb = zzaazVar;
        this.zzc = zzabaVar;
    }

    public static zzabb zza(zzaba zzabaVar) {
        return new zzabb(zzaay.zza, 64, zzaaz.zza, zzabaVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzabb)) {
            return false;
        }
        zzabb zzabbVar = (zzabb) obj;
        return zzabbVar.zza == this.zza && zzabbVar.zzb == this.zzb && zzabbVar.zzc == this.zzc;
    }

    public final int hashCode() {
        return Objects.hash(zzabb.class, this.zza, 64, this.zzb, this.zzc);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        int length2 = string2.length();
        String string3 = this.zzc.toString();
        StringBuilder sb = new StringBuilder(length + 12 + length2 + 20 + string3.length());
        sb.append("SLH-DSA-");
        sb.append(string);
        sb.append("-128");
        sb.append(string2);
        sb.append(" instance, variant: ");
        sb.append(string3);
        return sb.toString();
    }
}
