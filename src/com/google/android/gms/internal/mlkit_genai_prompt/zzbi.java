package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbi extends zzk implements IInterface {
    public zzbi(IBinder iBinder) {
        super(iBinder, "com.google.android.apps.aicore.aidl.ILLMService");
    }

    public final int zzd() {
        Parcel parcelZzb = zzb(4, zza());
        int i = parcelZzb.readInt();
        parcelZzb.recycle();
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzav zze(zzbn zzbnVar) {
        zzav zzatVar;
        Parcel parcelZza = zza();
        int i = zzm.$r8$clinit;
        parcelZza.writeStrongBinder(zzbnVar);
        Parcel parcelZzb = zzb(5, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzatVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ICancellationCallback");
            zzatVar = iInterfaceQueryLocalInterface instanceof zzav ? (zzav) iInterfaceQueryLocalInterface : new zzat(strongBinder);
        }
        parcelZzb.recycle();
        return zzatVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzav zzf(zzcg zzcgVar, zzbh zzbhVar) {
        zzav zzatVar;
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zzcgVar);
        parcelZza.writeStrongBinder(zzbhVar);
        Parcel parcelZzb = zzb(6, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzatVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ICancellationCallback");
            zzatVar = iInterfaceQueryLocalInterface instanceof zzav ? (zzav) iInterfaceQueryLocalInterface : new zzat(strongBinder);
        }
        parcelZzb.recycle();
        return zzatVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzav zzg(zzcg zzcgVar, boolean z, zzbp zzbpVar) {
        zzav zzatVar;
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zzcgVar);
        parcelZza.writeInt(1);
        parcelZza.writeStrongBinder(zzbpVar);
        Parcel parcelZzb = zzb(7, parcelZza);
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzatVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.ICancellationCallback");
            zzatVar = iInterfaceQueryLocalInterface instanceof zzav ? (zzav) iInterfaceQueryLocalInterface : new zzat(strongBinder);
        }
        parcelZzb.recycle();
        return zzatVar;
    }
}
