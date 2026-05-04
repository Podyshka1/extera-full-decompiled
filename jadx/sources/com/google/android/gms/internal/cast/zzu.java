package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.SessionTransferCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu extends SessionTransferCallback {
    final /* synthetic */ zzv zza;

    public zzu(zzv zzvVar) {
        this.zza = zzvVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferFailed(int i, int i2) {
        zzy zzyVar = new zzy(11);
        zzyVar.zzb(Integer.valueOf(i2));
        zzyVar.zza(Boolean.valueOf(this.zza.zzb.zze()));
        zzv.zzf(this.zza, new zzz(zzyVar));
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferred(int i, SessionState sessionState) {
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferring(int i) {
        zzy zzyVar = new zzy(10);
        zzyVar.zza(Boolean.valueOf(this.zza.zzb.zze()));
        zzv.zzf(this.zza, new zzz(zzyVar));
        this.zza.zzg().zzd(new zzab(new zzaa(i)));
    }
}
