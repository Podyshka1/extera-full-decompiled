package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
abstract class zzll {
    public abstract int zza(Object obj);

    public abstract int zzb(Object obj);

    public abstract Object zzc(Object obj);

    public abstract Object zzd(Object obj);

    public abstract Object zze(Object obj, Object obj2);

    public abstract Object zzf();

    public abstract Object zzg(Object obj);

    public abstract void zzh(Object obj, int i, int i2);

    public abstract void zzi(Object obj, int i, long j);

    public abstract void zzj(Object obj, int i, Object obj2);

    public abstract void zzk(Object obj, int i, zzgw zzgwVar);

    public abstract void zzl(Object obj, int i, long j);

    public abstract void zzm(Object obj);

    public abstract void zzn(Object obj, Object obj2);

    public abstract void zzo(Object obj, Object obj2);

    public abstract void zzp(Object obj, zzmd zzmdVar);

    public abstract void zzq(Object obj, zzmd zzmdVar);

    public abstract boolean zzs(zzkq zzkqVar);

    public final boolean zzr(Object obj, zzkq zzkqVar) throws zzje {
        int iZzd = zzkqVar.zzd();
        int i = iZzd >>> 3;
        int i2 = iZzd & 7;
        if (i2 == 0) {
            zzl(obj, i, zzkqVar.zzl());
            return true;
        }
        if (i2 == 1) {
            zzi(obj, i, zzkqVar.zzk());
            return true;
        }
        if (i2 == 2) {
            zzk(obj, i, zzkqVar.zzp());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzje.zza();
            }
            zzh(obj, i, zzkqVar.zzf());
            return true;
        }
        Object objZzf = zzf();
        int i3 = i << 3;
        while (zzkqVar.zzc() != Integer.MAX_VALUE && zzr(objZzf, zzkqVar)) {
        }
        if ((4 | i3) != zzkqVar.zzd()) {
            throw zzje.zzb();
        }
        zzg(objZzf);
        zzj(obj, i, objZzf);
        return true;
    }
}
