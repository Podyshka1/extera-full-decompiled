package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes5.dex */
final class zzhh extends zzhx {
    private zzml zza;
    private float zzb;
    private int zzc;
    private float zzd;
    private zzml zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private zzik zzi;
    private boolean zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private zzeb zzn;
    private zzhu zzo;
    private zzib zzp;
    private boolean zzq;
    private zzja zzr;
    private short zzs;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zza(List list) {
        this.zza = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzb(float f) {
        this.zzb = f;
        this.zzs = (short) (this.zzs | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzc(int i) {
        this.zzc = i;
        this.zzs = (short) (this.zzs | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzd(float f) {
        this.zzd = 1.0f;
        this.zzs = (short) (this.zzs | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zze(List list) {
        this.zze = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzf(int i) {
        this.zzf = i;
        this.zzs = (short) (this.zzs | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzg(int i) {
        this.zzg = i;
        this.zzs = (short) (this.zzs | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzh(int i) {
        this.zzh = i;
        this.zzs = (short) (this.zzs | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzi(zzik zzikVar) {
        this.zzi = zzikVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzj(boolean z) {
        this.zzj = true;
        this.zzs = (short) (this.zzs | 64);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzk(int i) {
        this.zzk = i;
        this.zzs = (short) (this.zzs | 128);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzl(int i) {
        this.zzl = i;
        this.zzs = (short) (this.zzs | 256);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzm(int i) {
        this.zzs = (short) (this.zzs | 512);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzn(int i) {
        this.zzm = i;
        this.zzs = (short) (this.zzs | 1024);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzo(zzeb zzebVar) {
        if (zzebVar != null) {
            this.zzn = zzebVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null userProperties");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzp(int i) {
        this.zzs = (short) (this.zzs | 2048);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzq(zzhu zzhuVar) {
        this.zzo = zzhuVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzr(zzib zzibVar) {
        this.zzp = zzibVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzs(boolean z) {
        this.zzq = z;
        this.zzs = (short) (this.zzs | 4096);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhx zzt(zzja zzjaVar) {
        if (zzjaVar != null) {
            this.zzr = zzjaVar;
            return this;
        }
        f$$ExternalSyntheticBUOutline2.m216m("Null tools");
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzhx
    public final zzhy zzu() {
        zzml zzmlVar;
        zzml zzmlVar2;
        zzeb zzebVar;
        zzja zzjaVar;
        if (this.zzs == 8191 && (zzmlVar = this.zza) != null && (zzmlVar2 = this.zze) != null && (zzebVar = this.zzn) != null && (zzjaVar = this.zzr) != null) {
            return new zzhi(zzmlVar, this.zzb, this.zzc, this.zzd, zzmlVar2, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk, this.zzl, 0, null, null, null, this.zzm, zzebVar, 0, this.zzo, this.zzp, this.zzq, zzjaVar, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" messages");
        }
        if ((this.zzs & 1) == 0) {
            sb.append(" temperature");
        }
        if ((this.zzs & 2) == 0) {
            sb.append(" topK");
        }
        if ((this.zzs & 4) == 0) {
            sb.append(" topP");
        }
        if (this.zze == null) {
            sb.append(" stopTokensList");
        }
        if ((this.zzs & 8) == 0) {
            sb.append(" targetReplyLengthMin");
        }
        if ((this.zzs & 16) == 0) {
            sb.append(" targetReplyLengthMax");
        }
        if ((this.zzs & 32) == 0) {
            sb.append(" numSamples");
        }
        if ((this.zzs & 64) == 0) {
            sb.append(" shouldApplySafetyFilter");
        }
        if ((this.zzs & 128) == 0) {
            sb.append(" preferredImageWidth");
        }
        if ((this.zzs & 256) == 0) {
            sb.append(" preferredImageHeight");
        }
        if ((this.zzs & 512) == 0) {
            sb.append(" numSoftTokens");
        }
        if ((this.zzs & 1024) == 0) {
            sb.append(" rngSeed");
        }
        if (this.zzn == null) {
            sb.append(" userProperties");
        }
        if ((this.zzs & 2048) == 0) {
            sb.append(" overrideRequestKind");
        }
        if ((this.zzs & 4096) == 0) {
            sb.append(" enableThinking");
        }
        if (this.zzr == null) {
            sb.append(" tools");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
