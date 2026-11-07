package com.google.android.recaptcha.internal;

import java.io.IOException;
import java.math.RoundingMode;
import java.util.Objects;
import kotlin.UByte;
import org.mvel2.asm.signature.SignatureVisitor;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
class zzru extends zzrv {
    public static final /* synthetic */ int $r8$clinit = 0;
    final zzrq zza;
    final Character zzb;

    public zzru(zzrq zzrqVar, Character ch) {
        this.zza = zzrqVar;
        if (ch == null || !zzrqVar.zzd(SignatureVisitor.INSTANCEOF)) {
            this.zzb = ch;
        } else {
            f$$ExternalSyntheticBUOutline1.m212m(zzot.zza("Padding character %s was already in alphabet", ch));
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzru) {
            zzru zzruVar = (zzru) obj;
            if (this.zza.equals(zzruVar.zza) && Objects.equals(this.zzb, zzruVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode() ^ Objects.hashCode(this.zzb);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        zzrq zzrqVar = this.zza;
        sb.append(zzrqVar);
        if (8 % zzrqVar.zzb != 0) {
            Character ch = this.zzb;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    @Override // com.google.android.recaptcha.internal.zzrv
    public void zza(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzoq.zzg(0, i2, bArr.length);
        while (i3 < i2) {
            int i4 = this.zza.zzd;
            zzd(appendable, bArr, i3, Math.min(i4, i2 - i3));
            i3 += i4;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzrv
    public int zzb(byte[] bArr, CharSequence charSequence) throws zzrt {
        int i;
        CharSequence charSequenceZzf = zzf(charSequence);
        int length = charSequenceZzf.length();
        zzrq zzrqVar = this.zza;
        if (!zzrqVar.zzb(length)) {
            int length2 = charSequenceZzf.length();
            StringBuilder sb = new StringBuilder(String.valueOf(length2).length() + 21);
            sb.append("Invalid input length ");
            sb.append(length2);
            throw new zzrt(sb.toString());
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < charSequenceZzf.length()) {
            long jZzc = 0;
            int i4 = 0;
            int i5 = 0;
            while (true) {
                i = zzrqVar.zzc;
                if (i4 >= i) {
                    break;
                }
                jZzc <<= zzrqVar.zzb;
                if (i2 + i4 < charSequenceZzf.length()) {
                    jZzc |= (long) zzrqVar.zzc(charSequenceZzf.charAt(i5 + i2));
                    i5++;
                }
                i4++;
            }
            int i6 = zzrqVar.zzd;
            int i7 = i5 * zzrqVar.zzb;
            int i8 = (i6 - 1) * 8;
            while (i8 >= (i6 * 8) - i7) {
                bArr[i3] = (byte) ((jZzc >>> i8) & 255);
                i8 -= 8;
                i3++;
            }
            i2 += i;
        }
        return i3;
    }

    @Override // com.google.android.recaptcha.internal.zzrv
    public final int zzc(int i) {
        zzrq zzrqVar = this.zza;
        return zzrqVar.zzc * zzrx.zzb(i, zzrqVar.zzd, RoundingMode.CEILING);
    }

    public final void zzd(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        zzoq.zzg(i, i + i2, bArr.length);
        zzrq zzrqVar = this.zza;
        int i3 = zzrqVar.zzd;
        int i4 = 0;
        zzoq.zza(i2 <= i3);
        long j = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            j = (j | ((long) (bArr[i + i5] & UByte.MAX_VALUE))) << 8;
        }
        int i6 = (i2 + 1) * 8;
        int i7 = zzrqVar.zzb;
        while (i4 < i2 * 8) {
            appendable.append(zzrqVar.zza(zzrqVar.zza & ((int) (j >>> ((i6 - i7) - i4)))));
            i4 += i7;
        }
        if (this.zzb != null) {
            while (i4 < i3 * 8) {
                appendable.append(SignatureVisitor.INSTANCEOF);
                i4 += i7;
            }
        }
    }

    @Override // com.google.android.recaptcha.internal.zzrv
    public final int zze(int i) {
        return (int) (((((long) this.zza.zzb) * ((long) i)) + 7) / 8);
    }

    public zzru(String str, String str2, Character ch) {
        this(new zzrq(str, str2.toCharArray()), ch);
    }

    @Override // com.google.android.recaptcha.internal.zzrv
    public final CharSequence zzf(CharSequence charSequence) {
        charSequence.getClass();
        if (this.zzb == null) {
            return charSequence;
        }
        int length = charSequence.length();
        do {
            length--;
            if (length < 0) {
                break;
            }
        } while (charSequence.charAt(length) == '=');
        return charSequence.subSequence(0, length + 1);
    }
}
