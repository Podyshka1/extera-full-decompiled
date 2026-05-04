.class final Lcom/google/android/gms/cast/framework/media/internal/zzo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/cast/internal/Logger;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/app/NotificationManager;

.field private final zzd:Lcom/google/android/gms/cast/framework/CastContext;

.field private final zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

.field private final zzg:Landroid/content/ComponentName;

.field private final zzh:Landroid/content/ComponentName;

.field private zzi:Ljava/util/List;

.field private zzj:[I

.field private final zzk:J

.field private final zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

.field private final zzm:Lcom/google/android/gms/cast/framework/media/ImageHints;

.field private final zzn:Landroid/content/res/Resources;

.field private zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

.field private zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

.field private zzq:Landroid/app/Notification;

.field private zzr:Landroidx/core/app/NotificationCompat$Action;

.field private zzs:Landroidx/core/app/NotificationCompat$Action;

.field private zzt:Landroidx/core/app/NotificationCompat$Action;

.field private zzu:Landroidx/core/app/NotificationCompat$Action;

.field private zzv:Landroidx/core/app/NotificationCompat$Action;

.field private zzw:Landroidx/core/app/NotificationCompat$Action;

.field private zzx:Landroidx/core/app/NotificationCompat$Action;

.field private zzy:Landroidx/core/app/NotificationCompat$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/internal/Logger;

    const-string v1, "MediaNotificationProxy"

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    const-string v0, "notification"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    .line 3
    invoke-static {}, Lcom/google/android/gms/cast/framework/CastContext;->getSharedInstance()Lcom/google/android/gms/cast/framework/CastContext;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/CastContext;

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzd:Lcom/google/android/gms/cast/framework/CastContext;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastContext;->getCastOptions()Lcom/google/android/gms/cast/framework/CastOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/CastOptions;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getImagePicker()Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    new-instance v4, Landroid/content/ComponentName;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getMediaIntentReceiverClassName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getTargetActivityClassName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzh:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzh:Landroid/content/ComponentName;

    .line 12
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipStepMs()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zze()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 14
    new-instance v2, Lcom/google/android/gms/cast/framework/media/ImageHints;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v1}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzm:Lcom/google/android/gms/cast/framework/media/ImageHints;

    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/gms/cast/framework/R$string;->media_notification_channel_name:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v1, "cast_media_notification"

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object p1

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p1, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 21
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/cast/zzml;->zzad:Lcom/google/android/gms/internal/cast/zzml;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzo;->zzd(Lcom/google/android/gms/internal/cast/zzml;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/cast/framework/media/internal/zzo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg()V

    return-void
.end method

.method static zze(Lcom/google/android/gms/cast/framework/CastOptions;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/CastOptions;->getCastMediaOptions()Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;->getNotificationOptions()Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    move-result-object p0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    return v1

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    move-result-object p0

    if-nez v2, :cond_3

    move v3, v0

    goto :goto_0

    .line 5
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 4
    :goto_0
    const-class v4, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    if-eqz v2, :cond_b

    .line 6
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x5

    if-le v2, v5, :cond_5

    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 14
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " provides more than 5 actions."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    if-eqz p0, :cond_a

    array-length v2, p0

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v5, v0

    :goto_1
    if-ge v5, v2, :cond_9

    .line 9
    aget v6, p0, v5

    if-ltz v6, :cond_8

    if-lt v6, v3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "provides a compact view action whose index is out of bounds."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    return v1

    .line 14
    :cond_a
    :goto_3
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 12
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " doesn\'t provide any actions for compact view."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 6
    :cond_b
    :goto_4
    sget-object p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, " doesn\'t provide any action."

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return v0
.end method

.method private final zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    const-string v3, "googlecast-extra_skip_step_ms"

    const/4 v4, 0x0

    const/4 v5, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "com.google.android.gms.cast.framework.action.FORWARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 24
    iget-wide v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    .line 25
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    or-int/2addr v1, v2

    .line 28
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 29
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zza(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 30
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzb(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 31
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 32
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 33
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzv:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_1
    const-string v0, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 49
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 50
    iget v1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_2

    const/4 p1, 0x2

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamDrawableResId()I

    move-result v1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getStopLiveStreamTitleResId()I

    move-result p1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPauseDrawableResId()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzf()I

    move-result p1

    .line 59
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 62
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 63
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 64
    invoke-static {v0, v5, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 65
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 66
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v1, p1, v0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 67
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzs:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    .line 51
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 53
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 54
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getPlayDrawableResId()I

    move-result v3

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzg()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 57
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzr:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_2
    const-string v0, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_5

    new-instance p1, Landroid/content/Intent;

    .line 9
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v2, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 11
    invoke-static {v0, v5, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 12
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v4

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v1, v5

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 15
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzx:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_3
    const-string v0, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    .line 2
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 4
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 5
    new-instance v2, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getDisconnectDrawableResId()I

    move-result v3

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zza()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 8
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzy:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_4
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 34
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    if-nez v1, :cond_8

    if-eqz p1, :cond_7

    new-instance p1, Landroid/content/Intent;

    .line 35
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 37
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 38
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipPrevDrawableResId()I

    move-result v2

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzl()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 41
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzu:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_5
    const-string v0, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 42
    iget-boolean p1, p1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    if-nez v1, :cond_a

    if-eqz p1, :cond_9

    new-instance p1, Landroid/content/Intent;

    .line 43
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 45
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 46
    new-instance v1, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSkipNextDrawableResId()I

    move-result v2

    .line 48
    invoke-virtual {p1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzk()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1, v4}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 49
    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzt:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 1
    :sswitch_6
    const-string v0, "com.google.android.gms.cast.framework.action.REWIND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 8
    iget-wide v6, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    if-nez p1, :cond_b

    new-instance p1, Landroid/content/Intent;

    .line 16
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 18
    invoke-virtual {p1, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    or-int/2addr v1, v2

    .line 19
    invoke-static {v0, v5, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 20
    invoke-static {v0, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzc(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 21
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzd(Lcom/google/android/gms/cast/framework/media/NotificationOptions;J)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    .line 22
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 23
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1, p1}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 24
    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    :cond_b
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzw:Landroidx/core/app/NotificationCompat$Action;

    return-object p1

    .line 57
    :cond_c
    :goto_1
    sget-object v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v5

    const-string p1, "Action: %s is not a pre-defined action."

    .line 68
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/cast/internal/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch
.end method

.method private final zzg()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, v0, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zzb:Landroid/graphics/Bitmap;

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "cast_media_notification"

    invoke-direct {v3, v2, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getSmallIconDrawableResId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzn:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCastingToDeviceStringResId()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    iget-object v4, v4, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 6
    invoke-virtual {v2, v3, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0, v7}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v5}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzh:Landroid/content/ComponentName;

    if-nez v2, :cond_2

    move-object v2, v1

    goto :goto_1

    .line 48
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .line 11
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "targetActivity"

    .line 12
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    .line 15
    invoke-static {v2}, Landroidx/core/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroidx/core/app/TaskStackBuilder;

    move-result-object v2

    .line 16
    invoke-virtual {v2, v3}, Landroidx/core/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroidx/core/app/TaskStackBuilder;

    sget v3, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    const/high16 v4, 0x8000000

    or-int/2addr v3, v4

    .line 17
    invoke-virtual {v2, v5, v3}, Landroidx/core/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 18
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->zzm()Lcom/google/android/gms/cast/framework/media/zzg;

    move-result-object v2

    if-eqz v2, :cond_9

    sget-object v3, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v6, "actionsProvider != null"

    .line 20
    invoke-virtual {v3, v6, v4}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {v2}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzg(Lcom/google/android/gms/cast/framework/media/zzg;)[I

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 21
    :goto_2
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    .line 23
    invoke-static {v2}, Lcom/google/android/gms/cast/framework/media/internal/zzw;->zzf(Lcom/google/android/gms/cast/framework/media/zzg;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    if-nez v1, :cond_5

    goto/16 :goto_7

    .line 25
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/framework/media/NotificationAction;

    .line 26
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.REWIND"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "com.google.android.gms.cast.framework.action.DISCONNECT"

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    .line 41
    :cond_7
    new-instance v3, Landroid/content/Intent;

    .line 35
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg:Landroid/content/ComponentName;

    .line 36
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzb:Landroid/content/Context;

    sget v6, Lcom/google/android/gms/internal/cast/zzdy;->zza:I

    .line 37
    invoke-static {v4, v7, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 38
    new-instance v4, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getIconResId()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v6, v2, v3}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 40
    invoke-virtual {v4}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    goto :goto_5

    .line 34
    :cond_8
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/cast/framework/media/NotificationAction;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 22
    :cond_9
    sget-object v1, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zza:Lcom/google/android/gms/cast/internal/Logger;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "actionsProvider == null"

    .line 42
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    .line 43
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 45
    invoke-direct {p0, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzf(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zze:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->getCompatActionIndices()[I

    move-result-object v1

    .line 48
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    .line 24
    :cond_c
    :goto_7
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzi:Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/NotificationCompat$Action;

    .line 50
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_8

    .line 51
    :cond_d
    new-instance v1, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v1}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzj:[I

    if-eqz v2, :cond_e

    .line 52
    invoke-virtual {v1, v2}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    :cond_e
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 53
    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zza:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v2, :cond_f

    .line 54
    invoke-virtual {v1, v2}, Landroidx/media/app/NotificationCompat$MediaStyle;->setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 55
    :cond_f
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 56
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzq:Landroid/app/Notification;

    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    const-string v2, "castMediaNotification"

    .line 57
    invoke-virtual {v1, v2, v5, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    :cond_10
    :goto_9
    return-void
.end method


# virtual methods
.method final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzc:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    const-string v1, "castMediaNotification"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method final zzd(Lcom/google/android/gms/cast/CastDevice;Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;Landroid/support/v4/media/session/MediaSessionCompat;Z)V
    .locals 17

    move-object/from16 v0, p0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 1
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueRepeatMode()I

    move-result v7

    if-eq v7, v5, :cond_4

    if-eq v7, v4, :cond_4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v7

    .line 4
    invoke-virtual {v3, v7}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_1

    move v8, v5

    goto :goto_0

    :cond_1
    move v8, v6

    .line 6
    :goto_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v7, v3, :cond_2

    move v15, v5

    :goto_1
    move/from16 v16, v8

    goto :goto_3

    :cond_2
    move v15, v6

    goto :goto_1

    :cond_3
    move v15, v6

    :goto_2
    move/from16 v16, v15

    goto :goto_3

    :cond_4
    move v15, v5

    goto :goto_2

    .line 7
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/cast/framework/media/RemoteMediaClient;->getPlayerState()I

    move-result v3

    if-ne v3, v4, :cond_5

    move v10, v5

    goto :goto_4

    :cond_5
    move v10, v6

    :goto_4
    new-instance v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v11

    const-string v1, "com.google.android.gms.cast.metadata.TITLE"

    .line 9
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/cast/CastDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-virtual/range {p3 .. p3}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v14

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/cast/framework/media/internal/zzm;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    if-nez p4, :cond_6

    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    if-eqz v1, :cond_6

    iget-boolean v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    iget-boolean v4, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzb:Z

    if-ne v3, v4, :cond_6

    iget v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    iget v4, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzc:I

    if-ne v3, v4, :cond_6

    iget-object v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzd:Ljava/lang/String;

    .line 12
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zze:Ljava/lang/String;

    .line 13
    invoke-static {v3, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    iget-boolean v4, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzf:Z

    if-ne v3, v4, :cond_6

    iget-boolean v3, v9, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzm;->zzg:Z

    if-eq v3, v1, :cond_7

    :cond_6
    iput-object v9, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzo:Lcom/google/android/gms/cast/framework/media/internal/zzm;

    .line 14
    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzg()V

    :cond_7
    new-instance v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;

    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->hasImages()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->getImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/images/WebImage;

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 17
    :goto_5
    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/framework/media/internal/zzn;-><init>(Lcom/google/android/gms/common/images/WebImage;)V

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzp:Lcom/google/android/gms/cast/framework/media/internal/zzn;

    if-eqz v2, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    .line 18
    invoke-static {v3, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->zze(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    new-instance v3, Lcom/google/android/gms/cast/framework/media/internal/zzl;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzl;-><init>(Lcom/google/android/gms/cast/framework/media/internal/zzo;Lcom/google/android/gms/cast/framework/media/internal/zzn;)V

    .line 19
    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzc(Lcom/google/android/gms/cast/framework/media/internal/zza;)V

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/internal/zzo;->zzl:Lcom/google/android/gms/cast/framework/media/internal/zzb;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/internal/zzn;->zza:Landroid/net/Uri;

    .line 20
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/framework/media/internal/zzb;->zzd(Landroid/net/Uri;)Z

    :cond_a
    :goto_6
    return-void
.end method
