package com.google.android.gms.cast.framework.media;

import android.os.IInterface;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;

/* JADX INFO: loaded from: classes4.dex */
public interface zzd extends IInterface {
    WebImage zze(MediaMetadata mediaMetadata, int i);

    IObjectWrapper zzf();

    WebImage zzg(MediaMetadata mediaMetadata, ImageHints imageHints);
}
