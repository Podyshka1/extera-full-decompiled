package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class zzag extends com.google.android.gms.internal.cast.zza implements zzai {
    public zzag(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.cast.framework.ICastContext");
    }

    @Override // com.google.android.gms.cast.framework.zzai
    public final Bundle zze() {
        Parcel parcelZzb = zzb(1, zza());
        Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.zzb(parcelZzb, Bundle.CREATOR);
        parcelZzb.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.cast.framework.zzai
    public final void zzf(zzad zzadVar) {
        Parcel parcelZza = zza();
        com.google.android.gms.internal.cast.zzc.zze(parcelZza, zzadVar);
        zzc(3, parcelZza);
    }

    @Override // com.google.android.gms.cast.framework.zzai
    public final zzax zzg() {
        zzax zzawVar;
        Parcel parcelZzb = zzb(5, zza());
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzawVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISessionManager");
            zzawVar = iInterfaceQueryLocalInterface instanceof zzax ? (zzax) iInterfaceQueryLocalInterface : new zzaw(strongBinder);
        }
        parcelZzb.recycle();
        return zzawVar;
    }

    @Override // com.google.android.gms.cast.framework.zzai
    public final zzap zzh() {
        zzap zzaoVar;
        Parcel parcelZzb = zzb(6, zza());
        IBinder strongBinder = parcelZzb.readStrongBinder();
        if (strongBinder == null) {
            zzaoVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IDiscoveryManager");
            zzaoVar = iInterfaceQueryLocalInterface instanceof zzap ? (zzap) iInterfaceQueryLocalInterface : new zzao(strongBinder);
        }
        parcelZzb.recycle();
        return zzaoVar;
    }

    @Override // com.google.android.gms.cast.framework.zzai
    public final void zzi(String str, Map map) {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeMap(map);
        zzc(11, parcelZza);
    }
}
