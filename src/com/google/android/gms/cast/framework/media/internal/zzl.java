package com.google.android.gms.cast.framework.media.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.images.WebImage;

/* JADX INFO: loaded from: classes4.dex */
final class zzl {
    public final Uri zza;
    public Bitmap zzb;

    public zzl(WebImage webImage) {
        this.zza = webImage == null ? null : webImage.getUrl();
    }
}
