package com.google.android.recaptcha.internal;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
final class zzig extends zzif {
    zzig() {
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final int zza(Map.Entry entry) {
        return ((zziq) entry.getKey()).zza;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final zzij zzb(Object obj) {
        return ((zzip) obj).zzb;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final zzij zzc(Object obj) {
        return ((zzip) obj).zzi();
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final Object zzd(zzie zzieVar, zzke zzkeVar, int i) {
        return zzieVar.zza(zzkeVar, i);
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final Object zze(Object obj, zzkq zzkqVar, Object obj2, zzie zzieVar, zzij zzijVar, Object obj3, zzll zzllVar) {
        Object objZze;
        zzir zzirVar = (zzir) obj2;
        zzmb zzmbVar = zzirVar.zzb.zzb;
        Object objZzk = null;
        if (zzmbVar == zzmb.zzn) {
            zzkqVar.zzg();
            throw null;
        }
        switch (zzmbVar.ordinal()) {
            case 0:
                objZzk = Double.valueOf(zzkqVar.zza());
                break;
            case 1:
                objZzk = Float.valueOf(zzkqVar.zzb());
                break;
            case 2:
                objZzk = Long.valueOf(zzkqVar.zzl());
                break;
            case 3:
                objZzk = Long.valueOf(zzkqVar.zzo());
                break;
            case 4:
                objZzk = Integer.valueOf(zzkqVar.zzg());
                break;
            case 5:
                objZzk = Long.valueOf(zzkqVar.zzk());
                break;
            case 6:
                objZzk = Integer.valueOf(zzkqVar.zzf());
                break;
            case 7:
                objZzk = Boolean.valueOf(zzkqVar.zzN());
                break;
            case 8:
                objZzk = zzkqVar.zzr();
                break;
            case 9:
                Object objZze2 = zzijVar.zze(zzirVar.zzb);
                if (!(objZze2 instanceof zzit)) {
                    throw null;
                }
                zzkr zzkrVarZzb = zzkn.zza().zzb(objZze2.getClass());
                if (!((zzit) objZze2).zzG()) {
                    Object objZze3 = zzkrVarZzb.zze();
                    zzkrVarZzb.zzg(objZze3, objZze2);
                    zzijVar.zzi(zzirVar.zzb, objZze3);
                    objZze2 = objZze3;
                }
                zzkqVar.zzt(objZze2, zzkrVarZzb, zzieVar);
                return obj3;
            case 10:
                Object objZze4 = zzijVar.zze(zzirVar.zzb);
                if (!(objZze4 instanceof zzit)) {
                    throw null;
                }
                zzkr zzkrVarZzb2 = zzkn.zza().zzb(objZze4.getClass());
                if (!((zzit) objZze4).zzG()) {
                    Object objZze5 = zzkrVarZzb2.zze();
                    zzkrVarZzb2.zzg(objZze5, objZze4);
                    zzijVar.zzi(zzirVar.zzb, objZze5);
                    objZze4 = objZze5;
                }
                zzkqVar.zzu(objZze4, zzkrVarZzb2, zzieVar);
                return obj3;
            case 11:
                objZzk = zzkqVar.zzp();
                break;
            case 12:
                objZzk = Integer.valueOf(zzkqVar.zzj());
                break;
            case 13:
                throw new IllegalStateException("Shouldn't reach here.");
            case 14:
                objZzk = Integer.valueOf(zzkqVar.zzh());
                break;
            case 15:
                objZzk = Long.valueOf(zzkqVar.zzm());
                break;
            case 16:
                objZzk = Integer.valueOf(zzkqVar.zzi());
                break;
            case 17:
                objZzk = Long.valueOf(zzkqVar.zzn());
                break;
        }
        int iOrdinal = zzirVar.zzb.zzb.ordinal();
        if ((iOrdinal == 9 || iOrdinal == 10) && (objZze = zzijVar.zze(zzirVar.zzb)) != null) {
            byte[] bArr = zzjc.zzd;
            objZzk = ((zzke) objZze).zzX().zzc((zzke) objZzk).zzk();
        }
        zzijVar.zzi(zzirVar.zzb, objZzk);
        return obj3;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final void zzf(Object obj) {
        ((zzip) obj).zzb.zzg();
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final void zzg(zzkq zzkqVar, Object obj, zzie zzieVar, zzij zzijVar) {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final void zzh(zzgw zzgwVar, Object obj, zzie zzieVar, zzij zzijVar) {
        throw null;
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final void zzi(zzmd zzmdVar, Map.Entry entry) {
        zziq zziqVar = (zziq) entry.getKey();
        zzmb zzmbVar = zzmb.zza;
        switch (zziqVar.zzb.ordinal()) {
            case 0:
                zzmdVar.zzf(zziqVar.zza, ((Double) entry.getValue()).doubleValue());
                break;
            case 1:
                zzmdVar.zzo(zziqVar.zza, ((Float) entry.getValue()).floatValue());
                break;
            case 2:
                zzmdVar.zzt(zziqVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 3:
                zzmdVar.zzK(zziqVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 4:
                zzmdVar.zzr(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 5:
                zzmdVar.zzm(zziqVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 6:
                zzmdVar.zzk(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 7:
                zzmdVar.zzb(zziqVar.zza, ((Boolean) entry.getValue()).booleanValue());
                break;
            case 8:
                zzmdVar.zzG(zziqVar.zza, (String) entry.getValue());
                break;
            case 9:
                zzmdVar.zzq(zziqVar.zza, entry.getValue(), zzkn.zza().zzb(entry.getValue().getClass()));
                break;
            case 10:
                zzmdVar.zzv(zziqVar.zza, entry.getValue(), zzkn.zza().zzb(entry.getValue().getClass()));
                break;
            case 11:
                zzmdVar.zzd(zziqVar.zza, (zzgw) entry.getValue());
                break;
            case 12:
                zzmdVar.zzI(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 13:
                zzmdVar.zzr(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 14:
                zzmdVar.zzx(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 15:
                zzmdVar.zzz(zziqVar.zza, ((Long) entry.getValue()).longValue());
                break;
            case 16:
                zzmdVar.zzB(zziqVar.zza, ((Integer) entry.getValue()).intValue());
                break;
            case 17:
                zzmdVar.zzD(zziqVar.zza, ((Long) entry.getValue()).longValue());
                break;
        }
    }

    @Override // com.google.android.recaptcha.internal.zzif
    final boolean zzj(zzke zzkeVar) {
        return zzkeVar instanceof zzip;
    }
}
