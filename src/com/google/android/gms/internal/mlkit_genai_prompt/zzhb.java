package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzhb extends zzho {
    private final zzml zza;

    public zzhb(zzml zzmlVar) {
        if (zzmlVar != null) {
            this.zza = zzmlVar;
        } else {
            f$$ExternalSyntheticBUOutline2.m216m("Null citationSources");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzho) {
            return this.zza.equals(((zzho) obj).zza());
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() ^ 1000003;
    }

    public final String toString() {
        String string = this.zza.toString();
        StringBuilder sb = new StringBuilder(string.length() + 34);
        sb.append("CitationMetadata{citationSources=");
        sb.append(string);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzho
    public final zzml zza() {
        return this.zza;
    }
}
