package com.google.android.gms.internal.play_billing;

import com.android.dex.Dex$$ExternalSyntheticBUOutline0;
import com.google.protobuf.ByteString$$ExternalSyntheticBUOutline2;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzei implements Iterable, Serializable {
    public static final zzei zzb = new zzeg(zzfo.zzb);
    private int zza = 0;

    static {
        int i = zzdv.$r8$clinit;
    }

    public static zzei zzj(byte[] bArr, int i, int i2) {
        zzh(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzeg(bArr2);
    }

    public abstract boolean equals(Object obj);

    public final int hashCode() {
        int iZze = this.zza;
        if (iZze == 0) {
            int iZzd = zzd();
            iZze = zze(iZzd, 0, iZzd);
            if (iZze == 0) {
                iZze = 1;
            }
            this.zza = iZze;
        }
        return iZze;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzea(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzd()), zzd() <= 50 ? zzhf.zza(this) : zzhf.zza(zzf(0, 47)).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract byte zzb(int i);

    public abstract int zzd();

    public abstract int zze(int i, int i2, int i3);

    public abstract zzei zzf(int i, int i2);

    public abstract void zzg(zzdz zzdzVar);

    public final int zzi() {
        return this.zza;
    }

    public static int zzh(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            ByteString$$ExternalSyntheticBUOutline2.m504m("Beginning index: ", i, " < 0");
            return 0;
        }
        if (i2 < i) {
            Dex$$ExternalSyntheticBUOutline0.m218m("Beginning index larger than ending index: ", i, ", ", i2);
            return 0;
        }
        Dex$$ExternalSyntheticBUOutline0.m218m("End index: ", i2, " >= ", i3);
        return 0;
    }
}
