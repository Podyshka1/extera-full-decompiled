package com.google.android.gms.internal.cast;

import android.graphics.Bitmap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzcw implements com.google.android.gms.cast.framework.media.internal.zza {
    final /* synthetic */ zzcx zza;

    public zzcw(zzcx zzcxVar) {
        Objects.requireNonNull(zzcxVar);
        this.zza = zzcxVar;
    }

    @Override // com.google.android.gms.cast.framework.media.internal.zza
    public final void zza(Bitmap bitmap) {
        if (bitmap != null) {
            this.zza.zza().setImageBitmap(bitmap);
        }
    }
}
