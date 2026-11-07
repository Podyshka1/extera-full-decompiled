package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzgm extends zzfu {
    private final Object zza;
    private final zzgu zzb;

    public zzgm(Object obj, zzgu zzguVar) {
        if (obj == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null getService");
            throw null;
        }
        this.zza = obj;
        this.zzb = zzguVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfu) {
            zzfu zzfuVar = (zzfu) obj;
            if (this.zza.equals(zzfuVar.zza()) && this.zzb.equals(zzfuVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.zza.hashCode() ^ 1000003;
        return this.zzb.hashCode() ^ (iHashCode * 1000003);
    }

    public final String toString() {
        String string = this.zza.toString();
        int length = string.length();
        String string2 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(length + 54 + string2.length() + 1);
        sb.append("InferenceServiceContext{getService=");
        sb.append(string);
        sb.append(", disconnectSignal=");
        sb.append(string2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfu
    public final Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzfu
    public final zzgu zzb() {
        return this.zzb;
    }
}
