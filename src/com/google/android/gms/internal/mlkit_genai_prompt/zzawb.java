package com.google.android.gms.internal.mlkit_genai_prompt;

import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline1;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzawb implements Iterable, Serializable {
    public static final zzawb zza = new zzawa(zzaxi.zza);
    private int zzb = 0;

    static {
        int i = zzavq.$r8$clinit;
    }

    public static zzawb zzi(byte[] bArr, int i, int i2) {
        try {
            zzk(i, i + i2, bArr.length);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new zzawa(bArr2);
        } catch (zzaxm e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static /* synthetic */ boolean zzl(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzk(i, i4, bArr.length);
        zzk(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzawb)) {
            return false;
        }
        zzawb zzawbVar = (zzawb) obj;
        int iZzb = zzb();
        if (iZzb != zzawbVar.zzb()) {
            return false;
        }
        if (iZzb == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzawbVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zze(zzawbVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzf = this.zzb;
        if (iZzf == 0) {
            int iZzb = zzb();
            iZzf = zzf(iZzb, 0, iZzb);
            if (iZzf == 0) {
                iZzf = 1;
            }
            this.zzb = iZzf;
        }
        return iZzf;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzavv(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzb()), zzb() <= 50 ? zzayo.zza(zzj()) : zzayo.zza(zzc(0, 47).zzj()).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zzb();

    public abstract zzawb zzc(int i, int i2);

    public abstract void zzd(byte[] bArr, int i, int i2, int i3);

    public abstract boolean zze(zzawb zzawbVar);

    public abstract int zzf(int i, int i2, int i3);

    public final byte[] zzj() {
        int iZzb = zzb();
        if (iZzb == 0) {
            return zzaxi.zza;
        }
        byte[] bArr = new byte[iZzb];
        zzd(bArr, 0, 0, iZzb);
        return bArr;
    }

    public static int zzk(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            zzxk$$ExternalSyntheticBUOutline1.m340m(String.valueOf(i).length() + 21, i);
            return 0;
        }
        if (i2 < i) {
            zzxk$$ExternalSyntheticBUOutline0.m339m(String.valueOf(i).length() + 44 + String.valueOf(i2).length(), "Beginning index larger than ending index: ", i, ", ", i2);
            return 0;
        }
        zzxk$$ExternalSyntheticBUOutline0.m339m(String.valueOf(i2).length() + 15 + String.valueOf(i3).length(), "End index: ", i2, " >= ", i3);
        return 0;
    }
}
