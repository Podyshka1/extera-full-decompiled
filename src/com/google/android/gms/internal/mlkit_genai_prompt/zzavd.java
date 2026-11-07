package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes5.dex */
public final class zzavd implements zzauu {
    private final zzanv zza;
    private zzasz zzb = new zzasz();

    private zzavd(zzanv zzanvVar, int i) {
        this.zza = zzanvVar;
        zzavl.zza();
    }

    public static zzauu zze(zzanv zzanvVar) {
        return new zzavd(zzanvVar, 0);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauu
    public final byte[] zza(int i, boolean z) {
        this.zzb.zzi(Boolean.valueOf(1 == (i ^ 1)));
        this.zzb.zzg(Boolean.FALSE);
        zzata zzataVarZzl = this.zzb.zzl();
        zzanv zzanvVar = this.zza;
        zzanvVar.zza(zzataVarZzl);
        zzavl.zza();
        if (i == 0) {
            return new JsonDataEncoderBuilder().configureWith(zzalp.zza).ignoreNullValues(true).build().encode(zzanvVar.zzg()).getBytes(StandardCharsets.UTF_8);
        }
        zzanw zzanwVarZzg = zzanvVar.zzg();
        zzpz zzpzVar = new zzpz();
        zzalp.zza.configure(zzpzVar);
        return zzpzVar.zza().zza(zzanwVarZzg);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauu
    public final zzauu zzb(zzasz zzaszVar) {
        this.zzb = zzaszVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauu
    public final zzauu zzc(zzanu zzanuVar) {
        this.zza.zzb(zzanuVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzauu
    public final String zzd() {
        zzata zzataVarZza = this.zza.zzg().zza();
        return (zzataVarZza == null || zzlb.zzc(zzataVarZza.zzd())) ? "NA" : (String) Preconditions.checkNotNull(zzataVarZza.zzd());
    }
}
