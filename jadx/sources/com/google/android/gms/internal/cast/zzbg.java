package com.google.android.gms.internal.cast;

import android.content.Context;
import androidx.mediarouter.media.MediaRouter;

/* JADX INFO: loaded from: classes.dex */
public final class zzbg {
    public MediaRouter zza;
    private final Context zzb;

    public zzbg(Context context) {
        this.zzb = context;
    }

    public final MediaRouter zza() {
        if (this.zza == null) {
            this.zza = MediaRouter.getInstance(this.zzb);
        }
        return this.zza;
    }

    public final void zzb(MediaRouter.Callback callback) {
        MediaRouter mediaRouterZza = zza();
        if (mediaRouterZza != null) {
            mediaRouterZza.removeCallback(callback);
        }
    }
}
