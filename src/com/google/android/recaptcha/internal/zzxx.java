package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class zzxx extends zzaav {
    private final zzxv zza;
    private final zzxt zzb;
    private final zzxu zzc;
    private final zzxw zzd;

    public /* synthetic */ zzxx(zzxv zzxvVar, zzxt zzxtVar, zzxu zzxuVar, zzxw zzxwVar, byte[] bArr) {
        this.zza = zzxvVar;
        this.zzb = zzxtVar;
        this.zzc = zzxuVar;
        this.zzd = zzxwVar;
    }

    public static zzxs zza() {
        return new zzxs(null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzxx)) {
            return false;
        }
        zzxx zzxxVar = (zzxx) obj;
        return zzxxVar.zza == this.zza && zzxxVar.zzb == this.zzb && zzxxVar.zzc == this.zzc && zzxxVar.zzd == this.zzd;
    }

    public final int hashCode() {
        return Objects.hash(zzxx.class, this.zza, this.zzb, this.zzc, this.zzd);
    }

    public final String toString() {
        String string = this.zzd.toString();
        int length = string.length();
        String string2 = this.zzc.toString();
        int length2 = string2.length();
        String string3 = this.zza.toString();
        int length3 = string3.length();
        String string4 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 39 + length2 + 12 + length3 + 9 + string4.length() + 1);
        sb.append("ECDSA Parameters (variant: ");
        sb.append(string);
        sb.append(", hashType: ");
        sb.append(string2);
        sb.append(", encoding: ");
        sb.append(string3);
        sb.append(", curve: ");
        sb.append(string4);
        sb.append(")");
        return sb.toString();
    }

    public final zzxv zzb() {
        return this.zza;
    }

    public final zzxt zzc() {
        return this.zzb;
    }

    public final zzxu zzd() {
        return this.zzc;
    }

    public final zzxw zze() {
        return this.zzd;
    }

    public final boolean zzf() {
        return this.zzd != zzxw.zzd;
    }
}
