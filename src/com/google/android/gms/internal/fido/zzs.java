package com.google.android.gms.internal.fido;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialCreationOptions;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs extends zza implements IInterface {
    zzs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.fido.fido2.internal.regular.IFido2AppService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zzc(zzr zzrVar, PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions) {
        Parcel parcelZza = zza();
        int i = zzc.$r8$clinit;
        parcelZza.writeStrongBinder(zzrVar);
        zzc.zzd(parcelZza, publicKeyCredentialCreationOptions);
        zzb(1, parcelZza);
    }
}
