package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzavx extends zzavz {
    private final byte[] zzb;
    private final int zzc;
    private final int zzd;

    public zzavx(byte[] bArr, int i, int i2) {
        super(null);
        zzawb.zzk(i, i + i2, bArr.length);
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final byte zza(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final zzawb zzc(int i, int i2) {
        int iZzk = zzawb.zzk(i, i2, this.zzd);
        return iZzk == 0 ? zzawb.zza : new zzavx(this.zzb, this.zzc + i, iZzk);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final void zzd(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, this.zzc, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final boolean zze(zzawb zzawbVar) {
        boolean z = zzawbVar instanceof zzawa;
        if (!z && !(zzawbVar instanceof zzavx)) {
            return zzawbVar.zze(this);
        }
        int i = this.zzd;
        if (i > zzawbVar.zzb()) {
            zzxg$$ExternalSyntheticBUOutline1.m338m(String.valueOf(i).length() + 18 + String.valueOf(i).length(), i);
            return false;
        }
        if (i > zzawbVar.zzb()) {
            int iZzb = zzawbVar.zzb();
            zzxg$$ExternalSyntheticBUOutline0.m337m(String.valueOf(i).length() + 27 + String.valueOf(iZzb).length(), "Ran off end of other: 0, ", i, ", ", iZzb);
            return false;
        }
        if (z) {
            return zzawb.zzl(this.zzb, this.zzc, ((zzawa) zzawbVar).zzg(), 0, i);
        }
        if (zzawbVar instanceof zzavx) {
            zzavx zzavxVar = (zzavx) zzawbVar;
            return zzawb.zzl(this.zzb, this.zzc, zzavxVar.zzb, zzavxVar.zzc, i);
        }
        zzawb zzawbVarZzc = zzawbVar.zzc(0, i);
        int i2 = this.zzc;
        return zzawbVarZzc.equals(zzc(i2, i + i2));
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final int zzf(int i, int i2, int i3) {
        return zzaxi.zzb(i, this.zzb, this.zzc, i3);
    }

    public final /* synthetic */ byte[] zzg() {
        return this.zzb;
    }

    public final /* synthetic */ int zzh() {
        return this.zzc;
    }
}
