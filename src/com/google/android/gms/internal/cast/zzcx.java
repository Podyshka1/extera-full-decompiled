package com.google.android.gms.internal.cast;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaUtils;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import com.google.android.gms.common.images.WebImage;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcx extends UIController {
    private final ImageView zza;
    private final ImageHints zzb;
    private final Bitmap zzc;
    private final ImagePicker zzd;
    private final com.google.android.gms.cast.framework.media.internal.zzb zze;

    public zzcx(ImageView imageView, Context context, ImageHints imageHints, int i) {
        CastMediaOptions castMediaOptions;
        com.google.android.gms.cast.framework.media.internal.zzb zzbVar = new com.google.android.gms.cast.framework.media.internal.zzb(context.getApplicationContext());
        this.zza = imageView;
        this.zzb = imageHints;
        this.zzc = BitmapFactory.decodeResource(context.getResources(), i);
        CastContext castContextZza = CastContext.zza(context);
        ImagePicker imagePicker = null;
        if (castContextZza != null && (castMediaOptions = castContextZza.getCastOptions().getCastMediaOptions()) != null) {
            imagePicker = castMediaOptions.getImagePicker();
        }
        this.zzd = imagePicker;
        this.zze = zzbVar;
    }

    private final void zzb() {
        MediaInfo media;
        WebImage webImageOnPickImage;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zza.setImageBitmap(this.zzc);
            return;
        }
        MediaQueueItem preloadedItem = remoteMediaClient.getPreloadedItem();
        Uri imageUri = null;
        if (preloadedItem != null && (media = preloadedItem.getMedia()) != null) {
            ImagePicker imagePicker = this.zzd;
            MediaMetadata metadata = media.getMetadata();
            imageUri = (imagePicker == null || metadata == null || (webImageOnPickImage = imagePicker.onPickImage(metadata, this.zzb)) == null || webImageOnPickImage.getUrl() == null) ? MediaUtils.getImageUri(media, 0) : webImageOnPickImage.getUrl();
        }
        if (imageUri == null) {
            this.zza.setImageBitmap(this.zzc);
        } else {
            this.zze.zzb(imageUri);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zzb();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        this.zze.zza(new zzcw(this));
        this.zza.setImageBitmap(this.zzc);
        zzb();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        this.zze.zzc();
        this.zza.setImageBitmap(this.zzc);
        super.onSessionEnded();
    }

    public final /* synthetic */ ImageView zza() {
        return this.zza;
    }
}
