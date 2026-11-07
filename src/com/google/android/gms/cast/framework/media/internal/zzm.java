package com.google.android.gms.cast.framework.media.internal;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.C1564R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationActionsProvider;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzfg;
import com.google.android.gms.internal.cast.zzpm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzm {
    private static final Logger zza = new Logger("MediaNotificationProxy");
    private final Context zzb;
    private final NotificationManager zzc;
    private final CastContext zzd;
    private final NotificationOptions zze;
    private final ImagePicker zzf;
    private final ComponentName zzg;
    private final ComponentName zzh;
    private List zzi = new ArrayList();
    private int[] zzj;
    private final long zzk;
    private final zzb zzl;
    private final ImageHints zzm;
    private final Resources zzn;
    private zzk zzo;
    private zzl zzp;
    private Notification zzq;
    private NotificationCompat.Action zzr;
    private NotificationCompat.Action zzs;
    private NotificationCompat.Action zzt;
    private NotificationCompat.Action zzu;
    private NotificationCompat.Action zzv;
    private NotificationCompat.Action zzw;
    private NotificationCompat.Action zzx;
    private NotificationCompat.Action zzy;

    public zzm(Context context) {
        this.zzb = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.zzc = notificationManager;
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance());
        this.zzd = castContext;
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(((CastOptions) Preconditions.checkNotNull(castContext.getCastOptions())).getCastMediaOptions());
        NotificationOptions notificationOptions = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.getNotificationOptions());
        this.zze = notificationOptions;
        this.zzf = castMediaOptions.getImagePicker();
        Resources resources = context.getResources();
        this.zzn = resources;
        this.zzg = new ComponentName(context.getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        if (TextUtils.isEmpty(notificationOptions.getTargetActivityClassName())) {
            this.zzh = null;
        } else {
            this.zzh = new ComponentName(context.getApplicationContext(), notificationOptions.getTargetActivityClassName());
        }
        this.zzk = notificationOptions.getSkipStepMs();
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.zza());
        ImageHints imageHints = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.zzm = imageHints;
        this.zzl = new zzb(context.getApplicationContext(), imageHints);
        if (PlatformVersion.isAtLeastO() && notificationManager != null) {
            NotificationChannel notificationChannelM309m = CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0.m309m("cast_media_notification", ((Context) Preconditions.checkNotNull(context)).getResources().getString(C1564R.string.media_notification_channel_name), 2);
            notificationChannelM309m.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannelM309m);
        }
        com.google.android.gms.internal.cast.zzr.zzb(zzpm.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    public static boolean zzb(CastOptions castOptions) {
        NotificationOptions notificationOptions;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        if (castMediaOptions == null || (notificationOptions = castMediaOptions.getNotificationOptions()) == null) {
            return false;
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzo = notificationOptions.zzo();
        if (zzgVarZzo == null) {
            return true;
        }
        List listZzb = zzt.zzb(zzgVarZzo);
        int[] iArrZzc = zzt.zzc(zzgVarZzo);
        int size = listZzb == null ? 0 : listZzb.size();
        if (listZzb == null || listZzb.isEmpty()) {
            zza.m313e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any action."), new Object[0]);
        } else if (listZzb.size() > 5) {
            zza.m313e(NotificationActionsProvider.class.getSimpleName().concat(" provides more than 5 actions."), new Object[0]);
        } else {
            if (iArrZzc != null && (iArrZzc.length) != 0) {
                for (int i : iArrZzc) {
                    if (i < 0 || i >= size) {
                        zza.m313e(NotificationActionsProvider.class.getSimpleName().concat("provides a compact view action whose index is out of bounds."), new Object[0]);
                    }
                }
                return true;
            }
            zza.m313e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any actions for compact view."), new Object[0]);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.core.app.NotificationCompat$Style, androidx.media.app.NotificationCompat$MediaStyle] */
    /* JADX INFO: renamed from: zzf, reason: merged with bridge method [inline-methods] */
    public final void zzd() {
        Bitmap bitmap;
        PendingIntent pendingIntent;
        NotificationCompat.Action actionZzg;
        NotificationManager notificationManager = this.zzc;
        if (notificationManager == null || this.zzo == null) {
            return;
        }
        zzl zzlVar = this.zzp;
        if (zzlVar == null || (bitmap = zzlVar.zzb) == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
            bitmap = null;
        }
        Context context = this.zzb;
        NotificationCompat.Builder largeIcon = new NotificationCompat.Builder(context, "cast_media_notification").setLargeIcon(bitmap);
        NotificationOptions notificationOptions = this.zze;
        NotificationCompat.Builder visibility = largeIcon.setSmallIcon(notificationOptions.getSmallIconDrawableResId()).setContentTitle(this.zzo.zzd).setContentText(this.zzn.getString(notificationOptions.getCastingToDeviceStringResId(), this.zzo.zze)).setOngoing(true).setShowWhen(false).setVisibility(1);
        ComponentName componentName = this.zzh;
        if (componentName == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            TaskStackBuilder taskStackBuilderCreate = TaskStackBuilder.create(context);
            taskStackBuilderCreate.addNextIntentWithParentStack(intent);
            int i = zzfg.$r8$clinit;
            pendingIntent = taskStackBuilderCreate.getPendingIntent(1, 201326592);
        }
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzo = notificationOptions.zzo();
        if (zzgVarZzo != null) {
            zza.m311d("actionsProvider != null", new Object[0]);
            int[] iArrZzc = zzt.zzc(zzgVarZzo);
            this.zzj = iArrZzc != null ? (int[]) iArrZzc.clone() : null;
            List<NotificationAction> listZzb = zzt.zzb(zzgVarZzo);
            this.zzi = new ArrayList();
            if (listZzb != null) {
                for (NotificationAction notificationAction : listZzb) {
                    String action = notificationAction.getAction();
                    if (action.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || action.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || action.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || action.equals(MediaIntentReceiver.ACTION_FORWARD) || action.equals(MediaIntentReceiver.ACTION_REWIND) || action.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || action.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        actionZzg = zzg(notificationAction.getAction());
                    } else {
                        Intent intent2 = new Intent(notificationAction.getAction());
                        intent2.setComponent(this.zzg);
                        actionZzg = new NotificationCompat.Action.Builder(notificationAction.getIconResId(), notificationAction.getContentDescription(), zzfg.zzb(context, 0, intent2, 67108864)).build();
                    }
                    if (actionZzg != null) {
                        this.zzi.add(actionZzg);
                    }
                }
            }
        } else {
            zza.m311d("actionsProvider == null", new Object[0]);
            this.zzi = new ArrayList();
            Iterator<String> it = notificationOptions.getActions().iterator();
            while (it.hasNext()) {
                NotificationCompat.Action actionZzg2 = zzg(it.next());
                if (actionZzg2 != null) {
                    this.zzi.add(actionZzg2);
                }
            }
            this.zzj = (int[]) notificationOptions.getCompatActionIndices().clone();
        }
        Iterator it2 = this.zzi.iterator();
        while (it2.hasNext()) {
            visibility.addAction((NotificationCompat.Action) it2.next());
        }
        ?? r2 = new NotificationCompat.Style() { // from class: androidx.media.app.NotificationCompat$MediaStyle
            int mDeviceIcon;
            PendingIntent mDeviceIntent;
            CharSequence mDeviceName;
            MediaSessionCompat.Token mToken;
            int[] mActionsToShowInCompact = null;
            boolean mShowRemotePlaybackInfo = false;

            @Override // androidx.core.app.NotificationCompat.Style
            public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                return null;
            }

            @Override // androidx.core.app.NotificationCompat.Style
            public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                return null;
            }

            public NotificationCompat$MediaStyle setShowActionsInCompactView(int... iArr) {
                this.mActionsToShowInCompact = iArr;
                return this;
            }

            public NotificationCompat$MediaStyle setMediaSession(MediaSessionCompat.Token token) {
                this.mToken = token;
                return this;
            }

            @Override // androidx.core.app.NotificationCompat.Style
            public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
                if (Build.VERSION.SDK_INT >= 34) {
                    NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api34Impl.setRemotePlaybackInfo(NotificationCompat$Api21Impl.createMediaStyle(), this.mDeviceName, this.mDeviceIcon, this.mDeviceIntent, Boolean.valueOf(this.mShowRemotePlaybackInfo)), this.mActionsToShowInCompact, this.mToken));
                } else {
                    NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
                }
            }
        };
        int[] iArr = this.zzj;
        if (iArr != null) {
            r2.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.zzo.zza;
        if (token != null) {
            r2.setMediaSession(token);
        }
        visibility.setStyle(r2);
        Notification notificationBuild = visibility.build();
        this.zzq = notificationBuild;
        notificationManager.notify("castMediaNotification", 1, notificationBuild);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final NotificationCompat.Action zzg(String str) {
        int pauseDrawableResId;
        int iZzb;
        PendingIntent pendingIntentZzb = null;
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    long j = this.zzk;
                    if (this.zzw == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_REWIND);
                        intent.setComponent(this.zzg);
                        intent.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j);
                        PendingIntent pendingIntentZzb2 = zzfg.zzb(this.zzb, 0, intent, 201326592);
                        NotificationOptions notificationOptions = this.zze;
                        this.zzw = new NotificationCompat.Action.Builder(zzt.zzf(notificationOptions, j), this.zzn.getString(zzt.zzg(notificationOptions, j)), pendingIntentZzb2).build();
                    }
                    return this.zzw;
                }
                break;
            case -945151566:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                    boolean z = this.zzo.zzf;
                    if (this.zzt == null) {
                        if (z) {
                            Intent intent2 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                            intent2.setComponent(this.zzg);
                            pendingIntentZzb = zzfg.zzb(this.zzb, 0, intent2, 67108864);
                        }
                        NotificationOptions notificationOptions2 = this.zze;
                        this.zzt = new NotificationCompat.Action.Builder(notificationOptions2.getSkipNextDrawableResId(), this.zzn.getString(notificationOptions2.zzd()), pendingIntentZzb).build();
                    }
                    return this.zzt;
                }
                break;
            case -945080078:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                    boolean z2 = this.zzo.zzg;
                    if (this.zzu == null) {
                        if (z2) {
                            Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                            intent3.setComponent(this.zzg);
                            pendingIntentZzb = zzfg.zzb(this.zzb, 0, intent3, 67108864);
                        }
                        NotificationOptions notificationOptions3 = this.zze;
                        this.zzu = new NotificationCompat.Action.Builder(notificationOptions3.getSkipPrevDrawableResId(), this.zzn.getString(notificationOptions3.zze()), pendingIntentZzb).build();
                    }
                    return this.zzu;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    if (this.zzy == null) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                        intent4.setComponent(this.zzg);
                        PendingIntent pendingIntentZzb3 = zzfg.zzb(this.zzb, 0, intent4, 67108864);
                        NotificationOptions notificationOptions4 = this.zze;
                        this.zzy = new NotificationCompat.Action.Builder(notificationOptions4.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions4.zzl()), pendingIntentZzb3).build();
                    }
                    return this.zzy;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    if (this.zzx == null) {
                        Intent intent5 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                        intent5.setComponent(this.zzg);
                        PendingIntent pendingIntentZzb4 = zzfg.zzb(this.zzb, 0, intent5, 67108864);
                        NotificationOptions notificationOptions5 = this.zze;
                        this.zzx = new NotificationCompat.Action.Builder(notificationOptions5.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions5.zzl(), _UrlKt.FRAGMENT_ENCODE_SET), pendingIntentZzb4).build();
                    }
                    return this.zzx;
                }
                break;
            case 235550565:
                if (str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    zzk zzkVar = this.zzo;
                    int i = zzkVar.zzc;
                    if (!zzkVar.zzb) {
                        if (this.zzr == null) {
                            Intent intent6 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                            intent6.setComponent(this.zzg);
                            PendingIntent pendingIntentZzb5 = zzfg.zzb(this.zzb, 0, intent6, 67108864);
                            NotificationOptions notificationOptions6 = this.zze;
                            this.zzr = new NotificationCompat.Action.Builder(notificationOptions6.getPlayDrawableResId(), this.zzn.getString(notificationOptions6.zzc()), pendingIntentZzb5).build();
                        }
                        return this.zzr;
                    }
                    if (this.zzs == null) {
                        NotificationOptions notificationOptions7 = this.zze;
                        if (i == 2) {
                            pauseDrawableResId = notificationOptions7.getStopLiveStreamDrawableResId();
                            iZzb = notificationOptions7.getStopLiveStreamTitleResId();
                        } else {
                            pauseDrawableResId = notificationOptions7.getPauseDrawableResId();
                            iZzb = notificationOptions7.zzb();
                        }
                        Intent intent7 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent7.setComponent(this.zzg);
                        this.zzs = new NotificationCompat.Action.Builder(pauseDrawableResId, this.zzn.getString(iZzb), zzfg.zzb(this.zzb, 0, intent7, 67108864)).build();
                    }
                    return this.zzs;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    long j2 = this.zzk;
                    if (this.zzv == null) {
                        Intent intent8 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                        intent8.setComponent(this.zzg);
                        intent8.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j2);
                        PendingIntent pendingIntentZzb6 = zzfg.zzb(this.zzb, 0, intent8, 201326592);
                        NotificationOptions notificationOptions8 = this.zze;
                        this.zzv = new NotificationCompat.Action.Builder(zzt.zzd(notificationOptions8, j2), this.zzn.getString(zzt.zze(notificationOptions8, j2)), pendingIntentZzb6).build();
                    }
                    return this.zzv;
                }
                break;
        }
        zza.m313e("Action: %s is not a pre-defined action.", str);
        return null;
    }

    public final void zza() {
        this.zzl.zzc();
        NotificationManager notificationManager = this.zzc;
        if (notificationManager != null) {
            notificationManager.cancel("castMediaNotification", 1);
        }
    }

    public final void zzc(CastDevice castDevice, RemoteMediaClient remoteMediaClient, MediaSessionCompat mediaSessionCompat, boolean z) {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        boolean z2;
        boolean z3;
        zzk zzkVar;
        if (castDevice == null || remoteMediaClient == null || mediaSessionCompat == null || (mediaInfo = remoteMediaClient.getMediaInfo()) == null || (metadata = mediaInfo.getMetadata()) == null) {
            return;
        }
        MediaStatus mediaStatus = remoteMediaClient.getMediaStatus();
        if (mediaStatus == null) {
            z2 = false;
            z3 = z2;
        } else {
            int queueRepeatMode = mediaStatus.getQueueRepeatMode();
            if (queueRepeatMode == 1 || queueRepeatMode == 2 || queueRepeatMode == 3) {
                z2 = true;
                z3 = z2;
            } else {
                Integer indexById = mediaStatus.getIndexById(mediaStatus.getCurrentItemId());
                if (indexById != null) {
                    boolean z4 = indexById.intValue() > 0;
                    z2 = indexById.intValue() < mediaStatus.getQueueItemCount() + (-1);
                    z3 = z4;
                }
                z2 = false;
                z3 = z2;
            }
        }
        zzk zzkVar2 = new zzk(remoteMediaClient.getPlayerState() == 2, mediaInfo.getStreamType(), metadata.getString(MediaMetadata.KEY_TITLE), castDevice.getFriendlyName(), mediaSessionCompat.getSessionToken(), z2, z3);
        if (z || (zzkVar = this.zzo) == null || zzkVar2.zzb != zzkVar.zzb || zzkVar2.zzc != zzkVar.zzc || !CastUtils.zza(zzkVar2.zzd, zzkVar.zzd) || !CastUtils.zza(zzkVar2.zze, zzkVar.zze) || zzkVar2.zzf != zzkVar.zzf || zzkVar2.zzg != zzkVar.zzg) {
            this.zzo = zzkVar2;
            zzd();
        }
        ImagePicker imagePicker = this.zzf;
        zzl zzlVar = new zzl(imagePicker != null ? imagePicker.onPickImage(metadata, this.zzm) : metadata.hasImages() ? metadata.getImages().get(0) : null);
        zzl zzlVar2 = this.zzp;
        if (zzlVar2 == null || !CastUtils.zza(zzlVar.zza, zzlVar2.zza)) {
            zzb zzbVar = this.zzl;
            zzbVar.zza(new zzj(this, zzlVar));
            zzbVar.zzb(zzlVar.zza);
        }
    }

    public final /* synthetic */ void zze(zzl zzlVar) {
        this.zzp = zzlVar;
    }
}
