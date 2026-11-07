package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.vision.zzid$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
final class zzaem extends zzaeo {
    private final byte[] zzb;
    private final int zzc;
    private final int zzd;

    public zzaem(byte[] bArr, int i, int i2) {
        super(null);
        zzaer.zzB(i, i + i2, bArr.length);
        this.zzb = bArr;
        this.zzc = i;
        this.zzd = i2;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final byte zza(int i) {
        return this.zzb[this.zzc + i];
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzb() {
        return this.zzd;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzc(int i, int i2) {
        int iZzB = zzaer.zzB(i, i2, this.zzd);
        return iZzB == 0 ? zzaer.zza : new zzaem(this.zzb, this.zzc + i, iZzB);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzd(int i, int i2) {
        int iZzB = zzaer.zzB(i, i2, this.zzd);
        return iZzB == 0 ? zzaer.zza : new zzaem(this.zzb, this.zzc + i, iZzB);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, this.zzc + i, bArr, i2, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final ByteBuffer zzf() {
        return ByteBuffer.wrap(this.zzb, this.zzc, this.zzd).asReadOnlyBuffer();
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zzg(zzaej zzaejVar) {
        ((zzaex) zzaejVar).zzr(this.zzb, this.zzc, this.zzd);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final String zzh(Charset charset) {
        return new String(this.zzb, this.zzc, this.zzd, charset);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final boolean zzi(zzaer zzaerVar) {
        return ((zzaerVar instanceof zzaep) || (zzaerVar instanceof zzaem)) ? zzj(zzaerVar, 0, this.zzd) : zzaerVar.zzi(this);
    }

    @Override // com.google.android.recaptcha.internal.zzaeo
    public final boolean zzj(zzaer zzaerVar, int i, int i2) {
        if (i2 > zzaerVar.zzb()) {
            int i3 = this.zzd;
            zzid$$ExternalSyntheticBUOutline0.m333m(String.valueOf(i2).length() + 18 + String.valueOf(i3).length(), i2, i3);
            return false;
        }
        int i4 = i + i2;
        if (i4 <= zzaerVar.zzb()) {
            if (zzaerVar instanceof zzaep) {
                return zzaer.zzC(this.zzb, this.zzc, ((zzaep) zzaerVar).zzm(), i, i2);
            }
            if (zzaerVar instanceof zzaem) {
                zzaem zzaemVar = (zzaem) zzaerVar;
                return zzaer.zzC(this.zzb, this.zzc, zzaemVar.zzb, zzaemVar.zzc + i, i2);
            }
            zzaer zzaerVarZzd = zzaerVar.zzd(i, i4);
            int i5 = this.zzc;
            return zzaerVarZzd.equals(zzd(i5, i2 + i5));
        }
        int iZzb = zzaerVar.zzb();
        int length = String.valueOf(i).length();
        StringBuilder sb = new StringBuilder(length + 24 + String.valueOf(i2).length() + 2 + String.valueOf(iZzb).length());
        sb.append("Ran off end of other: ");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(", ");
        sb.append(iZzb);
        throw new IllegalArgumentException(sb.toString());
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzk(int i, int i2, int i3) {
        return zzagf.zzc(i, this.zzb, this.zzc + i2, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaev zzl() {
        return zzaev.zzE(this.zzb, this.zzc, this.zzd, true);
    }

    public final /* synthetic */ byte[] zzm() {
        return this.zzb;
    }

    public final /* synthetic */ int zzn() {
        return this.zzc;
    }
}
