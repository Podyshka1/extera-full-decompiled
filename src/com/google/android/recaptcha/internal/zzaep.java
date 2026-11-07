package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.vision.zzid$$ExternalSyntheticBUOutline0;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
final class zzaep extends zzaeo {
    private final byte[] zzb;

    public zzaep(byte[] bArr) {
        super(null);
        bArr.getClass();
        this.zzb = bArr;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final byte zza(int i) {
        return this.zzb[i];
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final int zzb() {
        return this.zzb.length;
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzc(int i, int i2) {
        byte[] bArr = this.zzb;
        int iZzB = zzaer.zzB(i, i2, bArr.length);
        return iZzB == 0 ? zzaer.zza : new zzaem(bArr, i, iZzB);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaer zzd(int i, int i2) {
        byte[] bArr = this.zzb;
        int iZzB = zzaer.zzB(i, i2, bArr.length);
        return iZzB == 0 ? zzaer.zza : new zzaem(bArr, i, iZzB);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zze(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.zzb, i, bArr, i2, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final ByteBuffer zzf() {
        return ByteBuffer.wrap(this.zzb).asReadOnlyBuffer();
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final void zzg(zzaej zzaejVar) {
        byte[] bArr = this.zzb;
        ((zzaex) zzaejVar).zzr(bArr, 0, bArr.length);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final String zzh(Charset charset) {
        return new String(this.zzb, charset);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final boolean zzi(zzaer zzaerVar) {
        return zzaerVar instanceof zzaep ? Arrays.equals(this.zzb, ((zzaep) zzaerVar).zzb) : zzaerVar instanceof zzaem ? zzj(zzaerVar, 0, this.zzb.length) : zzaerVar.zzi(this);
    }

    @Override // com.google.android.recaptcha.internal.zzaeo
    public final boolean zzj(zzaer zzaerVar, int i, int i2) {
        if (i2 > zzaerVar.zzb()) {
            byte[] bArr = this.zzb;
            int length = String.valueOf(i2).length();
            int length2 = bArr.length;
            zzid$$ExternalSyntheticBUOutline0.m333m(length + 18 + String.valueOf(length2).length(), i2, length2);
            return false;
        }
        int i3 = i + i2;
        if (i3 <= zzaerVar.zzb()) {
            if (zzaerVar instanceof zzaep) {
                return zzaer.zzC(this.zzb, 0, ((zzaep) zzaerVar).zzb, i, i2);
            }
            if (!(zzaerVar instanceof zzaem)) {
                return zzaerVar.zzd(i, i3).equals(zzd(0, i2));
            }
            zzaem zzaemVar = (zzaem) zzaerVar;
            return zzaer.zzC(this.zzb, 0, zzaemVar.zzm(), zzaemVar.zzn() + i, i2);
        }
        int iZzb = zzaerVar.zzb();
        int length3 = String.valueOf(i).length();
        StringBuilder sb = new StringBuilder(length3 + 24 + String.valueOf(i2).length() + 2 + String.valueOf(iZzb).length());
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
        return zzagf.zzc(i, this.zzb, i2, i3);
    }

    @Override // com.google.android.recaptcha.internal.zzaer
    public final zzaev zzl() {
        byte[] bArr = this.zzb;
        return zzaev.zzE(bArr, 0, bArr.length, true);
    }

    public final /* synthetic */ byte[] zzm() {
        return this.zzb;
    }
}
