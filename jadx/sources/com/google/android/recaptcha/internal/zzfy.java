package com.google.android.recaptcha.internal;

import java.io.IOException;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzfy {
    private static final zzfy zza;
    private static final zzfy zzb;
    private static final zzfy zzc;
    private static final zzfy zzd;
    private static final zzfy zze;

    static {
        Character chValueOf = Character.valueOf(SignatureVisitor.INSTANCEOF);
        zza = new zzfv("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", chValueOf);
        zzb = new zzfv("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", chValueOf);
        zzc = new zzfx("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", chValueOf);
        zzd = new zzfx("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", chValueOf);
        zze = new zzfu("base16()", "0123456789ABCDEF");
    }

    zzfy() {
    }

    public static zzfy zzg() {
        return zza;
    }

    public static zzfy zzh() {
        return zzb;
    }

    abstract int zza(byte[] bArr, CharSequence charSequence);

    abstract void zzb(Appendable appendable, byte[] bArr, int i, int i2);

    abstract int zzc(int i);

    abstract int zzd(int i);

    CharSequence zze(CharSequence charSequence) {
        throw null;
    }

    public final String zzi(byte[] bArr, int i, int i2) {
        zzff.zzd(0, i2, bArr.length);
        StringBuilder sb = new StringBuilder(zzd(i2));
        try {
            zzb(sb, bArr, 0, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] zzj(CharSequence charSequence) {
        try {
            CharSequence charSequenceZze = zze(charSequence);
            int iZzc = zzc(charSequenceZze.length());
            byte[] bArr = new byte[iZzc];
            int iZza = zza(bArr, charSequenceZze);
            if (iZza == iZzc) {
                return bArr;
            }
            byte[] bArr2 = new byte[iZza];
            System.arraycopy(bArr, 0, bArr2, 0, iZza);
            return bArr2;
        } catch (zzfw e) {
            throw new IllegalArgumentException(e);
        }
    }
}
