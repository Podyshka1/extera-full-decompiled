package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.cast.zza;
import com.google.android.gms.internal.cast.zzc;

/* JADX INFO: loaded from: classes.dex */
public final class zzah extends zza implements zzaj {
    zzah(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ICastContext");
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final Bundle zze() {
        Parcel parcelZzb = zzb(1, zza());
        Bundle bundle = (Bundle) zzc.zza(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final zzaq zzf() {
        zzaq zzapVar;
        Parcel parcelZzb = zzb(6, zza());
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzapVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
            zzapVar = iInterfaceQueryLocalInterface instanceof zzaq ? (zzaq) iInterfaceQueryLocalInterface : new zzap(strongBinder);
        }
        parcelZzb.recycle();
        return zzapVar;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final zzay zzg() {
        zzay zzaxVar;
        Parcel parcelZzb = zzb(5, zza());
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzaxVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
            zzaxVar = iInterfaceQueryLocalInterface instanceof zzay ? (zzay) iInterfaceQueryLocalInterface : new zzax(strongBinder);
        }
        parcelZzb.recycle();
        return zzaxVar;
    }

    @Override // com.google.android.gms.cast.framework.zzaj
    public final void zzh(zzae zzaeVar) {
        Parcel parcelZza = zza();
        zzc.zze(parcelZza, zzaeVar);
        zzc(3, parcelZza);
    }
}
