package com.google.android.gms.internal.mlkit_genai_prompt;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzaus extends zzauw {
    private String zza;
    private boolean zzb;
    private int zzc;
    private byte zzd;

    public final zzauw zza(String str) {
        this.zza = "genai-prompt";
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauw
    public final zzauw zzb(boolean z) {
        this.zzb = true;
        this.zzd = (byte) (1 | this.zzd);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauw
    public final zzauw zzc(int i) {
        this.zzc = 1;
        this.zzd = (byte) (this.zzd | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauw
    public final zzaux zzd() {
        String str;
        byte[] bArr = null;
        if (this.zzd == 3 && (str = this.zza) != null) {
            return new zzaut(str, this.zzb, this.zzc, bArr);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" libraryName");
        }
        if ((this.zzd & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.zzd & 2) == 0) {
            sb.append(" firelogEventType");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
