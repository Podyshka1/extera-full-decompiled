package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzahz {
    private static volatile int zza = 100;

    public abstract void zza(Object obj, int i, long j);

    public abstract void zzb(Object obj, int i, int i2);

    public abstract void zzc(Object obj, int i, long j);

    public abstract void zzd(Object obj, int i, zzaer zzaerVar);

    public abstract void zze(Object obj, int i, Object obj2);

    public abstract Object zzf();

    public abstract Object zzg(Object obj);

    public final boolean zzh(Object obj, zzaew zzaewVar, int i) throws zzagk {
        int iZzc = zzaewVar.zzc();
        int i2 = iZzc >>> 3;
        int i3 = iZzc & 7;
        if (i3 == 0) {
            zza(obj, i2, zzaewVar.zzg());
            return true;
        }
        if (i3 == 1) {
            zzc(obj, i2, zzaewVar.zzi());
            return true;
        }
        if (i3 == 2) {
            zzd(obj, i2, zzaewVar.zzp());
            return true;
        }
        if (i3 != 3) {
            if (i3 == 4) {
                if (i != 0) {
                    return false;
                }
                zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message end-group tag did not match expected tag.");
                return false;
            }
            if (i3 == 5) {
                zzb(obj, i2, zzaewVar.zzj());
                return true;
            }
            zzaew$$ExternalSyntheticBUOutline0.m478m();
            return false;
        }
        Object objZzf = zzf();
        int i4 = i2 << 3;
        int i5 = i + 1;
        if (i5 >= zza) {
            zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
            return false;
        }
        while (zzaewVar.zzb() != Integer.MAX_VALUE && zzh(objZzf, zzaewVar, i5)) {
        }
        if ((i4 | 4) == zzaewVar.zzc()) {
            zze(obj, i2, zzg(objZzf));
            return true;
        }
        zzaeh$$ExternalSyntheticBUOutline0.m477m("Protocol message end-group tag did not match expected tag.");
        return false;
    }
}
