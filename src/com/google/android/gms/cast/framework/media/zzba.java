package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzba implements com.google.android.gms.cast.internal.zzat {
    final /* synthetic */ zzbc zza;

    public zzba(zzbc zzbcVar) {
        Objects.requireNonNull(zzbcVar);
        this.zza = zzbcVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zza(String str, long j, long j2, long j3) {
        try {
            zzbc zzbcVar = this.zza;
            zzbcVar.setResult(new zzbb(zzbcVar, new Status(2103)));
        } catch (IllegalStateException e) {
            RemoteMediaClient.zza.m290e(e, "Result already set when calling onRequestReplaced", new Object[0]);
        }
        Iterator it = this.zza.zzg.zzv().iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, 2103, j2, j3);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void zzb(String str, long j, int i, Object obj, long j2, long j3) {
        int i2;
        com.google.android.gms.cast.internal.zzaq zzaqVar = obj instanceof com.google.android.gms.cast.internal.zzaq ? (com.google.android.gms.cast.internal.zzaq) obj : null;
        try {
            i2 = i;
        } catch (IllegalStateException e) {
            e = e;
            i2 = i;
        }
        try {
            this.zza.setResult(new zzbd(new Status(i2), zzaqVar != null ? zzaqVar.zza : null, zzaqVar != null ? zzaqVar.zzb : null));
        } catch (IllegalStateException e2) {
            e = e2;
            RemoteMediaClient.zza.m290e(e, "Result already set when calling onRequestCompleted", new Object[0]);
        }
        Iterator it = this.zza.zzg.zzv().iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, i2, j2, j3);
            i2 = i;
        }
    }
}
