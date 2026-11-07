package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyh extends zzaav {
    private final zzyg zza;

    private zzyh(zzyg zzygVar) {
        this.zza = zzygVar;
    }

    public static zzyh zza(zzyg zzygVar) {
        return new zzyh(zzygVar);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof zzyh) && ((zzyh) obj).zza == this.zza;
    }

    public final int hashCode() {
        return Objects.hash(zzyh.class, this.zza);
    }

    public final String toString() {
        String string = this.zza.toString();
        StringBuilder sb = new StringBuilder(string.length() + 30);
        sb.append("Ed25519 Parameters (variant: ");
        sb.append(string);
        sb.append(")");
        return sb.toString();
    }

    public final zzyg zzb() {
        return this.zza;
    }
}
