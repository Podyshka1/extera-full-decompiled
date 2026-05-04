package com.google.android.gms.internal.mlkit_language_id_common;

/* JADX INFO: loaded from: classes.dex */
final class zzkx extends zzlb {
    private String zza;
    private boolean zzb;
    private int zzc;
    private byte zzd;

    zzkx() {
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzlb
    public final zzlb zza(boolean z) {
        this.zzb = true;
        this.zzd = (byte) (1 | this.zzd);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzlb
    public final zzlb zzb(int i) {
        this.zzc = 1;
        this.zzd = (byte) (this.zzd | 2);
        return this;
    }

    public final zzlb zzc(String str) {
        this.zza = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzlb
    public final zzlc zzd() {
        String str;
        if (this.zzd == 3 && (str = this.zza) != null) {
            return new zzkz(str, this.zzb, this.zzc, null);
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
        throw new IllegalStateException("Missing required properties:".concat(sb.toString()));
    }
}
