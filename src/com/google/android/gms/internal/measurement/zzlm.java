package com.google.android.gms.internal.measurement;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzlm extends zzkz {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzc = Logger.getLogger(zzlm.class.getName());
    private static final boolean zzd = zzop.zza();
    zzln zza;

    /* synthetic */ zzlm(byte[] bArr) {
    }

    public static int zzA(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public static int zzB(String str) {
        int length;
        try {
            length = zzos.zzb(str);
        } catch (zzor unused) {
            length = str.getBytes(zzmp.zza).length;
        }
        return zzz(length) + length;
    }

    public static int zzC(zznm zznmVar) {
        int iZzcn = zznmVar.zzcn();
        return zzz(iZzcn) + iZzcn;
    }

    static int zzD(zznm zznmVar, zznx zznxVar) {
        int iZzcd = ((zzks) zznmVar).zzcd(zznxVar);
        return zzz(iZzcd) + iZzcd;
    }

    static int zzG(int i, zznm zznmVar, zznx zznxVar) {
        int iZzz = zzz(i << 3);
        return iZzz + iZzz + ((zzks) zznmVar).zzcd(zznxVar);
    }

    public static int zzz(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public final void zzE() {
        if (zzy() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    final void zzF(String str, zzor zzorVar) throws zzll {
        zzc.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzorVar);
        byte[] bytes = str.getBytes(zzmp.zza);
        try {
            int length = bytes.length;
            zzr(length);
            zzw(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzll(e);
        }
    }

    public abstract void zza(int i, int i2);

    public abstract void zzb(int i, int i2);

    public abstract void zzc(int i, int i2);

    public abstract void zzd(int i, int i2);

    public abstract void zze(int i, long j);

    public abstract void zzf(int i, long j);

    public abstract void zzg(int i, boolean z);

    public abstract void zzh(int i, String str);

    public abstract void zzi(int i, zzlh zzlhVar);

    public abstract void zzj(zzlh zzlhVar);

    abstract void zzk(byte[] bArr, int i, int i2);

    abstract void zzl(int i, zznm zznmVar, zznx zznxVar);

    public abstract void zzo(zznm zznmVar);

    public abstract void zzp(byte b);

    public abstract void zzq(int i);

    public abstract void zzr(int i);

    public abstract void zzs(int i);

    public abstract void zzt(long j);

    public abstract void zzu(long j);

    public abstract void zzw(byte[] bArr, int i, int i2);

    public abstract void zzx(String str);

    public abstract int zzy();
}
