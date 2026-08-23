package com.google.android.gms.cast.framework.media;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzbk extends BasePendingResult {
    private com.google.android.gms.cast.internal.zzas zza;
    private final boolean zzb;
    final /* synthetic */ RemoteMediaClient zzg;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzbk(RemoteMediaClient remoteMediaClient, boolean z) {
        super(null);
        this.zzg = remoteMediaClient;
        this.zzb = z;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbj(this, status);
    }

    abstract void zza();

    final com.google.android.gms.cast.internal.zzas zzb() {
        if (this.zza == null) {
            this.zza = new zzbi(this);
        }
        return this.zza;
    }

    public final void zzc() {
        if (!this.zzb) {
            Iterator it = this.zzg.zzi.iterator();
            if (it.hasNext()) {
                WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
                throw null;
            }
            Iterator it2 = this.zzg.zzj.iterator();
            while (it2.hasNext()) {
                ((RemoteMediaClient.Callback) it2.next()).onSendingRemoteMediaRequest();
            }
        }
        try {
            synchronized (this.zzg.zzb) {
                zza();
            }
        } catch (com.google.android.gms.cast.internal.zzao unused) {
            setResult(new zzbj(this, new Status(2100)));
        }
    }
}
