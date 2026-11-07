package com.google.android.recaptcha.internal;

import com.google.android.gms.internal.cast.zzxg$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.cast.zzxk$$ExternalSyntheticBUOutline1;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaer implements Iterable, Serializable {
    public static final zzaer zza = new zzaep(zzagf.zza);
    private int zzb = 0;

    static {
        int i = zzaef.$r8$clinit;
    }

    public static zzaeq zzA() {
        return new zzaeq(128);
    }

    public static /* synthetic */ boolean zzC(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = i + i3;
        zzB(i, i4, bArr.length);
        zzB(i2, i3 + i2, bArr2.length);
        while (i < i4) {
            if (bArr[i] != bArr2[i2]) {
                return false;
            }
            i++;
            i2++;
        }
        return true;
    }

    public static zzaer zzs(byte[] bArr, int i, int i2) {
        try {
            return zzt(bArr, i, i2, false);
        } catch (zzagk e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static zzaer zzt(byte[] bArr, int i, int i2, boolean z) {
        if (i2 == 0) {
            return zza;
        }
        zzB(i, i + i2, bArr.length);
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new zzaep(bArr2);
    }

    public static zzaer zzu(byte[] bArr) {
        try {
            return zzv(bArr, false);
        } catch (zzagk e) {
            throw new AssertionError("Expected no InvalidProtocolBufferException as data UTF8 validity is not checked.", e);
        }
    }

    public static zzaer zzv(byte[] bArr, boolean z) {
        return bArr.length == 0 ? zza : new zzaep(bArr);
    }

    public static zzaer zzw(Iterable iterable) {
        int size;
        if (iterable instanceof Collection) {
            size = ((Collection) iterable).size();
        } else {
            Iterator it = iterable.iterator();
            size = 0;
            while (it.hasNext()) {
                it.next();
                size++;
            }
        }
        return size == 0 ? zza : zzj(iterable.iterator(), size);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzaer)) {
            return false;
        }
        zzaer zzaerVar = (zzaer) obj;
        int iZzb = zzb();
        if (iZzb != zzaerVar.zzb()) {
            return false;
        }
        if (iZzb == 0) {
            return true;
        }
        int i = this.zzb;
        int i2 = zzaerVar.zzb;
        if (i == 0 || i2 == 0 || i == i2) {
            return zzi(zzaerVar);
        }
        return false;
    }

    public final int hashCode() {
        int iZzk = this.zzb;
        if (iZzk == 0) {
            int iZzb = zzb();
            iZzk = zzk(iZzb, 0, iZzb);
            if (iZzk == 0) {
                iZzk = 1;
            }
            this.zzb = iZzk;
        }
        return iZzk;
    }

    public final String toString() {
        return String.format(Locale.ROOT, "<ByteString@%s size=%d contents=\"%s\">", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zzb()), zzb() <= 50 ? zzahv.zza(zzy()) : zzahv.zza(zzd(0, 47).zzy()).concat("..."));
    }

    public abstract byte zza(int i);

    public abstract int zzb();

    public abstract zzaer zzc(int i, int i2);

    public abstract zzaer zzd(int i, int i2);

    public abstract void zze(byte[] bArr, int i, int i2, int i3);

    public abstract ByteBuffer zzf();

    public abstract void zzg(zzaej zzaejVar);

    public abstract String zzh(Charset charset);

    public abstract boolean zzi(zzaer zzaerVar);

    public abstract int zzk(int i, int i2, int i3);

    public abstract zzaev zzl();

    public abstract int zzo();

    public abstract boolean zzp();

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: zzq, reason: merged with bridge method [inline-methods] */
    public zzaen iterator() {
        return new zzaek(this);
    }

    public final boolean zzr() {
        return zzb() == 0;
    }

    @Deprecated
    public final void zzx(byte[] bArr, int i, int i2, int i3) {
        zzB(0, i3, zzb());
        zzB(i2, i2 + i3, bArr.length);
        if (i3 > 0) {
            zze(bArr, 0, i2, i3);
        }
    }

    public final byte[] zzy() {
        int iZzb = zzb();
        if (iZzb == 0) {
            return zzagf.zza;
        }
        byte[] bArr = new byte[iZzb];
        zze(bArr, 0, 0, iZzb);
        return bArr;
    }

    public final String zzz(Charset charset) {
        return zzr() ? _UrlKt.FRAGMENT_ENCODE_SET : zzh(charset);
    }

    public static int zzB(int i, int i2, int i3) {
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

    private static zzaer zzj(Iterator it, int i) {
        if (i <= 0) {
            f$$ExternalSyntheticBUOutline1.m212m(String.format(Locale.ROOT, "length (%s) must be >= 1", Integer.valueOf(i)));
            return null;
        }
        if (i == 1) {
            return (zzaer) it.next();
        }
        int i2 = i >>> 1;
        zzaer zzaerVarZzj = zzj(it, i2);
        zzaer zzaerVarZzj2 = zzj(it, i - i2);
        if (Integer.MAX_VALUE - zzaerVarZzj.zzb() >= zzaerVarZzj2.zzb()) {
            return zzahm.zzj(zzaerVarZzj, zzaerVarZzj2);
        }
        int iZzb = zzaerVarZzj.zzb();
        int iZzb2 = zzaerVarZzj2.zzb();
        zzxg$$ExternalSyntheticBUOutline0.m313m(String.valueOf(iZzb).length() + 31 + String.valueOf(iZzb2).length(), "ByteString would be too long: ", iZzb, "+", iZzb2);
        return null;
    }
}
