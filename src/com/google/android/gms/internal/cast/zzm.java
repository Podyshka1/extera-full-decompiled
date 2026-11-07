package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.SessionState;
import com.google.android.gms.cast.framework.SessionTransferCallback;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends SessionTransferCallback {
    final /* synthetic */ zzn zza;

    public zzm(zzn zznVar) {
        Objects.requireNonNull(zznVar);
        this.zza = zznVar;
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferFailed(int i, int i2) {
        int i3 = zzn.$r8$clinit;
        zzn.zzb.m287d("onTransferFailed with type = %d and reason = %d", Integer.valueOf(i), Integer.valueOf(i2));
        zzn zznVar = this.zza;
        zznVar.zze();
        zznVar.zzj().zzd(zznVar.zzk().zzg(zznVar.zzm(), i, i2), 232);
        zznVar.zzp(false);
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferred(int i, SessionState sessionState) {
        int i2 = zzn.$r8$clinit;
        zzn.zzb.m287d("onTransferred with type = %d", Integer.valueOf(i));
        zzn zznVar = this.zza;
        zznVar.zze();
        zznVar.zzj().zzd(zznVar.zzk().zzf(zznVar.zzm(), i), 231);
        zznVar.zzp(false);
        zznVar.zzn(null);
    }

    @Override // com.google.android.gms.cast.framework.SessionTransferCallback
    public final void onTransferring(int i) {
        int i2 = zzn.$r8$clinit;
        zzn.zzb.m287d("onTransferring with type = %d", Integer.valueOf(i));
        zzn zznVar = this.zza;
        zznVar.zzp(true);
        zznVar.zze();
        zznVar.zzj().zzd(zznVar.zzk().zzf(zznVar.zzm(), i), 230);
    }
}
