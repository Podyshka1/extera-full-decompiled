package com.google.android.gms.internal.cast;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zztc extends zzsk {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzc = Logger.getLogger(zztc.class.getName());
    private static final boolean zzd = zzwj.zzx();
    zztd zza;

    /* synthetic */ zztc(zztb zztbVar) {
    }

    static int zzt(int i, zzux zzuxVar, zzvi zzviVar) {
        int iZzq = ((zzsh) zzuxVar).zzq(zzviVar);
        int iZzx = zzx(i << 3);
        return iZzx + iZzx + iZzq;
    }

    public static int zzu(int i) {
        if (i >= 0) {
            return zzx(i);
        }
        return 10;
    }

    static int zzv(zzux zzuxVar, zzvi zzviVar) {
        int iZzq = ((zzsh) zzuxVar).zzq(zzviVar);
        return zzx(iZzq) + iZzq;
    }

    public static int zzw(String str) {
        int length;
        try {
            length = zzwn.zzc(str);
        } catch (zzwm unused) {
            length = str.getBytes(zzty.zzb).length;
        }
        return zzx(length) + length;
    }

    public static int zzx(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    public static int zzy(long j) {
        int i;
        if (((-128) & j) == 0) {
            return 1;
        }
        if (j < 0) {
            return 10;
        }
        if (((-34359738368L) & j) != 0) {
            j >>>= 28;
            i = 6;
        } else {
            i = 2;
        }
        if (((-2097152) & j) != 0) {
            j >>>= 14;
            i += 2;
        }
        return (j & (-16384)) != 0 ? i + 1 : i;
    }

    public static zztc zzz(byte[] bArr, int i, int i2) {
        return new zzsz(bArr, 0, i2);
    }

    public final void zzA() {
        if (zza() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void zzB(String str, zzwm zzwmVar) throws zzta {
        zzc.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzwmVar);
        byte[] bytes = str.getBytes(zzty.zzb);
        try {
            int length = bytes.length;
            zzq(length);
            zzl(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzta(e);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b);

    public abstract void zzd(int i, boolean z);

    public abstract void zze(int i, zzsu zzsuVar);

    public abstract void zzf(int i, int i2);

    public abstract void zzg(int i);

    public abstract void zzh(int i, long j);

    public abstract void zzi(long j);

    public abstract void zzj(int i, int i2);

    public abstract void zzk(int i);

    public abstract void zzl(byte[] bArr, int i, int i2);

    public abstract void zzm(int i, String str);

    public abstract void zzo(int i, int i2);

    public abstract void zzp(int i, int i2);

    public abstract void zzq(int i);

    public abstract void zzr(int i, long j);

    public abstract void zzs(long j);
}
