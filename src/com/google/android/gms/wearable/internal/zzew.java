package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.zzb;
import com.google.android.gms.internal.wearable.zzc;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzew extends zzb implements zzex {
    public zzew() {
        super("com.google.android.gms.wearable.internal.IWearableCallbacks");
    }

    @Override // com.google.android.gms.internal.wearable.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                zzed zzedVar = (zzed) zzc.zza(parcel, zzed.CREATOR);
                zzc.zzb(parcel);
                zzr(zzedVar);
                break;
            case 3:
                zzgu zzguVar = (zzgu) zzc.zza(parcel, zzgu.CREATOR);
                zzc.zzb(parcel);
                zzC(zzguVar);
                break;
            case 4:
                zzej zzejVar = (zzej) zzc.zza(parcel, zzej.CREATOR);
                zzc.zzb(parcel);
                zzu(zzejVar);
                break;
            case 5:
                DataHolder dataHolder = (DataHolder) zzc.zza(parcel, DataHolder.CREATOR);
                zzc.zzb(parcel);
                zzh(dataHolder);
                break;
            case 6:
                zzdl zzdlVar = (zzdl) zzc.zza(parcel, zzdl.CREATOR);
                zzc.zzb(parcel);
                zzi(zzdlVar);
                break;
            case 7:
                zzhc zzhcVar = (zzhc) zzc.zza(parcel, zzhc.CREATOR);
                zzc.zzb(parcel);
                zzE(zzhcVar);
                break;
            case 8:
                zzen zzenVar = (zzen) zzc.zza(parcel, zzen.CREATOR);
                zzc.zzb(parcel);
                zzw(zzenVar);
                break;
            case 9:
                zzep zzepVar = (zzep) zzc.zza(parcel, zzep.CREATOR);
                zzc.zzb(parcel);
                zzx(zzepVar);
                break;
            case 10:
                zzeh zzehVar = (zzeh) zzc.zza(parcel, zzeh.CREATOR);
                zzc.zzb(parcel);
                zzt(zzehVar);
                break;
            case 11:
                Status status = (Status) zzc.zza(parcel, Status.CREATOR);
                zzc.zzb(parcel);
                zzG(status);
                break;
            case 12:
                zzhg zzhgVar = (zzhg) zzc.zza(parcel, zzhg.CREATOR);
                zzc.zzb(parcel);
                zzz(zzhgVar);
                break;
            case 13:
                zzef zzefVar = (zzef) zzc.zza(parcel, zzef.CREATOR);
                zzc.zzb(parcel);
                zzs(zzefVar);
                break;
            case 14:
                zzgo zzgoVar = (zzgo) zzc.zza(parcel, zzgo.CREATOR);
                zzc.zzb(parcel);
                zzA(zzgoVar);
                break;
            case 15:
                zzcc zzccVar = (zzcc) zzc.zza(parcel, zzcc.CREATOR);
                zzc.zzb(parcel);
                zzf(zzccVar);
                break;
            case 16:
                zzcc zzccVar2 = (zzcc) zzc.zza(parcel, zzcc.CREATOR);
                zzc.zzb(parcel);
                zzg(zzccVar2);
                break;
            case 17:
                zzdr zzdrVar = (zzdr) zzc.zza(parcel, zzdr.CREATOR);
                zzc.zzb(parcel);
                zzl(zzdrVar);
                break;
            case 18:
                zzdt zzdtVar = (zzdt) zzc.zza(parcel, zzdt.CREATOR);
                zzc.zzb(parcel);
                zzm(zzdtVar);
                break;
            case 19:
                zzbw zzbwVar = (zzbw) zzc.zza(parcel, zzbw.CREATOR);
                zzc.zzb(parcel);
                zzd(zzbwVar);
                break;
            case 20:
                zzby zzbyVar = (zzby) zzc.zza(parcel, zzby.CREATOR);
                zzc.zzb(parcel);
                zze(zzbyVar);
                break;
            case 21:
            case 24:
            case 25:
            case 31:
            case 32:
            case 33:
            default:
                return false;
            case 22:
                zzdp zzdpVar = (zzdp) zzc.zza(parcel, zzdp.CREATOR);
                zzc.zzb(parcel);
                zzk(zzdpVar);
                break;
            case 23:
                zzdn zzdnVar = (zzdn) zzc.zza(parcel, zzdn.CREATOR);
                zzc.zzb(parcel);
                zzj(zzdnVar);
                break;
            case 26:
                zzf zzfVar = (zzf) zzc.zza(parcel, zzf.CREATOR);
                zzc.zzb(parcel);
                zzb(zzfVar);
                break;
            case 27:
                zzgy zzgyVar = (zzgy) zzc.zza(parcel, zzgy.CREATOR);
                zzc.zzb(parcel);
                zzD(zzgyVar);
                break;
            case 28:
                zzdw zzdwVar = (zzdw) zzc.zza(parcel, zzdw.CREATOR);
                zzc.zzb(parcel);
                zzn(zzdwVar);
                break;
            case 29:
                zzea zzeaVar = (zzea) zzc.zza(parcel, zzea.CREATOR);
                zzc.zzb(parcel);
                zzp(zzeaVar);
                break;
            case 30:
                zzdy zzdyVar = (zzdy) zzc.zza(parcel, zzdy.CREATOR);
                zzc.zzb(parcel);
                zzo(zzdyVar);
                break;
            case 34:
                zzha zzhaVar = (zzha) zzc.zza(parcel, zzha.CREATOR);
                zzc.zzb(parcel);
                zzF(zzhaVar);
                break;
            case 35:
                zzel zzelVar = (zzel) zzc.zza(parcel, zzel.CREATOR);
                zzc.zzb(parcel);
                zzv(zzelVar);
                break;
            case 36:
                zzgs zzgsVar = (zzgs) zzc.zza(parcel, zzgs.CREATOR);
                zzc.zzb(parcel);
                zzB(zzgsVar);
                break;
            case 37:
                zzeb zzebVar = (zzeb) zzc.zza(parcel, zzeb.CREATOR);
                zzc.zzb(parcel);
                zzq(zzebVar);
                break;
            case 38:
                zzcf zzcfVar = (zzcf) zzc.zza(parcel, zzcf.CREATOR);
                zzc.zzb(parcel);
                zzH(zzcfVar);
                break;
            case 39:
                zzer zzerVar = (zzer) zzc.zza(parcel, zzer.CREATOR);
                zzc.zzb(parcel);
                zzy(zzerVar);
                break;
            case 40:
                zzq zzqVar = (zzq) zzc.zza(parcel, zzq.CREATOR);
                zzc.zzb(parcel);
                zzc(zzqVar);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
