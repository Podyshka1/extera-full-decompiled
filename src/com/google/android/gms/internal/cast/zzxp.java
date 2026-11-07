package com.google.android.gms.internal.cast;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzxp extends zzxd {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final boolean zzc = zzaak.zza();
    Object zza;

    public /* synthetic */ zzxp(byte[] bArr) {
    }

    public static int zzv(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzw(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public abstract void zzb(int i, int i2);

    public abstract void zzc(int i, int i2);

    public abstract void zzd(int i, int i2);

    public abstract void zze(int i, int i2);

    public abstract void zzf(int i, long j);

    public abstract void zzg(int i, long j);

    public abstract void zzh(int i, boolean z);

    public abstract void zzi(int i, String str);

    public abstract void zzj(int i, zzxk zzxkVar);

    public abstract void zzm(byte b2);

    public abstract void zzn(int i);

    public abstract void zzo(int i);

    public abstract void zzp(int i);

    public abstract void zzq(long j);

    public abstract void zzr(long j);

    public abstract int zzu();

    public final void zzx() {
        if (zzu() == 0) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Did not write as much data as expected.");
    }
}
