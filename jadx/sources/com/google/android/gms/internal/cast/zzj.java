package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.SessionTransferCallback;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj extends SessionTransferCallback {
    final /* synthetic */ zzk zza;

    public zzj(zzk zzkVar) {
        this.zza = zzkVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferFailed(int i, int i2) {
        zzk.zza.m336d("onTransferFailed with type = %d and reason = %d", Integer.valueOf(i), Integer.valueOf(i2));
        this.zza.zzs();
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zzf(zzkVar.zzh, i, i2), 232);
        this.zza.zzj = false;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferred(int i, SessionState sessionState) {
        zzk.zza.m336d("onTransferred with type = %d", Integer.valueOf(i));
        this.zza.zzs();
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zzg(zzkVar.zzh, i), 231);
        this.zza.zzj = false;
        this.zza.zzh = null;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferring(int i) {
        zzk.zza.m336d("onTransferring with type = %d", Integer.valueOf(i));
        this.zza.zzj = true;
        this.zza.zzs();
        zzk zzkVar = this.zza;
        this.zza.zzb.zze(zzkVar.zzd.zzg(zzkVar.zzh, i), 230);
    }
}
