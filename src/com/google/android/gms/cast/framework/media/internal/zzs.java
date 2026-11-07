package com.google.android.gms.cast.framework.media.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.mediarouter.media.MediaItemMetadata;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.C1564R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.internal.cast.zzbx;
import com.google.android.gms.internal.cast.zzfg;
import com.google.android.gms.internal.cast.zzfk;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
public final class zzs {
    public static final /* synthetic */ int zza = 0;
    private static final Logger zzb = new Logger("MediaSessionManager");
    private final Context zzc;
    private final CastOptions zzd;
    private final zzbx zze;
    private final SessionManager zzf;
    private final NotificationOptions zzg;
    private final ComponentName zzh;
    private final ComponentName zzi;
    private final zzb zzj;
    private final zzb zzk;
    private final zzm zzl;
    private final Handler zzm;
    private final Runnable zzn;
    private final RemoteMediaClient.Callback zzo;
    private RemoteMediaClient zzp;
    private CastDevice zzq;
    private MediaSessionCompat zzr;
    private MediaSessionCompat.Callback zzs;
    private boolean zzt;
    private PlaybackStateCompat.CustomAction zzu;
    private PlaybackStateCompat.CustomAction zzv;
    private PlaybackStateCompat.CustomAction zzw;
    private PlaybackStateCompat.CustomAction zzx;

    /* JADX WARN: Multi-variable type inference failed */
    public zzs(Context context, CastOptions castOptions, zzbx zzbxVar) {
        this.zzc = context;
        this.zzd = castOptions;
        this.zze = zzbxVar;
        CastContext sharedInstance = CastContext.getSharedInstance();
        Object[] objArr = 0;
        this.zzf = sharedInstance != null ? sharedInstance.getSessionManager() : null;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        this.zzg = castMediaOptions == null ? null : castMediaOptions.getNotificationOptions();
        this.zzo = new zzr(this, objArr == true ? 1 : 0);
        String expandedControllerActivityClassName = castMediaOptions == null ? null : castMediaOptions.getExpandedControllerActivityClassName();
        this.zzh = !TextUtils.isEmpty(expandedControllerActivityClassName) ? new ComponentName(context, expandedControllerActivityClassName) : null;
        String mediaIntentReceiverClassName = castMediaOptions == null ? null : castMediaOptions.getMediaIntentReceiverClassName();
        this.zzi = !TextUtils.isEmpty(mediaIntentReceiverClassName) ? new ComponentName(context, mediaIntentReceiverClassName) : null;
        zzb zzbVar = new zzb(context);
        this.zzj = zzbVar;
        zzbVar.zza(new zzn(this));
        zzb zzbVar2 = new zzb(context);
        this.zzk = zzbVar2;
        zzbVar2.zza(new zzo(this));
        this.zzm = new zzfk(Looper.getMainLooper());
        this.zzl = zzm.zzb(castOptions) ? new zzm(context) : null;
        this.zzn = new Runnable() { // from class: com.google.android.gms.cast.framework.media.internal.zzq
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                this.zza.zzf();
            }
        };
    }

    private final void zzm(int i, MediaInfo mediaInfo) {
        PlaybackStateCompat playbackStateCompatBuild;
        MediaSessionCompat mediaSessionCompat;
        MediaMetadata metadata;
        PendingIntent pendingIntentZza;
        MediaSessionCompat mediaSessionCompat2 = this.zzr;
        if (mediaSessionCompat2 == null) {
            return;
        }
        Bundle bundle = new Bundle();
        PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder();
        RemoteMediaClient remoteMediaClient = this.zzp;
        if (remoteMediaClient == null || this.zzl == null) {
            playbackStateCompatBuild = builder.build();
        } else {
            builder.setState(i, (remoteMediaClient.zzk() == 0 || remoteMediaClient.isLiveStream()) ? 0L : remoteMediaClient.getApproximateStreamPosition(), 1.0f);
            if (i == 0) {
                playbackStateCompatBuild = builder.build();
            } else {
                NotificationOptions notificationOptions = this.zzg;
                com.google.android.gms.cast.framework.media.zzg zzgVarZzo = notificationOptions != null ? notificationOptions.zzo() : null;
                RemoteMediaClient remoteMediaClient2 = this.zzp;
                long jZzn = (remoteMediaClient2 == null || remoteMediaClient2.isLiveStream() || this.zzp.isPlayingAd()) ? 0L : 256L;
                if (zzgVarZzo != null) {
                    List<NotificationAction> listZzb = zzt.zzb(zzgVarZzo);
                    if (listZzb != null) {
                        for (NotificationAction notificationAction : listZzb) {
                            String action = notificationAction.getAction();
                            if (zzu(action)) {
                                jZzn |= zzn(action, i, bundle);
                            } else {
                                zzo(builder, action, notificationAction);
                            }
                        }
                    }
                } else if (notificationOptions != null) {
                    for (String str : notificationOptions.getActions()) {
                        if (zzu(str)) {
                            jZzn |= zzn(str, i, bundle);
                        } else {
                            zzo(builder, str, null);
                        }
                    }
                }
                playbackStateCompatBuild = builder.setActions(jZzn).build();
            }
        }
        mediaSessionCompat2.setPlaybackState(playbackStateCompatBuild);
        NotificationOptions notificationOptions2 = this.zzg;
        if (notificationOptions2 != null && notificationOptions2.zzm()) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
        }
        if (notificationOptions2 != null && notificationOptions2.zzn()) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        if (bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS") || bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
            mediaSessionCompat2.setExtras(bundle);
        }
        if (i == 0) {
            mediaSessionCompat2.setMetadata(new MediaMetadataCompat.Builder().build());
            return;
        }
        if (this.zzp != null) {
            ComponentName componentName = this.zzh;
            if (componentName == null) {
                pendingIntentZza = null;
            } else {
                Intent intent = new Intent();
                intent.setComponent(componentName);
                pendingIntentZza = zzfg.zza(this.zzc, 0, intent, 201326592);
            }
            if (pendingIntentZza != null) {
                mediaSessionCompat2.setSessionActivity(pendingIntentZza);
            }
        }
        if (this.zzp == null || (mediaSessionCompat = this.zzr) == null || mediaInfo == null || (metadata = mediaInfo.getMetadata()) == null) {
            return;
        }
        RemoteMediaClient remoteMediaClient3 = this.zzp;
        long streamDuration = (remoteMediaClient3 == null || !remoteMediaClient3.isLiveStream()) ? mediaInfo.getStreamDuration() : 0L;
        String string = metadata.getString(MediaMetadata.KEY_TITLE);
        String string2 = metadata.getString(MediaMetadata.KEY_SUBTITLE);
        MediaMetadataCompat.Builder builderPutLong = zzq().putLong(MediaItemMetadata.KEY_DURATION, streamDuration);
        if (string != null) {
            builderPutLong.putString(MediaItemMetadata.KEY_TITLE, string);
            builderPutLong.putString("android.media.metadata.DISPLAY_TITLE", string);
        }
        if (string2 != null) {
            builderPutLong.putString("android.media.metadata.DISPLAY_SUBTITLE", string2);
        }
        mediaSessionCompat.setMetadata(builderPutLong.build());
        Uri uriZzp = zzp(metadata, 0);
        if (uriZzp != null) {
            this.zzj.zzb(uriZzp);
        } else {
            zze(null, 0);
        }
        Uri uriZzp2 = zzp(metadata, 3);
        if (uriZzp2 != null) {
            this.zzk.zzb(uriZzp2);
        } else {
            zze(null, 3);
        }
    }

    private final long zzn(String str, int i, Bundle bundle) {
        long j;
        int iHashCode = str.hashCode();
        if (iHashCode != -945151566) {
            if (iHashCode != -945080078) {
                if (iHashCode == 235550565 && str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    int i2 = 3;
                    if (i == 3) {
                        j = 514;
                    } else {
                        i2 = i;
                        j = 512;
                    }
                    if (i2 != 2) {
                        return j;
                    }
                    return 516L;
                }
            } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                RemoteMediaClient remoteMediaClient = this.zzp;
                if (remoteMediaClient != null && remoteMediaClient.zzl()) {
                    return 16L;
                }
                bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
                return 0L;
            }
        } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
            RemoteMediaClient remoteMediaClient2 = this.zzp;
            if (remoteMediaClient2 != null && remoteMediaClient2.zzm()) {
                return 32L;
            }
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        return 0L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzo(PlaybackStateCompat.Builder builder, String str, NotificationAction notificationAction) {
        PlaybackStateCompat.CustomAction customActionBuild;
        NotificationOptions notificationOptions;
        NotificationOptions notificationOptions2;
        NotificationOptions notificationOptions3;
        NotificationOptions notificationOptions4;
        switch (str.hashCode()) {
            case -1699820260:
                if (!str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    customActionBuild = notificationAction == null ? null : new PlaybackStateCompat.CustomAction.Builder(str, notificationAction.getContentDescription(), notificationAction.getIconResId()).build();
                } else {
                    if (this.zzv == null && (notificationOptions = this.zzg) != null) {
                        long skipStepMs = notificationOptions.getSkipStepMs();
                        this.zzv = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_REWIND, this.zzc.getResources().getString(zzt.zzg(notificationOptions, skipStepMs)), zzt.zzf(notificationOptions, skipStepMs)).build();
                    }
                    customActionBuild = this.zzv;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    if (this.zzw == null && (notificationOptions2 = this.zzg) != null) {
                        this.zzw = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_STOP_CASTING, this.zzc.getResources().getString(notificationOptions2.zzl()), notificationOptions2.getDisconnectDrawableResId()).build();
                    }
                    customActionBuild = this.zzw;
                    break;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    if (this.zzx == null && (notificationOptions3 = this.zzg) != null) {
                        this.zzx = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_DISCONNECT, this.zzc.getResources().getString(notificationOptions3.zzl()), notificationOptions3.getDisconnectDrawableResId()).build();
                    }
                    customActionBuild = this.zzx;
                    break;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    if (this.zzu == null && (notificationOptions4 = this.zzg) != null) {
                        long skipStepMs2 = notificationOptions4.getSkipStepMs();
                        this.zzu = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_FORWARD, this.zzc.getResources().getString(zzt.zze(notificationOptions4, skipStepMs2)), zzt.zzd(notificationOptions4, skipStepMs2)).build();
                    }
                    customActionBuild = this.zzu;
                    break;
                }
                break;
        }
        if (customActionBuild != null) {
            builder.addCustomAction(customActionBuild);
        }
    }

    private final Uri zzp(MediaMetadata mediaMetadata, int i) {
        CastMediaOptions castMediaOptions = this.zzd.getCastMediaOptions();
        ImagePicker imagePicker = castMediaOptions == null ? null : castMediaOptions.getImagePicker();
        WebImage webImageOnPickImage = imagePicker != null ? imagePicker.onPickImage(mediaMetadata, i) : mediaMetadata.hasImages() ? mediaMetadata.getImages().get(0) : null;
        if (webImageOnPickImage == null) {
            return null;
        }
        return webImageOnPickImage.getUrl();
    }

    private final void zzr() {
        zzm zzmVar = this.zzl;
        if (zzmVar != null) {
            zzb.m311d("Stopping media notification.", new Object[0]);
            zzmVar.zza();
        }
    }

    @RequiresNonNull({"appContext", "handler", "options"})
    private final void zzs(boolean z) {
        if (this.zzd.getEnableReconnectionService()) {
            Runnable runnable = this.zzn;
            if (runnable != null) {
                this.zzm.removeCallbacks(runnable);
            }
            Context context = this.zzc;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            try {
                context.startService(intent);
            } catch (IllegalStateException unused) {
                if (z) {
                    this.zzm.postDelayed(this.zzn, 1000L);
                }
            }
        }
    }

    private final void zzt() {
        if (this.zzd.getEnableReconnectionService()) {
            this.zzm.removeCallbacks(this.zzn);
            Context context = this.zzc;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            context.stopService(intent);
        }
    }

    private static final boolean zzu(String str) {
        return TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT);
    }

    public final void zzb(int i) {
        if (this.zzt) {
            this.zzt = false;
            RemoteMediaClient remoteMediaClient = this.zzp;
            if (remoteMediaClient != null) {
                remoteMediaClient.unregisterCallback(this.zzo);
            }
            AudioManager audioManager = (AudioManager) this.zzc.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            if (audioManager != null) {
                audioManager.abandonAudioFocus(null);
            }
            this.zze.zzv(null);
            zzb zzbVar = this.zzj;
            if (zzbVar != null) {
                zzbVar.zzc();
            }
            zzb zzbVar2 = this.zzk;
            if (zzbVar2 != null) {
                zzbVar2.zzc();
            }
            MediaSessionCompat mediaSessionCompat = this.zzr;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                this.zzr.setMetadata(new MediaMetadataCompat.Builder().build());
                zzm(0, null);
            }
            MediaSessionCompat mediaSessionCompat2 = this.zzr;
            if (mediaSessionCompat2 != null) {
                mediaSessionCompat2.setActive(false);
                this.zzr.release();
                this.zzr = null;
            }
            this.zzp = null;
            this.zzq = null;
            this.zzs = null;
            zzr();
            if (i == 0) {
                zzt();
            }
        }
    }

    public final void zzc(CastDevice castDevice) {
        zzb.m315i("update Cast device to %s", castDevice);
        this.zzq = castDevice;
        zzd(false);
    }

    public final void zzd(boolean z) {
        MediaQueueItem loadingItem;
        RemoteMediaClient remoteMediaClient = this.zzp;
        if (remoteMediaClient == null) {
            return;
        }
        int iZzk = remoteMediaClient.zzk();
        MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
        if (remoteMediaClient.isLoadingNextItem() && (loadingItem = remoteMediaClient.getLoadingItem()) != null && loadingItem.getMedia() != null) {
            mediaInfo = loadingItem.getMedia();
        }
        zzm(iZzk, mediaInfo);
        if (!remoteMediaClient.hasMediaSession()) {
            zzr();
            zzt();
        } else if (iZzk != 0) {
            zzm zzmVar = this.zzl;
            if (zzmVar != null) {
                zzb.m311d("Update media notification.", new Object[0]);
                zzmVar.zzc(this.zzq, this.zzp, this.zzr, z);
            }
            if (remoteMediaClient.isLoadingNextItem()) {
                return;
            }
            zzs(true);
        }
    }

    public final void zze(Bitmap bitmap, int i) {
        MediaSessionCompat mediaSessionCompat = this.zzr;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
            bitmap = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        mediaSessionCompat.setMetadata(zzq().putBitmap(i == 0 ? "android.media.metadata.DISPLAY_ICON" : "android.media.metadata.ALBUM_ART", bitmap).build());
    }

    public final /* synthetic */ void zzf() {
        zzs(false);
    }

    public final /* synthetic */ Context zzh() {
        return this.zzc;
    }

    public final /* synthetic */ SessionManager zzi() {
        return this.zzf;
    }

    public final /* synthetic */ NotificationOptions zzj() {
        return this.zzg;
    }

    public final /* synthetic */ ComponentName zzk() {
        return this.zzi;
    }

    public final /* synthetic */ RemoteMediaClient zzl() {
        return this.zzp;
    }

    private final MediaMetadataCompat.Builder zzq() {
        MediaSessionCompat mediaSessionCompat = this.zzr;
        MediaMetadataCompat metadata = mediaSessionCompat == null ? null : mediaSessionCompat.getController().getMetadata();
        return metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata);
    }

    public final void zza(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        ComponentName componentName;
        CastOptions castOptions = this.zzd;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.getCastMediaOptions();
        if (this.zzt || castOptions == null || castMediaOptions == null || this.zzg == null || remoteMediaClient == null || castDevice == null || (componentName = this.zzi) == null) {
            zzb.m311d("skip attaching media session", new Object[0]);
            return;
        }
        this.zzp = remoteMediaClient;
        remoteMediaClient.registerCallback(this.zzo);
        this.zzq = castDevice;
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(componentName);
        Context context = this.zzc;
        PendingIntent pendingIntentZzb = zzfg.zzb(context, 0, intent, 67108864);
        if (castMediaOptions.getMediaSessionEnabled()) {
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "CastMediaSession", componentName, pendingIntentZzb);
            this.zzr = mediaSessionCompat;
            zzm(0, null);
            CastDevice castDevice2 = this.zzq;
            if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.getFriendlyName())) {
                mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString(MediaItemMetadata.KEY_ALBUM_ARTIST, context.getResources().getString(C1564R.string.cast_casting_to_device, this.zzq.getFriendlyName())).build());
            }
            zzp zzpVar = new zzp(this);
            this.zzs = zzpVar;
            mediaSessionCompat.setCallback(zzpVar);
            mediaSessionCompat.setActive(true);
            this.zze.zzv(mediaSessionCompat);
        }
        this.zzt = true;
        zzd(false);
    }
}
