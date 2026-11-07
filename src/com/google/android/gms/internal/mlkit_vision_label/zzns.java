package com.google.android.gms.internal.mlkit_vision_label;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes4.dex */
public final class zzns implements zznf {
    private final zzkg zza;
    private zzmh zzb = new zzmh();
    private final int zzc;

    private zzns(zzkg zzkgVar, int i) {
        this.zza = zzkgVar;
        zzob.zza();
        this.zzc = i;
    }

    public static zznf zzf(zzkg zzkgVar) {
        return new zzns(zzkgVar, 0);
    }

    public static zznf zzg(zzkg zzkgVar, int i) {
        return new zzns(zzkgVar, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zznf
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zznf
    public final zznf zzb(zzkf zzkfVar) {
        this.zza.zzf(zzkfVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zznf
    public final zznf zzc(zzmh zzmhVar) {
        this.zzb = zzmhVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zznf
    public final String zzd() {
        zzmj zzmjVarZzf = this.zza.zzj().zzf();
        return (zzmjVarZzf == null || zzt.zzb(zzmjVarZzf.zzk())) ? "NA" : (String) Preconditions.checkNotNull(zzmjVarZzf.zzk());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_label.zznf
    public final byte[] zze(int i, boolean z) {
        this.zzb.zzf(Boolean.valueOf(1 == (i ^ 1)));
        this.zzb.zze(Boolean.FALSE);
        this.zza.zzi(this.zzb.zzm());
        try {
            zzob.zza();
            zzkg zzkgVar = this.zza;
            if (i == 0) {
                return new JsonDataEncoderBuilder().configureWith(zzip.zza).ignoreNullValues(true).build().encode(zzkgVar.zzj()).getBytes("utf-8");
            }
            zzki zzkiVarZzj = zzkgVar.zzj();
            zzcq zzcqVar = new zzcq();
            zzip.zza.configure(zzcqVar);
            return zzcqVar.zza().zza(zzkiVarZzj);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }
}
