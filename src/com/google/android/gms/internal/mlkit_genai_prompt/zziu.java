package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zziu extends zzja {
    private final zzml zzb;

    public zziu(zzml zzmlVar) {
        if (zzmlVar != null) {
            this.zzb = zzmlVar;
        } else {
            f$$ExternalSyntheticBUOutline2.m216m("Null functionDeclarations");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzja) {
            return this.zzb.equals(((zzja) obj).zza());
        }
        return false;
    }

    public final int hashCode() {
        return this.zzb.hashCode() ^ 1000003;
    }

    public final String toString() {
        String string = this.zzb.toString();
        StringBuilder sb = new StringBuilder(string.length() + 33);
        sb.append("WalleTools{functionDeclarations=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzja
    public final zzml zza() {
        return this.zzb;
    }
}
