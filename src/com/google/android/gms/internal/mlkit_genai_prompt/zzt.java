package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.Bundle;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzt extends zzcf {
    private zzml zza;
    private float zzb;
    private int zzc;
    private zzml zzd;
    private int zze;
    private int zzf;
    private zzbl zzg;
    private boolean zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private Bundle zzl;
    private int zzm;
    private zzcw zzn;
    private zzcb zzo;
    private float zzp;
    private zzcp zzq;
    private boolean zzr;
    private zzdf zzs;
    private short zzt;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zza(List list) {
        this.zza = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzb(float f) {
        this.zzb = f;
        this.zzt = (short) (this.zzt | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzc(int i) {
        this.zzc = i;
        this.zzt = (short) (this.zzt | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzd(List list) {
        this.zzd = zzml.zzq(list);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zze(int i) {
        this.zze = i;
        this.zzt = (short) (this.zzt | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzf(int i) {
        this.zzf = i;
        this.zzt = (short) (this.zzt | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzg(zzbl zzblVar) {
        this.zzg = zzblVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzh(boolean z) {
        this.zzh = z;
        this.zzt = (short) (this.zzt | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzi(int i) {
        this.zzi = i;
        this.zzt = (short) (this.zzt | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzj(int i) {
        this.zzj = i;
        this.zzt = (short) (this.zzt | 64);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzk(int i) {
        this.zzk = i;
        this.zzt = (short) (this.zzt | 128);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzl(Bundle bundle) {
        this.zzl = bundle;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzm(int i) {
        this.zzm = i;
        this.zzt = (short) (this.zzt | 256);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzn(zzcw zzcwVar) {
        this.zzn = zzcwVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzo(int i) {
        this.zzt = (short) (this.zzt | 512);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzp(zzcb zzcbVar) {
        this.zzo = zzcbVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzq(int i) {
        this.zzt = (short) (this.zzt | 1024);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzr(float f) {
        this.zzp = f;
        this.zzt = (short) (this.zzt | 2048);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzs(zzcp zzcpVar) {
        this.zzq = zzcpVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzt(boolean z) {
        this.zzr = z;
        this.zzt = (short) (this.zzt | 4096);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcf zzu(zzdf zzdfVar) {
        this.zzs = zzdfVar;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzcf
    public final zzcg zzv() {
        if (this.zzt == 8191 && this.zza != null && this.zzd != null) {
            return new zzcg(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, (zzbf) null, this.zzj, this.zzk, (String) null, this.zzl, this.zzm, this.zzn, 0, this.zzo, 0, this.zzp, this.zzq, this.zzr, this.zzs);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" messages");
        }
        if ((this.zzt & 1) == 0) {
            sb.append(" temperature");
        }
        if ((this.zzt & 2) == 0) {
            sb.append(" topK");
        }
        if (this.zzd == null) {
            sb.append(" stopTokensList");
        }
        if ((this.zzt & 4) == 0) {
            sb.append(" targetReplyLengthMin");
        }
        if ((this.zzt & 8) == 0) {
            sb.append(" targetReplyLengthMax");
        }
        if ((this.zzt & 16) == 0) {
            sb.append(" applySafetyFilter");
        }
        if ((this.zzt & 32) == 0) {
            sb.append(" numSamples");
        }
        if ((this.zzt & 64) == 0) {
            sb.append(" preferredImageWidth");
        }
        if ((this.zzt & 128) == 0) {
            sb.append(" preferredImageHeight");
        }
        if ((this.zzt & 256) == 0) {
            sb.append(" rngSeed");
        }
        if ((this.zzt & 512) == 0) {
            sb.append(" overrideRequestKind");
        }
        if ((this.zzt & 1024) == 0) {
            sb.append(" numSoftTokens");
        }
        if ((this.zzt & 2048) == 0) {
            sb.append(" topP");
        }
        if ((this.zzt & 4096) == 0) {
            sb.append(" enableThinking");
        }
        Segment$$ExternalSyntheticBUOutline1.m925m("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
