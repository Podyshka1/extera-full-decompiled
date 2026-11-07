package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzal extends zzk implements zzan {
    public zzal(IBinder iBinder) {
        super(iBinder, "com.google.android.apps.aicore.aidl.IAICoreService");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final zzn zzd(int i, int i2) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        parcelZza.writeInt(-1);
        Parcel parcelZzb = zzb(32, parcelZza);
        zzn zznVar = (zzn) zzm.zza(parcelZzb, zzn.CREATOR);
        parcelZzb.recycle();
        return zznVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final int zze(zzn zznVar) {
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zznVar);
        Parcel parcelZzb = zzb(3, parcelZza);
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final int zzf(zzn zznVar, zzbe zzbeVar) {
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zznVar);
        parcelZza.writeStrongBinder(zzbeVar);
        Parcel parcelZzb = zzb(12, parcelZza);
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final int zzg() {
        Parcel parcelZzb = zzb(11, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final int zzh(zzn zznVar) {
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zznVar);
        Parcel parcelZzb = zzb(39, parcelZza);
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final zzbi zzi(zzn zznVar) {
        zzbi zzbiVar;
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zznVar);
        Parcel parcelZzb = zzb(5, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzbiVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ILLMService");
            zzbiVar = iInterfaceQueryLocalInterface instanceof zzbi ? (zzbi) iInterfaceQueryLocalInterface : new zzbi(strongBinder);
        }
        parcelZzb.recycle();
        return zzbiVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzan
    public final zzay zzj(zzn zznVar) {
        zzay zzayVar;
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zznVar);
        Parcel parcelZzb = zzb(35, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzayVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ICortanaService");
            zzayVar = iInterfaceQueryLocalInterface instanceof zzay ? (zzay) iInterfaceQueryLocalInterface : new zzay(strongBinder);
        }
        parcelZzb.recycle();
        return zzayVar;
    }
}
