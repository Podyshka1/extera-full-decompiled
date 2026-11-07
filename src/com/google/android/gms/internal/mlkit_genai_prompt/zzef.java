package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.cast.MediaError;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzef extends zzem {
    private ParcelFileDescriptor zza;
    private int zzb;
    private int zzc;
    private int zzd;
    private String zze;
    private byte zzf;
    private int zzg;
    private zzwh zzh;

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zza(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza = parcelFileDescriptor;
        return this;
    }

    public final zzem zzb(float f) {
        this.zzf = (byte) (this.zzf | 1);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzc(int i) {
        this.zzb = 1;
        this.zzf = (byte) (this.zzf | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzd(int i) {
        this.zzc = MediaError.DetailedErrorCode.SEGMENT_UNKNOWN;
        this.zzf = (byte) (this.zzf | 4);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zze(int i) {
        this.zzd = 1;
        this.zzf = (byte) (this.zzf | 8);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzf(int i) {
        this.zzf = (byte) (this.zzf | 16);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzg(int i) {
        this.zzf = (byte) (this.zzf | 32);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzh(int i) {
        this.zzf = (byte) (this.zzf | 64);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzi(String str) {
        this.zze = str;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzj(int i) {
        this.zzf = (byte) (this.zzf | ByteCompanionObject.MIN_VALUE);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzeo zzk() {
        ParcelFileDescriptor parcelFileDescriptor;
        int i;
        if (this.zzf == -1 && (parcelFileDescriptor = this.zza) != null && (i = this.zzg) != 0) {
            return new zzeg(null, parcelFileDescriptor, null, 0.0f, this.zzb, this.zzc, this.zzd, null, 0, 0, 0, i, this.zze, null, 0, this.zzh, null);
        }
        StringBuilder sb = new StringBuilder();
        if (this.zza == null) {
            sb.append(" cortanaStateFileDescriptorToWrite");
        }
        if ((this.zzf & 1) == 0) {
            sb.append(" temperature");
        }
        if ((this.zzf & 2) == 0) {
            sb.append(" topK");
        }
        if ((this.zzf & 4) == 0) {
            sb.append(" targetReplyLengthMax");
        }
        if ((this.zzf & 8) == 0) {
            sb.append(" numSamples");
        }
        if ((this.zzf & 16) == 0) {
            sb.append(" preferredImageWidth");
        }
        if ((this.zzf & 32) == 0) {
            sb.append(" preferredImageHeight");
        }
        if ((this.zzf & 64) == 0) {
            sb.append(" numSoftTokens");
        }
        if (this.zzg == 0) {
            sb.append(" cortanaType");
        }
        if ((this.zzf & ByteCompanionObject.MIN_VALUE) == 0) {
            sb.append(" tokenOffset");
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Missing required properties:".concat(sb.toString()));
        return null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzl(int i) {
        this.zzg = i;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzem
    public final zzem zzm(zzwh zzwhVar) {
        this.zzh = zzwhVar;
        return this;
    }
}
