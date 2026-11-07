package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
final class zzax implements com.google.android.gms.cast.internal.zzas {
    final /* synthetic */ RemoteMediaClient zza;
    private com.google.android.gms.cast.zzq zzb;
    private final AtomicLong zzc;

    public zzax(RemoteMediaClient remoteMediaClient) {
        Objects.requireNonNull(remoteMediaClient);
        this.zza = remoteMediaClient;
        this.zzc = new AtomicLong((CastUtils.zzb() & WebSocketProtocol.PAYLOAD_SHORT_MAX) * NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
    }

    public final void zza(com.google.android.gms.cast.zzq zzqVar) {
        this.zzb = zzqVar;
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, String str2, final long j, String str3) {
        com.google.android.gms.cast.zzq zzqVar = this.zzb;
        if (zzqVar != null) {
            zzqVar.zzf(str, str2).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.cast.framework.media.zzaw
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final /* synthetic */ void onFailure(Exception exc) {
                    this.zza.zza.zzt().zzN(j, exc instanceof ApiException ? ((ApiException) exc).getStatusCode() : 13);
                }
            });
        } else {
            Segment$$ExternalSyntheticBUOutline1.m973m("Device is not connected");
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final long zzc() {
        return this.zzc.getAndIncrement();
    }
}
