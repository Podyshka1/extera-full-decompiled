package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcq implements zzdd {
    public static final zzcq zza = new zzcq();

    private zzcq() {
    }

    @Override // com.google.android.recaptcha.internal.zzdd
    public final void zza(int i, zzcj zzcjVar, zzpq... zzpqVarArr) throws zzae {
        if (zzpqVarArr.length == 0) {
            throw new zzae(4, 3, null);
        }
        zzpi zzpiVarZzf = zzpl.zzf();
        for (zzpq zzpqVar : zzpqVarArr) {
            Object objZza = zzcjVar.zzc().zza(zzpqVar);
            if (objZza == null) {
                throw new zzae(4, 4, null);
            }
            zzpj zzpjVarZzf = zzpk.zzf();
            if (objZza instanceof Integer) {
                zzpjVarZzf.zzt(((Number) objZza).intValue());
            } else if (objZza instanceof Short) {
                zzpjVarZzf.zzs(((Number) objZza).shortValue());
            } else if (objZza instanceof Byte) {
                zzpjVarZzf.zze(zzgw.zzm(new byte[]{((Number) objZza).byteValue()}, 0, 1));
            } else if (objZza instanceof Long) {
                zzpjVarZzf.zzu(((Number) objZza).longValue());
            } else if (objZza instanceof Double) {
                zzpjVarZzf.zzq(((Number) objZza).doubleValue());
            } else if (objZza instanceof Float) {
                zzpjVarZzf.zzr(((Number) objZza).floatValue());
            } else if (objZza instanceof Boolean) {
                zzpjVarZzf.zzd(((Boolean) objZza).booleanValue());
            } else if (objZza instanceof Character) {
                zzpjVarZzf.zzp(objZza.toString());
            } else if (objZza instanceof String) {
                zzpjVarZzf.zzv((String) objZza);
            } else {
                zzpjVarZzf.zzv(objZza.toString());
            }
            zzpiVarZzf.zze((zzpk) zzpjVarZzf.zzj());
        }
        zzck zzckVarZzc = zzcjVar.zzc();
        byte[] bArrZzd = ((zzpl) zzpiVarZzf.zzj()).zzd();
        zzckVarZzc.zzf(i, zzfy.zzh().zzi(bArrZzd, 0, bArrZzd.length));
    }
}
