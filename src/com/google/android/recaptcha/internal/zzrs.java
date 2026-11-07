package com.google.android.recaptcha.internal;

import java.io.IOException;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
final class zzrs extends zzru {
    public zzrs(String str, String str2, Character ch) {
        zzrq zzrqVar = new zzrq(str, str2.toCharArray());
        super(zzrqVar, ch);
        zzoq.zza(zzrqVar.zze().length == 64);
    }

    @Override // com.google.android.recaptcha.internal.zzru, com.google.android.recaptcha.internal.zzrv
    public final void zza(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzoq.zzg(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = bArr[i3] & UByte.MAX_VALUE;
            int i6 = bArr[i3 + 1] & UByte.MAX_VALUE;
            int i7 = bArr[i3 + 2] & UByte.MAX_VALUE;
            zzrq zzrqVar = this.zza;
            int i8 = (i6 << 8) | (i5 << 16) | i7;
            appendable.append(zzrqVar.zza(i8 >>> 18));
            appendable.append(zzrqVar.zza((i8 >>> 12) & 63));
            appendable.append(zzrqVar.zza((i8 >>> 6) & 63));
            appendable.append(zzrqVar.zza(i8 & 63));
            i3 += 3;
        }
        if (i3 < i2) {
            zzd(appendable, bArr, i3, i2 - i3);
        }
    }

    @Override // com.google.android.recaptcha.internal.zzru, com.google.android.recaptcha.internal.zzrv
    public final int zzb(byte[] bArr, CharSequence charSequence) throws zzrt {
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
        int i = 0;
        int i2 = 0;
        while (i < charSequenceZzf.length()) {
            int i3 = i2 + 1;
            int iZzc = (zzrqVar.zzc(charSequenceZzf.charAt(i + 1)) << 12) | (zzrqVar.zzc(charSequenceZzf.charAt(i)) << 18);
            bArr[i2] = (byte) (iZzc >>> 16);
            int i4 = i + 2;
            if (i4 < charSequenceZzf.length()) {
                int i5 = i + 3;
                int iZzc2 = iZzc | (zzrqVar.zzc(charSequenceZzf.charAt(i4)) << 6);
                int i6 = i2 + 2;
                bArr[i3] = (byte) ((iZzc2 >>> 8) & 255);
                if (i5 < charSequenceZzf.length()) {
                    i += 4;
                    i2 += 3;
                    bArr[i6] = (byte) ((iZzc2 | zzrqVar.zzc(charSequenceZzf.charAt(i5))) & 255);
                } else {
                    i2 = i6;
                    i = i5;
                }
            } else {
                i = i4;
                i2 = i3;
            }
        }
        return i2;
    }
}
