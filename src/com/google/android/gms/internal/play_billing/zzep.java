package com.google.android.gms.internal.play_billing;

import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzep extends zzdz {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzc = Logger.getLogger(zzep.class.getName());
    private static final boolean zzd = zzho.zzx();
    zzeq zza;

    public /* synthetic */ zzep(zzeo zzeoVar) {
    }

    public static int zzA(zzgl zzglVar, zzgv zzgvVar) {
        int iZze = ((zzds) zzglVar).zze(zzgvVar);
        return zzC(iZze) + iZze;
    }

    public static int zzB(String str) {
        int length;
        try {
            length = zzhr.zzc(str);
        } catch (zzhq unused) {
            length = str.getBytes(zzfo.zza).length;
        }
        return zzC(length) + length;
    }

    public static int zzC(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzD(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    @Deprecated
    public static int zzy(int i, zzgl zzglVar, zzgv zzgvVar) {
        int iZzC = zzC(i << 3);
        return iZzC + iZzC + ((zzds) zzglVar).zze(zzgvVar);
    }

    public final void zzE() {
        if (zza() == 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Did not write as much data as expected.");
    }

    public final void zzF(String str, zzhq zzhqVar) throws zzen {
        zzc.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) zzhqVar);
        byte[] bytes = str.getBytes(zzfo.zza);
        try {
            int length = bytes.length;
            zzv(length);
            zzm(bytes, 0, length);
        } catch (IndexOutOfBoundsException e) {
            throw new zzen(e);
        }
    }

    public abstract int zza();

    public abstract void zzb(byte b2);

    public abstract void zzd(int i, boolean z);

    public abstract void zze(int i, zzei zzeiVar);

    public abstract void zzg(int i, int i2);

    public abstract void zzh(int i);

    public abstract void zzi(int i, long j);

    public abstract void zzj(long j);

    public abstract void zzk(int i, int i2);

    public abstract void zzl(int i);

    public abstract void zzm(byte[] bArr, int i, int i2);

    public abstract void zzn(int i, zzgl zzglVar, zzgv zzgvVar);

    public abstract void zzr(int i, String str);

    public abstract void zzt(int i, int i2);

    public abstract void zzu(int i, int i2);

    public abstract void zzv(int i);

    public abstract void zzw(int i, long j);

    public abstract void zzx(long j);
}
