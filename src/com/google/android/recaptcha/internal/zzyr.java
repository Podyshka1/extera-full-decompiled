package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzyr extends zzaav {
    private final zzyp zza;
    private final zzyq zzb;

    private zzyr(zzyp zzypVar, zzyq zzyqVar) {
        this.zza = zzypVar;
        this.zzb = zzyqVar;
    }

    public static zzyr zza(zzyp zzypVar, zzyq zzyqVar) {
        return new zzyr(zzypVar, zzyqVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzyr)) {
            return false;
        }
        zzyr zzyrVar = (zzyr) obj;
        return zzyrVar.zza == this.zza && zzyrVar.zzb == this.zzb;
    }

    public final int hashCode() {
        return Objects.hash(zzyr.class, this.zza, this.zzb);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 47 + string2.length() + 1);
        sb.append("ML-DSA Parameters (ML-DSA instance: ");
        sb.append(string);
        sb.append(", variant: ");
        sb.append(string2);
        sb.append(")");
        return sb.toString();
    }
}
