package com.google.android.gms.internal.mlkit_genai_prompt;

import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
final class zzee extends zzek {
    private final String zza;
    private final float zzb;
    private final int zzc;

    public zzee(String str, float f, int i) {
        if (str == null) {
            f$$ExternalSyntheticBUOutline2.m213m("Null text");
            throw null;
        }
        this.zza = str;
        this.zzb = f;
        this.zzc = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzek) {
            zzek zzekVar = (zzek) obj;
            if (this.zza.equals(zzekVar.zza()) && Float.floatToIntBits(this.zzb) == Float.floatToIntBits(zzekVar.zzb()) && this.zzc == zzekVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zzc ^ ((((this.zza.hashCode() ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.zzb)) * 1000003);
    }

    public final String toString() {
        float f = this.zzb;
        int length = String.valueOf(f).length();
        int i = this.zzc;
        int length2 = String.valueOf(i).length();
        String str = this.zza;
        StringBuilder sb = new StringBuilder(str.length() + 26 + length + 13 + length2 + 1);
        sb.append("CortanaReply{text=");
        sb.append(str);
        sb.append(", score=");
        sb.append(f);
        sb.append(", stopReason=");
        sb.append(i);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzek
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzek
    public final float zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzek
    public final int zzc() {
        return this.zzc;
    }
}
