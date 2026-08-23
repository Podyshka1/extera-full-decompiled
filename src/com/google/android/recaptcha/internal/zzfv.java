package com.google.android.recaptcha.internal;

import java.io.IOException;
import javax.annotation.CheckForNull;
import kotlin.UByte;

/* JADX INFO: loaded from: classes5.dex */
final class zzfv extends zzfx {
    public zzfv(String str, String str2, @CheckForNull Character ch) {
        zzft zzftVar = new zzft(str, str2.toCharArray());
        super(zzftVar, ch);
        zzff.zza(zzftVar.zzf.length == 64);
    }

    @Override // com.google.android.recaptcha.internal.zzfx, com.google.android.recaptcha.internal.zzfy
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzfw {
        CharSequence charSequenceZze = zze(charSequence);
        if (!this.zzb.zzc(charSequenceZze.length())) {
            throw new zzfw("Invalid input length " + charSequenceZze.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequenceZze.length()) {
            int i3 = i2 + 1;
            int iZzb = (this.zzb.zzb(charSequenceZze.charAt(i)) << 18) | (this.zzb.zzb(charSequenceZze.charAt(i + 1)) << 12);
            bArr[i2] = (byte) (iZzb >>> 16);
            int i4 = i + 2;
            if (i4 < charSequenceZze.length()) {
                int i5 = i + 3;
                int iZzb2 = iZzb | (this.zzb.zzb(charSequenceZze.charAt(i4)) << 6);
                int i6 = i2 + 2;
                bArr[i3] = (byte) ((iZzb2 >>> 8) & 255);
                if (i5 < charSequenceZze.length()) {
                    i += 4;
                    i2 += 3;
                    bArr[i6] = (byte) ((iZzb2 | this.zzb.zzb(charSequenceZze.charAt(i5))) & 255);
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

    @Override // com.google.android.recaptcha.internal.zzfx, com.google.android.recaptcha.internal.zzfy
    public final void zzb(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        zzff.zzd(0, i2, bArr.length);
        for (int i4 = i2; i4 >= 3; i4 -= 3) {
            int i5 = bArr[i3] & UByte.MAX_VALUE;
            int i6 = ((bArr[i3 + 1] & UByte.MAX_VALUE) << 8) | (i5 << 16) | (bArr[i3 + 2] & UByte.MAX_VALUE);
            appendable.append(this.zzb.zza(i6 >>> 18));
            appendable.append(this.zzb.zza((i6 >>> 12) & 63));
            appendable.append(this.zzb.zza((i6 >>> 6) & 63));
            appendable.append(this.zzb.zza(i6 & 63));
            i3 += 3;
        }
        if (i3 < i2) {
            zzf(appendable, bArr, i3, i2 - i3);
        }
    }
}
