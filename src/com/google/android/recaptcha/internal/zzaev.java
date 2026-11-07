package com.google.android.recaptcha.internal;

import androidx.core.app.NavUtils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaev {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static volatile int zzf = 100;
    int zza;
    int zzb;
    final int zzc = zzf;
    Object zzd;

    public /* synthetic */ zzaev(byte[] bArr) {
    }

    public static zzaev zzE(byte[] bArr, int i, int i2, boolean z) {
        zzaet zzaetVar = new zzaet(bArr, i, i2, z, null);
        try {
            zzaetVar.zzA(i2);
            return zzaetVar;
        } catch (zzagk e) {
            NavUtils$$ExternalSyntheticBUOutline0.m89m(e);
            return null;
        }
    }

    public static int zzG(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static long zzH(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public abstract int zzA(int i);

    public abstract void zzB(int i);

    public abstract boolean zzC();

    public abstract int zzD();

    public final void zzF() throws zzagk {
        if (this.zza + this.zzb < this.zzc) {
            return;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    public abstract int zza();

    public abstract void zzb(int i);

    public abstract double zzc();

    public abstract float zzd();

    public abstract long zze();

    public abstract long zzf();

    public abstract int zzg();

    public abstract long zzh();

    public abstract int zzi();

    public abstract boolean zzj();

    public abstract String zzk();

    public abstract String zzl();

    public abstract zzaer zzm();

    public abstract int zzn();

    public abstract int zzo();

    public abstract int zzp();

    public abstract long zzq();

    public abstract int zzr();

    public abstract long zzs();
}
