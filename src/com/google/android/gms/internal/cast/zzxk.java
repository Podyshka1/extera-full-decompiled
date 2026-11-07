package com.google.android.gms.internal.cast;

import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxk implements Iterable, Serializable {
    public static final zzxk zza = new zzxj(zzym.zzb);
    private int zzb = 0;

    static {
        int i = zzxb.$r8$clinit;
    }

    public static /* synthetic */ boolean zzk(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzj(i, i4, bArr.length);
        zzj(i2, i3 + i2, bArr2.length);
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
        if (!(obj instanceof zzxk)) {
            return false;
        }
        zzxk zzxkVar = (zzxk) obj;
        int iZzc = zzc();
        if (iZzc != zzxkVar.zzc()) {
            return false;
        }
        if (iZzc == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzxkVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zzf(zzxkVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzg = this.zzb;
        if (iZzg == 0) {
            int iZzc = zzc();
            iZzg = zzg(iZzc, 0, iZzc);
            if (iZzg == 0) {
                iZzg = 1;
            }
            this.zzb = iZzg;
        }
        return iZzg;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzxe(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzc()), zzc() <= 50 ? zzaab.zza(this) : zzaab.zza(zzd(0, 47)).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzc();

    public abstract zzxk zzd(int i, int i2);

    public abstract void zze(zzxd zzxdVar);

    public abstract boolean zzf(zzxk zzxkVar);

    public abstract int zzg(int i, int i2, int i3);

    public static int zzj(int i, int i2, int i3) {
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
