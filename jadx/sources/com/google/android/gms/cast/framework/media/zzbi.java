package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.zzap;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
final class zzbi implements com.google.android.gms.cast.internal.zzas {
    final /* synthetic */ zzbk zza;

    zzbi(zzbk zzbkVar) {
        this.zza = zzbkVar;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zza(String str, long j, int i, Object obj, long j2, long j3) {
        int i2;
        try {
            zzbk zzbkVar = this.zza;
            i2 = i;
            try {
                Status status = new Status(i2);
                Object obj2 = obj;
                if (true != (obj2 instanceof zzap)) {
                    obj2 = null;
                }
                zzbkVar.setResult(new zzbl(status, obj2 != null ? ((zzap) obj2).zza : null, obj2 != null ? ((zzap) obj2).zzb : null));
            } catch (IllegalStateException e) {
                e = e;
                RemoteMediaClient.zza.m339e(e, "Result already set when calling onRequestCompleted", new Object[0]);
            }
        } catch (IllegalStateException e2) {
            e = e2;
            i2 = i;
        }
        Iterator it = this.zza.zzg.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, i2, j2, j3);
            i2 = i;
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j, long j2, long j3) {
        try {
            zzbk zzbkVar = this.zza;
            zzbkVar.setResult(new zzbj(zzbkVar, new Status(2103)));
        } catch (IllegalStateException e) {
            RemoteMediaClient.zza.m339e(e, "Result already set when calling onRequestReplaced", new Object[0]);
        }
        Iterator it = this.zza.zzg.zzj.iterator();
        while (it.hasNext()) {
            ((RemoteMediaClient.Callback) it.next()).zza(str, j, 2103, j2, j3);
        }
    }
}
