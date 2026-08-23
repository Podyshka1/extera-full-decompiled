package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzda implements com.google.android.gms.cast.internal.zzat {
    final /* synthetic */ zzdc zza;

    public zzda(zzdc zzdcVar) {
        Objects.requireNonNull(zzdcVar);
        this.zza = zzdcVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zza(String str, long j, long j2, long j3) {
        try {
            zzdc zzdcVar = this.zza;
            zzdcVar.setResult(new zzdb(zzdcVar, new Status(2103)));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestReplaced", e);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zzb(String str, long j, int i, Object obj, long j2, long j3) {
        com.google.android.gms.cast.internal.zzaq zzaqVar = obj instanceof com.google.android.gms.cast.internal.zzaq ? (com.google.android.gms.cast.internal.zzaq) obj : null;
        try {
            this.zza.setResult(new zzdd(new Status(i), zzaqVar != null ? zzaqVar.zza : null));
        } catch (IllegalStateException e) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestCompleted", e);
        }
    }
}
