package com.google.android.recaptcha.internal;

import androidx.core.app.NavUtils$$ExternalSyntheticBUOutline0;
import java.io.IOException;
import okio.Buffer$$ExternalSyntheticBUOutline2;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzrv {
    private static final zzrv zza;
    private static final zzrv zzb;

    static {
        Character chValueOf = Character.valueOf(SignatureVisitor.INSTANCEOF);
        zza = new zzrs("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        zzb = new zzrs("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        new zzru("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        new zzru("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        int i = zzrr.$r8$clinit;
        zzrq zzrqVar = new zzrq("base16()", "0123456789ABCDEF".toCharArray());
        new zzru(zzrqVar, null);
        char[] cArr = new char[512];
        zzoq.zza(zzrqVar.zze().length == 16);
        for (int i2 = 0; i2 < 256; i2++) {
            cArr[i2] = zzrqVar.zza(i2 >>> 4);
            cArr[i2 | 256] = zzrqVar.zza(i2 & 15);
        }
    }

    public static zzrv zzi() {
        return zza;
    }

    public static zzrv zzj() {
        return zzb;
    }

    public abstract void zza(Appendable appendable, byte[] bArr, int i, int i2);

    public abstract int zzb(byte[] bArr, CharSequence charSequence);

    public abstract int zzc(int i);

    public abstract int zze(int i);

    public abstract CharSequence zzf(CharSequence charSequence);

    public final String zzg(byte[] bArr, int i, int i2) {
        zzoq.zzg(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(zzc(i2));
        try {
            zza(sb, bArr, 0, i2);
            return sb.toString();
        } catch (IOException e) {
            Buffer$$ExternalSyntheticBUOutline2.m965m(e);
            return null;
        }
    }

    public final byte[] zzh(CharSequence charSequence) {
        try {
            CharSequence charSequenceZzf = zzf(charSequence);
            int iZze = zze(charSequenceZzf.length());
            byte[] bArr = new byte[iZze];
            int iZzb = zzb(bArr, charSequenceZzf);
            if (iZzb == iZze) {
                return bArr;
            }
            byte[] bArr2 = new byte[iZzb];
            System.arraycopy(bArr, 0, bArr2, 0, iZzb);
            return bArr2;
        } catch (zzrt e) {
            NavUtils$$ExternalSyntheticBUOutline0.m89m(e);
            return null;
        }
    }
}
