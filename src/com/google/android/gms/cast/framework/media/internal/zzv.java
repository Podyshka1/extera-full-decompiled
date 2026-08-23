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
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R$string;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzbf;
import com.google.android.gms.internal.cast.zzdy;
import com.google.android.gms.internal.cast.zzed;
import java.util.List;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
public final class zzv {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Logger zzb = new Logger("MediaSessionManager");
    private final Context zzc;
    private final CastOptions zzd;
    private final zzbf zze;
    private final SessionManager zzf;
    private final NotificationOptions zzg;
    private final ComponentName zzh;
    private final ComponentName zzi;
    private final zzb zzj;
    private final zzb zzk;
    private final zzo zzl;
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
    public zzv(Context context, CastOptions castOptions, zzbf zzbfVar) {
        this.zzc = context;
        this.zzd = castOptions;
        this.zze = zzbfVar;
        CastContext sharedInstance = CastContext.getSharedInstance();
        Object[] objArr = 0;
        this.zzf = sharedInstance != null ? sharedInstance.getSessionManager() : null;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        this.zzg = castMediaOptions == null ? null : castMediaOptions.getNotificationOptions();
        this.zzo = new zzu(this, objArr == true ? 1 : 0);
        String expandedControllerActivityClassName = castMediaOptions == null ? null : castMediaOptions.getExpandedControllerActivityClassName();
        this.zzh = !TextUtils.isEmpty(expandedControllerActivityClassName) ? new ComponentName(context, expandedControllerActivityClassName) : null;
        String mediaIntentReceiverClassName = castMediaOptions == null ? null : castMediaOptions.getMediaIntentReceiverClassName();
        this.zzi = !TextUtils.isEmpty(mediaIntentReceiverClassName) ? new ComponentName(context, mediaIntentReceiverClassName) : null;
        zzb zzbVar = new zzb(context);
        this.zzj = zzbVar;
        zzbVar.zzc(new zzq(this));
        zzb zzbVar2 = new zzb(context);
        this.zzk = zzbVar2;
        zzbVar2.zzc(new zzr(this));
        this.zzm = new zzed(Looper.getMainLooper());
        this.zzl = zzo.zze(castOptions) ? new zzo(context) : null;
        this.zzn = new Runnable() { // from class: com.google.android.gms.cast.framework.media.internal.zzp
            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzj();
            }
        };
    }

    private final long zzm(String str, int i, Bundle bundle) {
        long j;
        int iHashCode = str.hashCode();
        if (iHashCode != -945151566) {
            if (iHashCode != -945080078) {
                if (iHashCode == 235550565 && str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    if (i == 3) {
                        j = 514;
                        i = 3;
                    } else {
                        j = 512;
                    }
                    if (i != 2) {
                        return j;
                    }
                    return 516L;
                }
            } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                RemoteMediaClient remoteMediaClient = this.zzp;
                if (remoteMediaClient != null && remoteMediaClient.zzu()) {
                    return 16L;
                }
                bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
                return 0L;
            }
        } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
            RemoteMediaClient remoteMediaClient2 = this.zzp;
            if (remoteMediaClient2 != null && remoteMediaClient2.zzt()) {
                return 32L;
            }
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        return 0L;
    }

    private final Uri zzn(MediaMetadata mediaMetadata, int i) {
        CastMediaOptions castMediaOptions = this.zzd.getCastMediaOptions();
        if (castMediaOptions != null) {
            castMediaOptions.getImagePicker();
        }
        WebImage webImage = mediaMetadata.hasImages() ? (WebImage) mediaMetadata.getImages().get(0) : null;
        if (webImage == null) {
            return null;
        }
        return webImage.getUrl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzp(Bitmap bitmap, int i) {
        MediaSessionCompat mediaSessionCompat = this.zzr;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null) {
            bitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        mediaSessionCompat.setMetadata(zzo().putBitmap(i == 0 ? "android.media.metadata.DISPLAY_ICON" : "android.media.metadata.ALBUM_ART", bitmap).build());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00db  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zzq(PlaybackStateCompat.Builder builder, String str, NotificationAction notificationAction) {
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
                        this.zzv = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_REWIND, this.zzc.getResources().getString(zzw.zzd(notificationOptions, skipStepMs)), zzw.zzc(this.zzg, skipStepMs)).build();
                    }
                    customActionBuild = this.zzv;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    if (this.zzw == null && (notificationOptions2 = this.zzg) != null) {
                        this.zzw = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_STOP_CASTING, this.zzc.getResources().getString(notificationOptions2.zza()), this.zzg.getDisconnectDrawableResId()).build();
                    }
                    customActionBuild = this.zzw;
                    break;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    if (this.zzx == null && (notificationOptions3 = this.zzg) != null) {
                        this.zzx = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_DISCONNECT, this.zzc.getResources().getString(notificationOptions3.zza()), this.zzg.getDisconnectDrawableResId()).build();
                    }
                    customActionBuild = this.zzx;
                    break;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    if (this.zzu == null && (notificationOptions4 = this.zzg) != null) {
                        long skipStepMs2 = notificationOptions4.getSkipStepMs();
                        this.zzu = new PlaybackStateCompat.CustomAction.Builder(MediaIntentReceiver.ACTION_FORWARD, this.zzc.getResources().getString(zzw.zzb(notificationOptions4, skipStepMs2)), zzw.zza(this.zzg, skipStepMs2)).build();
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

    private final void zzr(boolean z) {
        if (this.zzd.getEnableReconnectionService()) {
            Runnable runnable = this.zzn;
            if (runnable != null) {
                this.zzm.removeCallbacks(runnable);
            }
            Intent intent = new Intent(this.zzc, (Class<?>) ReconnectionService.class);
            intent.setPackage(this.zzc.getPackageName());
            try {
                this.zzc.startService(intent);
            } catch (IllegalStateException unused) {
                if (z) {
                    this.zzm.postDelayed(this.zzn, 1000L);
                }
            }
        }
    }

    private final void zzs() {
        zzo zzoVar = this.zzl;
        if (zzoVar != null) {
            zzb.m336d("Stopping media notification.", new Object[0]);
            zzoVar.zzc();
        }
    }

    private final void zzt() {
        if (this.zzd.getEnableReconnectionService()) {
            this.zzm.removeCallbacks(this.zzn);
            Intent intent = new Intent(this.zzc, (Class<?>) ReconnectionService.class);
            intent.setPackage(this.zzc.getPackageName());
            this.zzc.stopService(intent);
        }
    }

    private final void zzu(int i, MediaInfo mediaInfo) {
        PlaybackStateCompat playbackStateCompatBuild;
        MediaSessionCompat mediaSessionCompat;
        MediaMetadata metadata;
        PendingIntent activity;
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
            builder.setState(i, (remoteMediaClient.zza() == 0 || remoteMediaClient.isLiveStream()) ? 0L : remoteMediaClient.getApproximateStreamPosition(), 1.0f);
            if (i == 0) {
                playbackStateCompatBuild = builder.build();
            } else {
                NotificationOptions notificationOptions = this.zzg;
                com.google.android.gms.cast.framework.media.zzg zzgVarZzm = notificationOptions != null ? notificationOptions.zzm() : null;
                RemoteMediaClient remoteMediaClient2 = this.zzp;
                long jZzm = (remoteMediaClient2 == null || remoteMediaClient2.isLiveStream() || this.zzp.isPlayingAd()) ? 0L : 256L;
                if (zzgVarZzm != null) {
                    List<NotificationAction> listZzf = zzw.zzf(zzgVarZzm);
                    if (listZzf != null) {
                        for (NotificationAction notificationAction : listZzf) {
                            String action = notificationAction.getAction();
                            if (zzv(action)) {
                                jZzm |= zzm(action, i, bundle);
                            } else {
                                zzq(builder, action, notificationAction);
                            }
                        }
                    }
                } else {
                    NotificationOptions notificationOptions2 = this.zzg;
                    if (notificationOptions2 != null) {
                        for (String str : notificationOptions2.getActions()) {
                            if (zzv(str)) {
                                jZzm |= zzm(str, i, bundle);
                            } else {
                                zzq(builder, str, null);
                            }
                        }
                    }
                }
                playbackStateCompatBuild = builder.setActions(jZzm).build();
            }
        }
        mediaSessionCompat2.setPlaybackState(playbackStateCompatBuild);
        NotificationOptions notificationOptions3 = this.zzg;
        if (notificationOptions3 != null && notificationOptions3.zzp()) {
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
        }
        NotificationOptions notificationOptions4 = this.zzg;
        if (notificationOptions4 != null && notificationOptions4.zzo()) {
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
            if (this.zzh == null) {
                activity = null;
            } else {
                Intent intent = new Intent();
                intent.setComponent(this.zzh);
                activity = PendingIntent.getActivity(this.zzc, 0, intent, zzdy.zza | 134217728);
            }
            if (activity != null) {
                mediaSessionCompat2.setSessionActivity(activity);
            }
        }
        if (this.zzp == null || (mediaSessionCompat = this.zzr) == null || mediaInfo == null || (metadata = mediaInfo.getMetadata()) == null) {
            return;
        }
        RemoteMediaClient remoteMediaClient3 = this.zzp;
        long streamDuration = (remoteMediaClient3 == null || !remoteMediaClient3.isLiveStream()) ? mediaInfo.getStreamDuration() : 0L;
        String string = metadata.getString("com.google.android.gms.cast.metadata.TITLE");
        String string2 = metadata.getString("com.google.android.gms.cast.metadata.SUBTITLE");
        MediaMetadataCompat.Builder builderPutLong = zzo().putLong("android.media.metadata.DURATION", streamDuration);
        if (string != null) {
            builderPutLong.putString("android.media.metadata.TITLE", string);
            builderPutLong.putString("android.media.metadata.DISPLAY_TITLE", string);
        }
        if (string2 != null) {
            builderPutLong.putString("android.media.metadata.DISPLAY_SUBTITLE", string2);
        }
        mediaSessionCompat.setMetadata(builderPutLong.build());
        Uri uriZzn = zzn(metadata, 0);
        if (uriZzn != null) {
            this.zzj.zzd(uriZzn);
        } else {
            zzp(null, 0);
        }
        Uri uriZzn2 = zzn(metadata, 3);
        if (uriZzn2 != null) {
            this.zzk.zzd(uriZzn2);
        } else {
            zzp(null, 3);
        }
    }

    private static final boolean zzv(String str) {
        return TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT);
    }

    public final void zzi(int i) {
        AudioManager audioManager;
        if (this.zzt) {
            this.zzt = false;
            RemoteMediaClient remoteMediaClient = this.zzp;
            if (remoteMediaClient != null) {
                remoteMediaClient.unregisterCallback(this.zzo);
            }
            if (!PlatformVersion.isAtLeastLollipop() && (audioManager = (AudioManager) this.zzc.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)) != null) {
                audioManager.abandonAudioFocus(null);
            }
            this.zze.zzr(null);
            zzb zzbVar = this.zzj;
            if (zzbVar != null) {
                zzbVar.zza();
            }
            zzb zzbVar2 = this.zzk;
            if (zzbVar2 != null) {
                zzbVar2.zza();
            }
            MediaSessionCompat mediaSessionCompat = this.zzr;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                this.zzr.setMetadata(new MediaMetadataCompat.Builder().build());
                zzu(0, null);
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
            zzs();
            if (i == 0) {
                zzt();
            }
        }
    }

    final /* synthetic */ void zzj() {
        zzr(false);
    }

    public final void zzk(CastDevice castDevice) {
        zzb.m340i("update Cast device to %s", castDevice);
        this.zzq = castDevice;
        zzl(false);
    }

    public final void zzl(boolean z) {
        MediaQueueItem loadingItem;
        RemoteMediaClient remoteMediaClient = this.zzp;
        if (remoteMediaClient == null) {
            return;
        }
        int iZza = remoteMediaClient.zza();
        MediaInfo mediaInfo = remoteMediaClient.getMediaInfo();
        if (remoteMediaClient.isLoadingNextItem() && (loadingItem = remoteMediaClient.getLoadingItem()) != null && loadingItem.getMedia() != null) {
            mediaInfo = loadingItem.getMedia();
        }
        zzu(iZza, mediaInfo);
        if (!remoteMediaClient.hasMediaSession()) {
            zzs();
            zzt();
        } else if (iZza != 0) {
            zzo zzoVar = this.zzl;
            if (zzoVar != null) {
                zzb.m336d("Update media notification.", new Object[0]);
                zzoVar.zzd(this.zzq, this.zzp, this.zzr, z);
            }
            if (remoteMediaClient.isLoadingNextItem()) {
                return;
            }
            zzr(true);
        }
    }

    private final MediaMetadataCompat.Builder zzo() {
        MediaSessionCompat mediaSessionCompat = this.zzr;
        MediaMetadataCompat metadata = mediaSessionCompat == null ? null : mediaSessionCompat.getController().getMetadata();
        return metadata == null ? new MediaMetadataCompat.Builder() : new MediaMetadataCompat.Builder(metadata);
    }

    public final void zzh(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        AudioManager audioManager;
        CastOptions castOptions = this.zzd;
        CastMediaOptions castMediaOptions = castOptions == null ? null : castOptions.getCastMediaOptions();
        if (this.zzt || this.zzd == null || castMediaOptions == null || this.zzg == null || remoteMediaClient == null || castDevice == null || this.zzi == null) {
            zzb.m336d("skip attaching media session", new Object[0]);
            return;
        }
        this.zzp = remoteMediaClient;
        remoteMediaClient.registerCallback(this.zzo);
        this.zzq = castDevice;
        if (!PlatformVersion.isAtLeastLollipop() && (audioManager = (AudioManager) this.zzc.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)) != null) {
            audioManager.requestAudioFocus(null, 3, 3);
        }
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setComponent(this.zzi);
        PendingIntent broadcast = PendingIntent.getBroadcast(this.zzc, 0, intent, zzdy.zza);
        if (castMediaOptions.getMediaSessionEnabled()) {
            MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(this.zzc, "CastMediaSession", this.zzi, broadcast);
            this.zzr = mediaSessionCompat;
            zzu(0, null);
            CastDevice castDevice2 = this.zzq;
            if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.getFriendlyName())) {
                mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString("android.media.metadata.ALBUM_ARTIST", this.zzc.getResources().getString(R$string.cast_casting_to_device, this.zzq.getFriendlyName())).build());
            }
            zzs zzsVar = new zzs(this);
            this.zzs = zzsVar;
            mediaSessionCompat.setCallback(zzsVar);
            mediaSessionCompat.setActive(true);
            this.zze.zzr(mediaSessionCompat);
        }
        this.zzt = true;
        zzl(false);
    }
}
