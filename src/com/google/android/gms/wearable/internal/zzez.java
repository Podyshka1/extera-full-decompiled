package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.wearable.zzb;
import com.google.android.gms.internal.wearable.zzc;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzez extends zzb implements zzfa {
    public zzez() {
        super("com.google.android.gms.wearable.internal.IWearableListener");
    }

    @Override // com.google.android.gms.internal.wearable.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzev zzevVar;
        if (i == 13) {
            zzfx zzfxVar = (zzfx) zzc.zza(parcel, zzfx.CREATOR);
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzevVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IRpcResponseCallback");
                zzevVar = iInterfaceQueryLocalInterface instanceof zzev ? (zzev) iInterfaceQueryLocalInterface : new zzev(strongBinder);
            }
            zzc.zzb(parcel);
            zzl(zzfxVar, zzevVar);
            return true;
        }
        if (i == 14) {
            zzc.zzb(parcel);
            return true;
        }
        switch (i) {
            case 1:
                DataHolder dataHolder = (DataHolder) zzc.zza(parcel, DataHolder.CREATOR);
                zzc.zzb(parcel);
                zze(dataHolder);
                return true;
            case 2:
                zzfx zzfxVar2 = (zzfx) zzc.zza(parcel, zzfx.CREATOR);
                zzc.zzb(parcel);
                zzg(zzfxVar2);
                return true;
            case 3:
                zzgm zzgmVar = (zzgm) zzc.zza(parcel, zzgm.CREATOR);
                zzc.zzb(parcel);
                zzi(zzgmVar);
                return true;
            case 4:
                zzgm zzgmVar2 = (zzgm) zzc.zza(parcel, zzgm.CREATOR);
                zzc.zzb(parcel);
                zzj(zzgmVar2);
                return true;
            case 5:
                ArrayList arrayListCreateTypedArrayList = parcel.createTypedArrayList(zzgm.CREATOR);
                zzc.zzb(parcel);
                zzd(arrayListCreateTypedArrayList);
                return true;
            case 6:
                zzl zzlVar = (zzl) zzc.zza(parcel, zzl.CREATOR);
                zzc.zzb(parcel);
                zzh(zzlVar);
                return true;
            case 7:
                zzbf zzbfVar = (zzbf) zzc.zza(parcel, zzbf.CREATOR);
                zzc.zzb(parcel);
                zzb(zzbfVar);
                return true;
            case 8:
                zzao zzaoVar = (zzao) zzc.zza(parcel, zzao.CREATOR);
                zzc.zzb(parcel);
                zzc(zzaoVar);
                return true;
            case 9:
                zzi zziVar = (zzi) zzc.zza(parcel, zzi.CREATOR);
                zzc.zzb(parcel);
                zzf(zziVar);
                return true;
            default:
                return false;
        }
    }
}
