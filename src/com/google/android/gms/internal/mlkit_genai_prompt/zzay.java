package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public final class zzay extends zzk implements IInterface {
    public zzay(IBinder iBinder) {
        super(iBinder, "com.google.android.apps.aicore.aidl.ICortanaService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzav zzd(zzaf zzafVar, zzax zzaxVar) {
        zzav zzatVar;
        Parcel parcelZza = zza();
        zzm.zzb(parcelZza, zzafVar);
        parcelZza.writeStrongBinder(zzaxVar);
        Parcel parcelZzb = zzb(2, parcelZza);
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
    public final zzav zze(zzbn zzbnVar) {
        zzav zzatVar;
        Parcel parcelZza = zza();
        int i = zzm.$r8$clinit;
        parcelZza.writeStrongBinder(zzbnVar);
        Parcel parcelZzb = zzb(3, parcelZza);
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
