package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzi extends zzc {
    final /* synthetic */ ImagePicker zza;

    public /* synthetic */ zzi(ImagePicker imagePicker, byte[] bArr) {
        Objects.requireNonNull(imagePicker);
        this.zza = imagePicker;
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final WebImage zze(MediaMetadata mediaMetadata, int i) {
        return this.zza.onPickImage(mediaMetadata, i);
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final IObjectWrapper zzf() {
        return ObjectWrapper.wrap(this.zza);
    }

    @Override // com.google.android.gms.cast.framework.media.zzd
    public final WebImage zzg(MediaMetadata mediaMetadata, ImageHints imageHints) {
        return this.zza.onPickImage(mediaMetadata, imageHints);
    }
}
