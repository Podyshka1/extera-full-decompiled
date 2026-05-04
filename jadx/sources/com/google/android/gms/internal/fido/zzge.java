package com.google.android.gms.internal.fido;

import java.math.RoundingMode;
import org.mvel2.asm.signature.SignatureVisitor;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
class zzge extends zzgf {
    private volatile zzgf zza;
    final zzgb zzb;
    final Character zzc;

    zzge(zzgb zzgbVar, Character ch) {
        this.zzb = zzgbVar;
        if (ch != null && zzgbVar.zzc(SignatureVisitor.INSTANCEOF)) {
            throw new IllegalArgumentException(zzbo.zza("Padding character %s was already in alphabet", ch));
        }
        this.zzc = ch;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzge) {
            zzge zzgeVar = (zzge) obj;
            if (this.zzb.equals(zzgeVar.zzb) && Objects.equals(this.zzc, zzgeVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Character ch = this.zzc;
        return Objects.hashCode(ch) ^ this.zzb.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        sb.append(this.zzb);
        if (8 % this.zzb.zzb != 0) {
            if (this.zzc == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(this.zzc);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    zzgf zza(zzgb zzgbVar, Character ch) {
        return new zzge(zzgbVar, ch);
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    void zzb(Appendable appendable, byte[] bArr, int i, int i2) {
        int i3 = 0;
        zzbm.zze(0, i2, bArr.length);
        while (i3 < i2) {
            zze(appendable, bArr, i3, Math.min(this.zzb.zzd, i2 - i3));
            i3 += this.zzb.zzd;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    final int zzc(int i) {
        zzgb zzgbVar = this.zzb;
        return zzgbVar.zzc * zzgh.zza(i, zzgbVar.zzd, RoundingMode.CEILING);
    }

    @Override // com.google.android.gms.internal.fido.zzgf
    public final zzgf zzd() {
        zzgf zzgfVarZza = this.zza;
        if (zzgfVarZza == null) {
            zzgb zzgbVar = this.zzb;
            zzgb zzgbVarZzb = zzgbVar.zzb();
            zzgfVarZza = zzgbVarZzb == zzgbVar ? this : zza(zzgbVarZzb, this.zzc);
            this.zza = zzgfVarZza;
        }
        return zzgfVarZza;
    }

    final void zze(Appendable appendable, byte[] bArr, int i, int i2) {
        zzbm.zze(i, i + i2, bArr.length);
        int i3 = 0;
        zzbm.zzc(i2 <= this.zzb.zzd);
        long j = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            j = (j | ((long) (bArr[i + i4] & 255))) << 8;
        }
        int i5 = (i2 + 1) * 8;
        zzgb zzgbVar = this.zzb;
        while (i3 < i2 * 8) {
            long j2 = j >>> ((i5 - zzgbVar.zzb) - i3);
            zzgb zzgbVar2 = this.zzb;
            appendable.append(zzgbVar2.zza(((int) j2) & zzgbVar2.zza));
            i3 += this.zzb.zzb;
        }
        if (this.zzc != null) {
            while (i3 < this.zzb.zzd * 8) {
                this.zzc.getClass();
                appendable.append(SignatureVisitor.INSTANCEOF);
                i3 += this.zzb.zzb;
            }
        }
    }

    zzge(String str, String str2, Character ch) {
        this(new zzgb(str, str2.toCharArray()), ch);
    }
}
