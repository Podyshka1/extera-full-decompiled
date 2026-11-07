package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzs extends zzae {
    private zzml zza;
    private int zzb;
    private int zzc;
    private int zzd;
    private zzbb zze;
    private zzml zzf;
    private String zzg;
    private String zzh;
    private int zzi;
    private int zzj;
    private short zzk;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zza(List list) {
        this.zza = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzb(float f) {
        this.zzk = (short) (this.zzk | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzc(int i) {
        this.zzb = i;
        this.zzk = (short) (this.zzk | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzd(int i) {
        this.zzc = i;
        this.zzk = (short) (this.zzk | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zze(int i) {
        this.zzd = i;
        this.zzk = (short) (this.zzk | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzf(zzbb zzbbVar) {
        this.zze = zzbbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzg(zzml zzmlVar) {
        if (zzmlVar != null) {
            this.zzf = zzmlVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null cortanaStateFileDescriptorsToRead");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzh(int i) {
        this.zzk = (short) (this.zzk | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzi(int i) {
        this.zzk = (short) (this.zzk | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzj(String str) {
        this.zzg = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzk(String str) {
        this.zzh = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzl(int i) {
        this.zzi = i;
        this.zzk = (short) (this.zzk | 64);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzm(int i) {
        this.zzk = (short) (this.zzk | 128);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzae zzn(int i) {
        this.zzj = 1;
        this.zzk = (short) (this.zzk | 256);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzae
    public final zzaf zzo() {
        if (this.zzk == 511 && this.zza != null && this.zzf != null && this.zzg != null) {
            return new zzaf(this.zza, 0.0f, this.zzb, this.zzc, (zzbc) null, this.zzd, this.zze, this.zzf, 0, 0, (String) null, this.zzg, this.zzh, (String) null, this.zzi, 0, this.zzj);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" messages");
        }
        if ((this.zzk & 1) == 0) {
            sb.append(" temperature");
        }
        if ((this.zzk & 2) == 0) {
            sb.append(" topK");
        }
        if ((this.zzk & 4) == 0) {
            sb.append(" targetReplyLengthMax");
        }
        if ((this.zzk & 8) == 0) {
            sb.append(" numSamples");
        }
        if (this.zzf == null) {
            sb.append(" cortanaStateFileDescriptorsToRead");
        }
        if ((this.zzk & 16) == 0) {
            sb.append(" preferredImageWidth");
        }
        if ((this.zzk & 32) == 0) {
            sb.append(" preferredImageHeight");
        }
        if (this.zzg == null) {
            sb.append(" cortanaType");
        }
        if ((this.zzk & 64) == 0) {
            sb.append(" tokenOffset");
        }
        if ((this.zzk & 128) == 0) {
            sb.append(" numSoftTokens");
        }
        if ((this.zzk & 256) == 0) {
            sb.append(" safetyClassificationMode");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
