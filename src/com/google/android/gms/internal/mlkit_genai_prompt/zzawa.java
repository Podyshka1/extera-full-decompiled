package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline1;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class zzawa extends zzavz {
    private final byte[] zzb;

    public zzawa(byte[] bArr) {
        super(null);
        this.zzb = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final int zzb() {
        return this.zzb.length;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final zzawb zzc(int i, int i2) {
        byte[] bArr = this.zzb;
        int iZzk = zzawb.zzk(0, i2, bArr.length);
        return iZzk == 0 ? zzawb.zza : new zzavx(bArr, 0, iZzk);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final void zzd(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, 0, bArr, 0, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final boolean zze(zzawb zzawbVar) {
        boolean z = zzawbVar instanceof zzawa;
        if (z) {
            return Arrays.equals(this.zzb, ((zzawa) zzawbVar).zzb);
        }
        boolean z2 = zzawbVar instanceof zzavx;
        if (!z2) {
            return zzawbVar.zze(this);
        }
        byte[] bArr = this.zzb;
        int iZzb = zzawbVar.zzb();
        int length = bArr.length;
        if (length > iZzb) {
            zzxg$$ExternalSyntheticBUOutline1.m314m(String.valueOf(length).length() + 18 + String.valueOf(length).length(), length);
            return false;
        }
        if (length > zzawbVar.zzb()) {
            int iZzb2 = zzawbVar.zzb();
            zzxg$$ExternalSyntheticBUOutline0.m313m(String.valueOf(length).length() + 27 + String.valueOf(iZzb2).length(), "Ran off end of other: 0, ", length, ", ", iZzb2);
            return false;
        }
        if (z) {
            return zzawb.zzl(bArr, 0, ((zzawa) zzawbVar).zzb, 0, length);
        }
        if (!z2) {
            return zzawbVar.zzc(0, length).equals(zzc(0, length));
        }
        zzavx zzavxVar = (zzavx) zzawbVar;
        return zzawb.zzl(bArr, 0, zzavxVar.zzg(), zzavxVar.zzh(), length);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzawb
    public final int zzf(int i, int i2, int i3) {
        return zzaxi.zzb(i, this.zzb, 0, i3);
    }

    public final /* synthetic */ byte[] zzg() {
        return this.zzb;
    }
}
