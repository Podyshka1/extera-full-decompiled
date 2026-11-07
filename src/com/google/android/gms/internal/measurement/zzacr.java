package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline1;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzacr implements Iterable, Serializable {
    public static final zzacr zza = new zzacq(zzaed.zza);
    private int zzb = 0;

    static {
        int i = zzacf.$r8$clinit;
    }

    public static zzacr zzj(byte[] bArr, int i, int i2) {
        try {
            return zzk(bArr, i, i2, false);
        } catch (zzaeh e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static zzacr zzk(byte[] bArr, int i, int i2, boolean z) {
        if (i2 == 0) {
            return zza;
        }
        zzn(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzacq(bArr2);
    }

    public static zzacr zzl(byte[] bArr, boolean z) {
        return bArr.length == 0 ? zza : new zzacq(bArr);
    }

    public static /* synthetic */ boolean zzo(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzn(i, i4, bArr.length);
        zzn(i2, i3 + i2, bArr2.length);
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
        if (!(obj instanceof zzacr)) {
            return false;
        }
        zzacr zzacrVar = (zzacr) obj;
        int iZzb = zzb();
        if (iZzb != zzacrVar.zzb()) {
            return false;
        }
        if (iZzb == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzacrVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zzf(zzacrVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzg = this.zzb;
        if (iZzg == 0) {
            int iZzb = zzb();
            iZzg = zzg(iZzb, 0, iZzb);
            if (iZzg == 0) {
                iZzg = 1;
            }
            this.zzb = iZzg;
        }
        return iZzg;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return new zzack(this);
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzb()), zzb() <= 50 ? zzafx.zza(zzm()) : zzafx.zza(zzc(0, 47).zzm()).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zzb();

    public abstract zzacr zzc(int i, int i2);

    public abstract void zzd(byte[] bArr, int i, int i2, int i3);

    public abstract void zze(zzacj zzacjVar);

    public abstract boolean zzf(zzacr zzacrVar);

    public abstract int zzg(int i, int i2, int i3);

    public final byte[] zzm() {
        int iZzb = zzb();
        if (iZzb == 0) {
            return zzaed.zza;
        }
        byte[] bArr = new byte[iZzb];
        zzd(bArr, 0, 0, iZzb);
        return bArr;
    }

    public static int zzn(int i, int i2, int i3) {
        int i4 = i2 - i;
        if ((i | i2 | i4 | (i3 - i2)) >= 0) {
            return i4;
        }
        if (i < 0) {
            zzxk$$ExternalSyntheticBUOutline1.m316m(String.valueOf(i).length() + 21, i);
            return 0;
        }
        if (i2 < i) {
            zzxk$$ExternalSyntheticBUOutline0.m315m(String.valueOf(i).length() + 44 + String.valueOf(i2).length(), "Beginning index larger than ending index: ", i, ", ", i2);
            return 0;
        }
        zzxk$$ExternalSyntheticBUOutline0.m315m(String.valueOf(i2).length() + 15 + String.valueOf(i3).length(), "End index: ", i2, " >= ", i3);
        return 0;
    }
}
