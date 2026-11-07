package com.google.android.recaptcha.internal;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzafa extends zzaej {
    Object zza;

    public /* synthetic */ zzafa(byte[] bArr) {
    }

    public static int zzu(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int zzv(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public abstract void zza(int i, int i2);

    public abstract void zzb(int i, int i2);

    public abstract void zzc(int i, int i2);

    public abstract void zzd(int i, int i2);

    public abstract void zze(int i, long j);

    public abstract void zzf(int i, long j);

    public abstract void zzg(int i, boolean z);

    public abstract void zzh(int i, String str);

    public abstract void zzi(int i, zzaer zzaerVar);

    public abstract void zzl(byte b2);

    public abstract void zzm(int i);

    public abstract void zzn(int i);

    public abstract void zzo(int i);

    public abstract void zzp(long j);

    public abstract void zzq(long j);

    public abstract int zzt();

    public final void zzw() {
        if (zzt() > 0) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Did not write as much data as expected.");
        } else {
            if (zzt() >= 0) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m925m("Wrote more data than expected.");
        }
    }
}
