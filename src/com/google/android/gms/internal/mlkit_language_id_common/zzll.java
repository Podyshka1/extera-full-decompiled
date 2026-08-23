package com.google.android.gms.internal.mlkit_language_id_common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes.dex */
public final class zzll implements zzla {
    private final zzhz zza;
    private zzkc zzb = new zzkc();
    private final int zzc;

    private zzll(zzhz zzhzVar, int i) {
        this.zza = zzhzVar;
        zzlu.zza();
        this.zzc = i;
    }

    public static zzla zzf(zzhz zzhzVar) {
        return new zzll(zzhzVar, 0);
    }

    public static zzla zzg(zzhz zzhzVar, int i) {
        return new zzll(zzhzVar, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzla
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzla
    public final zzla zzb(zzhy zzhyVar) {
        this.zza.zzd(zzhyVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzla
    public final zzla zzc(zzkc zzkcVar) {
        this.zzb = zzkcVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzla
    public final String zzd() {
        zzke zzkeVarZzd = this.zza.zzg().zzd();
        return (zzkeVarZzd == null || zzl.zzb(zzkeVarZzd.zzk())) ? "NA" : (String) Preconditions.checkNotNull(zzkeVarZzd.zzk());
    }

    @Override // com.google.android.gms.internal.mlkit_language_id_common.zzla
    public final byte[] zze(int i, boolean z) {
        this.zzb.zzf(Boolean.valueOf(1 == (i ^ 1)));
        this.zzb.zze(Boolean.FALSE);
        this.zza.zzf(this.zzb.zzm());
        try {
            zzlu.zza();
            if (i == 0) {
                return new JsonDataEncoderBuilder().configureWith(zzgl.zza).ignoreNullValues(true).build().encode(this.zza.zzg()).getBytes("utf-8");
            }
            zzib zzibVarZzg = this.zza.zzg();
            zzaq zzaqVar = new zzaq();
            zzgl.zza.configure(zzaqVar);
            return zzaqVar.zza().zza(zzibVarZzg);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }
}
