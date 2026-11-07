package com.google.android.gms.internal.mlkit_vision_subject_segmentation;

import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.UnsupportedEncodingException;

/* JADX INFO: loaded from: classes5.dex */
public final class zzto implements zzta {
    private final zzoc zza;
    private zzsa zzb = new zzsa();
    private final int zzc;

    private zzto(zzoc zzocVar, int i) {
        this.zza = zzocVar;
        zztx.zza();
        this.zzc = i;
    }

    public static zzta zzf(zzoc zzocVar) {
        return new zzto(zzocVar, 0);
    }

    public static zzta zzg(zzoc zzocVar, int i) {
        return new zzto(zzocVar, 1);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta
    public final int zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta
    public final zzta zzb(zzob zzobVar) {
        this.zza.zzf(zzobVar);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta
    public final zzta zzc(zzsa zzsaVar) {
        this.zzb = zzsaVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta
    public final String zzd() {
        zzsc zzscVarZzg = this.zza.zzk().zzg();
        return (zzscVarZzg == null || zzj.zzb(zzscVarZzg.zzk())) ? "NA" : (String) Preconditions.checkNotNull(zzscVarZzg.zzk());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_subject_segmentation.zzta
    public final byte[] zze(int i, boolean z) {
        this.zzb.zzf(Boolean.valueOf(1 == (i ^ 1)));
        this.zzb.zze(Boolean.FALSE);
        this.zza.zzj(this.zzb.zzm());
        try {
            zztx.zza();
            zzoc zzocVar = this.zza;
            if (i == 0) {
                return new JsonDataEncoderBuilder().configureWith(zzlw.zza).ignoreNullValues(true).build().encode(zzocVar.zzk()).getBytes("utf-8");
            }
            zzoe zzoeVarZzk = zzocVar.zzk();
            zzch zzchVar = new zzch();
            zzlw.zza.configure(zzchVar);
            return zzchVar.zza().zza(zzoeVarZzk);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException("Failed to covert logging to UTF-8 byte array", e);
        }
    }
}
