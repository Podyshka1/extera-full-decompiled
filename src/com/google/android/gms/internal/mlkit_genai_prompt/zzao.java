package com.google.android.gms.internal.mlkit_genai_prompt;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes5.dex */
public final class zzao extends zzk implements zzaq {
    public zzao(IBinder iBinder) {
        super(iBinder, "com.google.android.apps.aicore.aidl.IAiCoreServiceProvider");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzaq
    public final void zzd(zzas zzasVar) {
        Parcel parcelZza = zza();
        int i = zzm.$r8$clinit;
        parcelZza.writeStrongBinder(zzasVar);
        zzc(2, parcelZza);
    }
}
