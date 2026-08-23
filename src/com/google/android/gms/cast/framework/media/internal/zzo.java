package com.google.android.gms.cast.framework.media.internal;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.widget.RemoteViews;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R$string;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationActionsProvider;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzdy;
import com.google.android.gms.internal.cast.zzml;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
final class zzo {
    private static final Logger zza = new Logger("MediaNotificationProxy");
    private final Context zzb;
    private final NotificationManager zzc;
    private final CastContext zzd;
    private final NotificationOptions zze;
    private final ComponentName zzg;
    private final ComponentName zzh;
    private List zzi = new ArrayList();
    private int[] zzj;
    private final long zzk;
    private final zzb zzl;
    private final ImageHints zzm;
    private final Resources zzn;
    private zzm zzo;
    private zzn zzp;
    private Notification zzq;
    private NotificationCompat.Action zzr;
    private NotificationCompat.Action zzs;
    private NotificationCompat.Action zzt;
    private NotificationCompat.Action zzu;
    private NotificationCompat.Action zzv;
    private NotificationCompat.Action zzw;
    private NotificationCompat.Action zzx;
    private NotificationCompat.Action zzy;

    zzo(Context context) {
        this.zzb = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.zzc = notificationManager;
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.getSharedInstance());
        this.zzd = castContext;
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(((CastOptions) Preconditions.checkNotNull(castContext.getCastOptions())).getCastMediaOptions());
        NotificationOptions notificationOptions = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.getNotificationOptions());
        this.zze = notificationOptions;
        castMediaOptions.getImagePicker();
        Resources resources = context.getResources();
        this.zzn = resources;
        this.zzg = new ComponentName(context.getApplicationContext(), castMediaOptions.getMediaIntentReceiverClassName());
        if (TextUtils.isEmpty(notificationOptions.getTargetActivityClassName())) {
            this.zzh = null;
        } else {
            this.zzh = new ComponentName(context.getApplicationContext(), notificationOptions.getTargetActivityClassName());
        }
        this.zzk = notificationOptions.getSkipStepMs();
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.zze());
        ImageHints imageHints = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.zzm = imageHints;
        this.zzl = new zzb(context.getApplicationContext(), imageHints);
        if (PlatformVersion.isAtLeastO() && notificationManager != null) {
            NotificationChannel notificationChannelM335m = zzo$$ExternalSyntheticApiModelOutline0.m335m("cast_media_notification", ((Context) Preconditions.checkNotNull(context)).getResources().getString(R$string.media_notification_channel_name), 2);
            notificationChannelM335m.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannelM335m);
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    static boolean zze(CastOptions castOptions) {
        NotificationOptions notificationOptions;
        CastMediaOptions castMediaOptions = castOptions.getCastMediaOptions();
        if (castMediaOptions == null || (notificationOptions = castMediaOptions.getNotificationOptions()) == null) {
            return false;
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzm = notificationOptions.zzm();
        if (zzgVarZzm == null) {
            return true;
        }
        List listZzf = zzw.zzf(zzgVarZzm);
        int[] iArrZzg = zzw.zzg(zzgVarZzm);
        int size = listZzf == null ? 0 : listZzf.size();
        if (listZzf == null || listZzf.isEmpty()) {
            zza.m338e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any action."), new Object[0]);
        } else if (listZzf.size() > 5) {
            zza.m338e(NotificationActionsProvider.class.getSimpleName().concat(" provides more than 5 actions."), new Object[0]);
        } else {
            if (iArrZzg != null && (iArrZzg.length) != 0) {
                for (int i : iArrZzg) {
                    if (i < 0 || i >= size) {
                        zza.m338e(NotificationActionsProvider.class.getSimpleName().concat("provides a compact view action whose index is out of bounds."), new Object[0]);
                    }
                }
                return true;
            }
            zza.m338e(NotificationActionsProvider.class.getSimpleName().concat(" doesn't provide any actions for compact view."), new Object[0]);
        }
        return false;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private final NotificationCompat.Action zzf(String str) {
        int pauseDrawableResId;
        int iZzf;
        PendingIntent broadcast = null;
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    long j = this.zzk;
                    if (this.zzw == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_REWIND);
                        intent.setComponent(this.zzg);
                        intent.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j);
                        this.zzw = new NotificationCompat.Action.Builder(zzw.zzc(this.zze, j), this.zzn.getString(zzw.zzd(this.zze, j)), PendingIntent.getBroadcast(this.zzb, 0, intent, zzdy.zza | 134217728)).build();
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
                            broadcast = PendingIntent.getBroadcast(this.zzb, 0, intent2, zzdy.zza);
                        }
                        NotificationOptions notificationOptions = this.zze;
                        this.zzt = new NotificationCompat.Action.Builder(notificationOptions.getSkipNextDrawableResId(), this.zzn.getString(notificationOptions.zzk()), broadcast).build();
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
                            broadcast = PendingIntent.getBroadcast(this.zzb, 0, intent3, zzdy.zza);
                        }
                        NotificationOptions notificationOptions2 = this.zze;
                        this.zzu = new NotificationCompat.Action.Builder(notificationOptions2.getSkipPrevDrawableResId(), this.zzn.getString(notificationOptions2.zzl()), broadcast).build();
                    }
                    return this.zzu;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    if (this.zzy == null) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                        intent4.setComponent(this.zzg);
                        PendingIntent broadcast2 = PendingIntent.getBroadcast(this.zzb, 0, intent4, zzdy.zza);
                        NotificationOptions notificationOptions3 = this.zze;
                        this.zzy = new NotificationCompat.Action.Builder(notificationOptions3.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions3.zza()), broadcast2).build();
                    }
                    return this.zzy;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    if (this.zzx == null) {
                        Intent intent5 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                        intent5.setComponent(this.zzg);
                        PendingIntent broadcast3 = PendingIntent.getBroadcast(this.zzb, 0, intent5, zzdy.zza);
                        NotificationOptions notificationOptions4 = this.zze;
                        this.zzx = new NotificationCompat.Action.Builder(notificationOptions4.getDisconnectDrawableResId(), this.zzn.getString(notificationOptions4.zza(), _UrlKt.FRAGMENT_ENCODE_SET), broadcast3).build();
                    }
                    return this.zzx;
                }
                break;
            case 235550565:
                if (str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    zzm zzmVar = this.zzo;
                    int i = zzmVar.zzc;
                    if (!zzmVar.zzb) {
                        if (this.zzr == null) {
                            Intent intent6 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                            intent6.setComponent(this.zzg);
                            PendingIntent broadcast4 = PendingIntent.getBroadcast(this.zzb, 0, intent6, zzdy.zza);
                            NotificationOptions notificationOptions5 = this.zze;
                            this.zzr = new NotificationCompat.Action.Builder(notificationOptions5.getPlayDrawableResId(), this.zzn.getString(notificationOptions5.zzg()), broadcast4).build();
                        }
                        return this.zzr;
                    }
                    if (this.zzs == null) {
                        if (i == 2) {
                            NotificationOptions notificationOptions6 = this.zze;
                            pauseDrawableResId = notificationOptions6.getStopLiveStreamDrawableResId();
                            iZzf = notificationOptions6.getStopLiveStreamTitleResId();
                        } else {
                            NotificationOptions notificationOptions7 = this.zze;
                            pauseDrawableResId = notificationOptions7.getPauseDrawableResId();
                            iZzf = notificationOptions7.zzf();
                        }
                        Intent intent7 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent7.setComponent(this.zzg);
                        this.zzs = new NotificationCompat.Action.Builder(pauseDrawableResId, this.zzn.getString(iZzf), PendingIntent.getBroadcast(this.zzb, 0, intent7, zzdy.zza)).build();
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
                        this.zzv = new NotificationCompat.Action.Builder(zzw.zza(this.zze, j2), this.zzn.getString(zzw.zzb(this.zze, j2)), PendingIntent.getBroadcast(this.zzb, 0, intent8, zzdy.zza | 134217728)).build();
                    }
                    return this.zzv;
                }
                break;
        }
        zza.m338e("Action: %s is not a pre-defined action.", str);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12, types: [androidx.core.app.NotificationCompat$Style, androidx.media.app.NotificationCompat$MediaStyle] */
    public final void zzg() {
        PendingIntent pendingIntent;
        NotificationCompat.Action actionZzf;
        if (this.zzc == null || this.zzo == null) {
            return;
        }
        zzn zznVar = this.zzp;
        NotificationCompat.Builder visibility = new NotificationCompat.Builder(this.zzb, "cast_media_notification").setLargeIcon(zznVar == null ? null : zznVar.zzb).setSmallIcon(this.zze.getSmallIconDrawableResId()).setContentTitle(this.zzo.zzd).setContentText(this.zzn.getString(this.zze.getCastingToDeviceStringResId(), this.zzo.zze)).setOngoing(true).setShowWhen(false).setVisibility(1);
        ComponentName componentName = this.zzh;
        if (componentName == null) {
            pendingIntent = null;
        } else {
            Intent intent = new Intent();
            intent.putExtra("targetActivity", componentName);
            intent.setAction(componentName.flattenToString());
            intent.setComponent(componentName);
            TaskStackBuilder taskStackBuilderCreate = TaskStackBuilder.create(this.zzb);
            taskStackBuilderCreate.addNextIntentWithParentStack(intent);
            pendingIntent = taskStackBuilderCreate.getPendingIntent(1, zzdy.zza | 134217728);
        }
        if (pendingIntent != null) {
            visibility.setContentIntent(pendingIntent);
        }
        com.google.android.gms.cast.framework.media.zzg zzgVarZzm = this.zze.zzm();
        if (zzgVarZzm != null) {
            zza.m336d("actionsProvider != null", new Object[0]);
            int[] iArrZzg = zzw.zzg(zzgVarZzm);
            this.zzj = iArrZzg != null ? (int[]) iArrZzg.clone() : null;
            List<NotificationAction> listZzf = zzw.zzf(zzgVarZzm);
            this.zzi = new ArrayList();
            if (listZzf != null) {
                for (NotificationAction notificationAction : listZzf) {
                    String action = notificationAction.getAction();
                    if (action.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || action.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) || action.equals(MediaIntentReceiver.ACTION_SKIP_PREV) || action.equals(MediaIntentReceiver.ACTION_FORWARD) || action.equals(MediaIntentReceiver.ACTION_REWIND) || action.equals(MediaIntentReceiver.ACTION_STOP_CASTING) || action.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                        actionZzf = zzf(notificationAction.getAction());
                    } else {
                        Intent intent2 = new Intent(notificationAction.getAction());
                        intent2.setComponent(this.zzg);
                        actionZzf = new NotificationCompat.Action.Builder(notificationAction.getIconResId(), notificationAction.getContentDescription(), PendingIntent.getBroadcast(this.zzb, 0, intent2, zzdy.zza)).build();
                    }
                    if (actionZzf != null) {
                        this.zzi.add(actionZzf);
                    }
                }
            }
        } else {
            zza.m336d("actionsProvider == null", new Object[0]);
            this.zzi = new ArrayList();
            Iterator it = this.zze.getActions().iterator();
            while (it.hasNext()) {
                NotificationCompat.Action actionZzf2 = zzf((String) it.next());
                if (actionZzf2 != null) {
                    this.zzi.add(actionZzf2);
                }
            }
            this.zzj = (int[]) this.zze.getCompatActionIndices().clone();
        }
        Iterator it2 = this.zzi.iterator();
        while (it2.hasNext()) {
            visibility.addAction((NotificationCompat.Action) it2.next());
        }
        ?? r1 = new NotificationCompat.Style() { // from class: androidx.media.app.NotificationCompat$MediaStyle
            int[] mActionsToShowInCompact = null;
            MediaSessionCompat.Token mToken;

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
                NotificationCompat$Api21Impl.setMediaStyle(notificationBuilderWithBuilderAccessor.getBuilder(), NotificationCompat$Api21Impl.fillInMediaStyle(NotificationCompat$Api21Impl.createMediaStyle(), this.mActionsToShowInCompact, this.mToken));
            }
        };
        int[] iArr = this.zzj;
        if (iArr != null) {
            r1.setShowActionsInCompactView(iArr);
        }
        MediaSessionCompat.Token token = this.zzo.zza;
        if (token != null) {
            r1.setMediaSession(token);
        }
        visibility.setStyle(r1);
        Notification notificationBuild = visibility.build();
        this.zzq = notificationBuild;
        this.zzc.notify("castMediaNotification", 1, notificationBuild);
    }

    final void zzc() {
        this.zzl.zza();
        NotificationManager notificationManager = this.zzc;
        if (notificationManager != null) {
            notificationManager.cancel("castMediaNotification", 1);
        }
    }

    final void zzd(CastDevice castDevice, RemoteMediaClient remoteMediaClient, MediaSessionCompat mediaSessionCompat, boolean z) {
        MediaInfo mediaInfo;
        MediaMetadata metadata;
        boolean z2;
        boolean z3;
        zzm zzmVar;
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
        zzm zzmVar2 = new zzm(remoteMediaClient.getPlayerState() == 2, mediaInfo.getStreamType(), metadata.getString("com.google.android.gms.cast.metadata.TITLE"), castDevice.getFriendlyName(), mediaSessionCompat.getSessionToken(), z2, z3);
        if (z || (zzmVar = this.zzo) == null || zzmVar2.zzb != zzmVar.zzb || zzmVar2.zzc != zzmVar.zzc || !CastUtils.zze(zzmVar2.zzd, zzmVar.zzd) || !CastUtils.zze(zzmVar2.zze, zzmVar.zze) || zzmVar2.zzf != zzmVar.zzf || zzmVar2.zzg != zzmVar.zzg) {
            this.zzo = zzmVar2;
            zzg();
        }
        zzn zznVar = new zzn(metadata.hasImages() ? (WebImage) metadata.getImages().get(0) : null);
        zzn zznVar2 = this.zzp;
        if (zznVar2 == null || !CastUtils.zze(zznVar.zza, zznVar2.zza)) {
            this.zzl.zzc(new zzl(this, zznVar));
            this.zzl.zzd(zznVar.zza);
        }
    }
}
