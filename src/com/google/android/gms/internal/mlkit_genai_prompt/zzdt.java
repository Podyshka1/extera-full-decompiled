package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzdt extends zzdh {
    private final zzan zza;
    private final zzgu zzb;

    public zzdt(zzan zzanVar, zzgu zzguVar) {
        if (zzanVar == null) {
            f$$ExternalSyntheticBUOutline2.m216m("Null service");
            throw null;
        }
        this.zza = zzanVar;
        if (zzguVar != null) {
            this.zzb = zzguVar;
        } else {
            f$$ExternalSyntheticBUOutline2.m216m("Null disconnectSignal");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzdh) {
            zzdh zzdhVar = (zzdh) obj;
            if (this.zza.equals(zzdhVar.zza()) && this.zzb.equals(zzdhVar.zzb())) {
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
        StringBuilder sb = new StringBuilder(length + 42 + string2.length() + 1);
        sb.append("ServiceContext{service=");
        sb.append(string);
        sb.append(", disconnectSignal=");
        sb.append(string2);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdh
    public final zzan zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzdh
    public final zzgu zzb() {
        return this.zzb;
    }
}
