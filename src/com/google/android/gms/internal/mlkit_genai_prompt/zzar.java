package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzar extends zzl implements zzas {
    public zzar() {
        super("com.google.android.apps.aicore.aidl.IAiCoreServiceProviderCallback");
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzl
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzan zzalVar;
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            int i3 = parcel.readInt();
            String string = parcel.readString();
            zzm.zzc(parcel);
            zzc(i3, string);
            return true;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            zzalVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.apps.aicore.aidl.IAICoreService");
            zzalVar = iInterfaceQueryLocalInterface instanceof zzan ? (zzan) iInterfaceQueryLocalInterface : new zzal(strongBinder);
        }
        zzm.zzc(parcel);
        zzb(zzalVar);
        return true;
    }
}
