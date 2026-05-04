.class public Lorg/telegram/messenger/MusicPlayerService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# static fields
.field private static final ID_NOTIFICATION:I = 0x5

.field public static final NOTIFY_CLOSE:Ljava/lang/String; = "org.telegram.android.musicplayer.close"

.field public static final NOTIFY_NEXT:Ljava/lang/String; = "org.telegram.android.musicplayer.next"

.field public static final NOTIFY_PAUSE:Ljava/lang/String; = "org.telegram.android.musicplayer.pause"

.field public static final NOTIFY_PLAY:Ljava/lang/String; = "org.telegram.android.musicplayer.play"

.field public static final NOTIFY_PREVIOUS:Ljava/lang/String; = "org.telegram.android.musicplayer.previous"

.field public static final NOTIFY_SEEK:Ljava/lang/String; = "org.telegram.android.musicplayer.seek"

.field private static supportBigNotifications:Z = true

.field private static supportLockScreenControls:Z


# instance fields
.field private albumArtPlaceholder:Landroid/graphics/Bitmap;

.field private audioManager:Landroid/media/AudioManager;

.field private foregroundServiceIsStarted:Z

.field private headsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private loadingFilePath:Ljava/lang/String;

.field private mediaSession:Landroid/media/session/MediaSession;

.field private notificationMessageID:I

.field private playbackState:Landroid/media/session/PlaybackState$Builder;

.field private remoteControlClient:Landroid/media/RemoteControlClient;


# direct methods
.method public static synthetic $r8$lambda$c-Q65OeUTHkBopIdGe5BCaGuNNY(Lorg/telegram/messenger/MusicPlayerService;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/MusicPlayerService;->lambda$onCreate$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetremoteControlClient(Lorg/telegram/messenger/MusicPlayerService;)Landroid/media/RemoteControlClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePlaybackState(Lorg/telegram/messenger/MusicPlayerService;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->updatePlaybackState(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "ro.miui.ui.version.code"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    new-instance v0, Lorg/telegram/messenger/MusicPlayerService$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/MusicPlayerService$1;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    iput-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private createNotification(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 27
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 288
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicTitle()Ljava/lang/String;

    move-result-object v2

    .line 289
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor()Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v4

    .line 291
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_0

    .line 293
    const-string v6, "com.tmessages.openplayer"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 295
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 296
    :cond_1
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 299
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v9, :cond_2

    .line 300
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    goto :goto_0

    .line 301
    :cond_2
    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    if-eqz v9, :cond_3

    .line 302
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    goto :goto_0

    .line 303
    :cond_3
    instance-of v9, v6, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v9, :cond_4

    .line 304
    iget-wide v9, v6, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    goto :goto_0

    :cond_4
    move-wide v9, v7

    :goto_0
    cmp-long v11, v9, v7

    if-eqz v11, :cond_6

    .line 307
    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    const-string v11, "&message_id="

    if-eqz v6, :cond_5

    .line 308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tg://openmessage?user_id="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 310
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tg://openmessage?chat_id="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 314
    :cond_6
    :goto_1
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/high16 v9, 0x2000000

    invoke-direct {v1, v9}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v6, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 319
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    double-to-long v11, v11

    .line 320
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    const/4 v9, 0x0

    const/4 v13, 0x1

    if-eqz v6, :cond_b

    .line 321
    invoke-virtual {v0, v13}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v6

    .line 322
    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MessageObject;->getArtworkUrl(Z)Ljava/lang/String;

    move-result-object v14

    if-eqz v4, :cond_7

    .line 324
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_2

    :cond_7
    move-object v15, v9

    :goto_2
    if-eqz v4, :cond_8

    .line 325
    invoke-virtual {v4}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getCover()Landroid/graphics/Bitmap;

    move-result-object v16

    goto :goto_3

    :cond_8
    move-object/from16 v16, v9

    .line 327
    :goto_3
    iput-object v9, v1, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    .line 328
    iget-object v7, v1, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v9}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    if-nez v15, :cond_a

    .line 329
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    xor-int/lit8 v7, p2, 0x1

    .line 330
    invoke-direct {v1, v14, v13, v7}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v16

    if-nez v16, :cond_9

    xor-int/lit8 v7, p2, 0x1

    .line 332
    invoke-direct {v1, v6, v10, v7}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object/from16 v16, v15

    goto :goto_4

    :cond_9
    xor-int/lit8 v6, p2, 0x1

    .line 334
    invoke-direct {v1, v14, v10, v6}, Lorg/telegram/messenger/MusicPlayerService;->loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v15

    goto :goto_4

    .line 337
    :cond_a
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    :goto_4
    move-object/from16 v6, v16

    goto/16 :goto_9

    .line 339
    :cond_b
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_5

    :cond_c
    move-object v6, v9

    move-object v15, v6

    goto/16 :goto_9

    .line 340
    :cond_d
    :goto_5
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getSenderId()J

    move-result-wide v6

    .line 341
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 342
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 344
    invoke-static {v3}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    xor-int/lit8 v6, p2, 0x1

    .line 345
    invoke-direct {v1, v3, v13, v6}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    xor-int/lit8 v7, p2, 0x1

    .line 346
    invoke-direct {v1, v3, v10, v7}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_6

    :cond_e
    move-object v3, v9

    move-object v6, v3

    :goto_6
    move-object v15, v3

    goto :goto_7

    .line 350
    :cond_f
    sget v3, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    neg-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 352
    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    xor-int/lit8 v6, p2, 0x1

    .line 353
    invoke-direct {v1, v3, v13, v6}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v6

    xor-int/lit8 v7, p2, 0x1

    .line 354
    invoke-direct {v1, v3, v10, v7}, Lorg/telegram/messenger/MusicPlayerService;->getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_6

    :cond_10
    move-object v6, v9

    move-object v15, v6

    :goto_7
    if-nez v6, :cond_11

    if-eqz v15, :cond_11

    move-object/from16 v16, v15

    goto :goto_8

    :cond_11
    move-object/from16 v16, v6

    .line 361
    :goto_8
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 362
    sget v3, Lorg/telegram/messenger/R$string;->AttachAudio:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 364
    :cond_12
    sget v3, Lorg/telegram/messenger/R$string;->AttachRound:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 367
    :goto_9
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 368
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v8

    xor-int/lit8 v14, v8, 0x1

    .line 370
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v13, Landroid/content/Intent;

    const-string v10, "org.telegram.android.musicplayer.previous"

    invoke-direct {v13, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v19, v4

    const-class v4, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-direct {v10, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v13, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v13, 0x12000000

    move/from16 p2, v8

    invoke-direct {v1, v13}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v8

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 372
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-direct {v10, v1, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v6

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".STOP_PLAYER"

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v10, 0x12000000

    invoke-direct {v1, v10}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v13

    const/4 v10, 0x0

    invoke-static {v9, v10, v6, v13}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 373
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    new-instance v10, Landroid/content/Intent;

    if-nez p2, :cond_13

    const-string v13, "org.telegram.android.musicplayer.pause"

    goto :goto_a

    :cond_13
    const-string v13, "org.telegram.android.musicplayer.play"

    :goto_a
    invoke-direct {v10, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    move-wide/from16 v22, v11

    const/high16 v13, 0x12000000

    invoke-direct {v1, v13}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v9, v12, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 374
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    new-instance v11, Landroid/content/Intent;

    const-string v12, "org.telegram.android.musicplayer.next"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v12, Landroid/content/ComponentName;

    invoke-direct {v12, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v11

    invoke-direct {v1, v13}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v10, v13, v11, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 375
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    new-instance v12, Landroid/content/Intent;

    const-string v13, "org.telegram.android.musicplayer.seek"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v13, 0x12000000

    invoke-direct {v1, v13}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v11, v13, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 377
    new-instance v4, Landroid/app/Notification$MediaStyle;

    invoke-direct {v4}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v11, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v11}, Landroid/media/session/MediaSession;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v4

    .line 378
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v11

    const/4 v12, 0x2

    if-eqz v11, :cond_14

    move-object/from16 v20, v9

    const/4 v11, 0x1

    .line 379
    filled-new-array {v13, v11, v12}, [I

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    goto :goto_b

    :cond_14
    move-object/from16 v20, v9

    .line 380
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 381
    :cond_15
    filled-new-array {v13}, [I

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    .line 383
    :cond_16
    :goto_b
    new-instance v9, Landroid/app/Notification$Builder;

    invoke-direct {v9, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    sget v11, Lorg/telegram/messenger/R$drawable;->notification:I

    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 385
    invoke-virtual {v11, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 386
    invoke-virtual {v11, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 387
    invoke-virtual {v11, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    if-eqz v19, :cond_17

    .line 388
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v13

    if-eqz v13, :cond_17

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v13

    goto :goto_c

    :cond_17
    const/4 v13, 0x0

    :goto_c
    invoke-virtual {v11, v13}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 389
    invoke-virtual {v11, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 390
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v13, 0x0

    .line 391
    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v6, "transport"

    .line 392
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 393
    invoke-virtual {v5, v12}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 394
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    const/16 v4, 0x1f

    if-ge v7, v4, :cond_18

    .line 396
    invoke-static {}, Lcom/exteragram/messenger/utils/AppUtils;->getNotificationColor()I

    move-result v5

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_18
    const/16 v5, 0x1a

    if-lt v7, v5, :cond_19

    .line 398
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 399
    sget-object v5, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_19
    if-eqz v15, :cond_1a

    .line 402
    invoke-virtual {v9, v15}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_d

    .line 404
    :cond_1a
    iget-object v5, v1, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 407
    :goto_d
    sget v5, Lorg/telegram/messenger/R$string;->Next:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 408
    sget v6, Lorg/telegram/messenger/R$string;->AccDescrPrevious:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 410
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v11

    const/high16 v15, 0x3f800000    # 1.0f

    if-eqz v11, :cond_1d

    .line 411
    iget-object v11, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/4 v14, 0x6

    const-wide/16 v12, 0x0

    const-wide/16 v24, 0x3e8

    invoke-virtual {v11, v14, v12, v13, v15}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v11

    invoke-virtual {v11, v12, v13}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 412
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 413
    new-instance v11, Landroid/app/Notification$Action$Builder;

    sget v12, Lorg/telegram/messenger/R$drawable;->ic_action_previous:I

    invoke-direct {v11, v12, v6, v8}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 415
    :cond_1b
    new-instance v6, Landroid/app/Notification$Action$Builder;

    sget v8, Lorg/telegram/messenger/R$drawable;->loading_animation2:I

    sget v11, Lorg/telegram/messenger/R$string;->Loading:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v6, v8, v11, v12}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 416
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 417
    new-instance v6, Landroid/app/Notification$Action$Builder;

    sget v8, Lorg/telegram/messenger/R$drawable;->ic_action_next:I

    invoke-direct {v6, v8, v5, v10}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    :cond_1c
    move-object/from16 v18, v2

    move-object/from16 v26, v3

    goto/16 :goto_15

    :cond_1d
    const/4 v12, 0x0

    const-wide/16 v24, 0x3e8

    .line 421
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v11

    if-eqz v11, :cond_1e

    const-wide/16 v16, 0x336

    :goto_e
    move-wide/from16 v12, v16

    goto :goto_f

    :cond_1e
    const-wide/16 v16, 0x306

    goto :goto_e

    .line 424
    :goto_f
    iget-object v11, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    if-nez p2, :cond_1f

    const/4 v15, 0x3

    goto :goto_10

    :cond_1f
    const/4 v15, 0x2

    .line 425
    :goto_10
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    iget v4, v4, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    move-object/from16 v18, v2

    move-object/from16 v26, v3

    int-to-long v2, v4

    mul-long v2, v2, v24

    .line 426
    invoke-direct {v1, v14, v0}, Lorg/telegram/messenger/MusicPlayerService;->getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F

    move-result v4

    .line 424
    invoke-virtual {v11, v15, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object v2

    .line 427
    invoke-virtual {v2, v12, v13}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    if-nez p2, :cond_20

    .line 428
    sget v2, Lorg/telegram/messenger/R$string;->AccActionPause:I

    :goto_11
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_20
    sget v2, Lorg/telegram/messenger/R$string;->AccActionPlay:I

    goto :goto_11

    .line 429
    :goto_12
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 430
    new-instance v3, Landroid/app/Notification$Action$Builder;

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_action_previous:I

    invoke-direct {v3, v4, v6, v8}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 432
    :cond_21
    new-instance v3, Landroid/app/Notification$Action$Builder;

    if-nez p2, :cond_22

    sget v4, Lorg/telegram/messenger/R$drawable;->ic_action_pause:I

    :goto_13
    move-object/from16 v6, v20

    goto :goto_14

    :cond_22
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_action_play:I

    goto :goto_13

    :goto_14
    invoke-direct {v3, v4, v2, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 433
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 434
    new-instance v2, Landroid/app/Notification$Action$Builder;

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_action_next:I

    invoke-direct {v2, v3, v5, v10}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 438
    :cond_23
    :goto_15
    iget-object v2, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object v3, v1, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 439
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    move-object/from16 v4, v26

    .line 440
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.ARTIST"

    .line 441
    invoke-virtual {v2, v3, v4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.DURATION"

    move-wide/from16 v5, v22

    .line 442
    invoke-virtual {v2, v3, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    const-string v3, "android.media.metadata.TITLE"

    move-object/from16 v5, v18

    .line 443
    invoke-virtual {v2, v3, v5}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v2

    if-eqz v19, :cond_24

    .line 444
    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_24
    const/4 v0, 0x0

    :goto_16
    const-string v3, "android.media.metadata.ALBUM"

    invoke-virtual {v2, v3, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    move-result-object v0

    if-eqz v21, :cond_25

    .line 445
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_25

    .line 446
    const-string v2, "android.media.metadata.ALBUM_ART"

    move-object/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    goto :goto_17

    :cond_25
    move-object/from16 v3, v21

    .line 449
    :goto_17
    iget-object v2, v1, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    const/4 v11, 0x1

    .line 451
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 453
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 455
    const-string v2, "notification"

    const/4 v6, 0x5

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_27

    .line 456
    iget-boolean v7, v1, Lorg/telegram/messenger/MusicPlayerService;->foregroundServiceIsStarted:Z

    if-nez v7, :cond_26

    .line 457
    iput-boolean v11, v1, Lorg/telegram/messenger/MusicPlayerService;->foregroundServiceIsStarted:Z

    .line 458
    invoke-virtual {v1, v6, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_18

    .line 460
    :cond_26
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 461
    invoke-virtual {v2, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_18

    :cond_27
    if-nez p2, :cond_28

    .line 465
    invoke-virtual {v1, v6, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_18

    :cond_28
    const/4 v13, 0x0

    .line 467
    invoke-virtual {v1, v13}, Landroid/app/Service;->stopForeground(Z)V

    .line 468
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 469
    invoke-virtual {v2, v6, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 568
    :goto_18
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_2f

    .line 569
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    .line 570
    iget v2, v1, Lorg/telegram/messenger/MusicPlayerService;->notificationMessageID:I

    const/16 v6, 0x9

    if-eq v2, v0, :cond_2b

    .line 571
    iput v0, v1, Lorg/telegram/messenger/MusicPlayerService;->notificationMessageID:I

    .line 572
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v2

    const/4 v7, 0x2

    .line 573
    invoke-virtual {v2, v7, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v0, 0x7

    .line 574
    invoke-virtual {v2, v0, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    if-eqz v19, :cond_29

    .line 575
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 576
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAlbum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 578
    :cond_29
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-long v4, v0

    mul-long v4, v4, v24

    invoke-virtual {v2, v6, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    if-eqz v3, :cond_2a

    const/16 v0, 0x64

    .line 581
    :try_start_0
    invoke-virtual {v2, v0, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_19

    :catchall_0
    move-exception v0

    .line 583
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 586
    :cond_2a
    :goto_19
    invoke-virtual {v2}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 587
    new-instance v0, Lorg/telegram/messenger/MusicPlayerService$3;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/MusicPlayerService$3;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    move-wide/from16 v2, v24

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1a

    :cond_2b
    const/4 v7, 0x2

    .line 610
    :goto_1a
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 611
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_1d

    .line 613
    :cond_2c
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 614
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-long v2, v2

    const-wide/16 v24, 0x3e8

    mul-long v2, v2, v24

    invoke-virtual {v0, v6, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 615
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 617
    iget-object v0, v1, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v2

    if-eqz v2, :cond_2d

    move v12, v7

    goto :goto_1b

    :cond_2d
    const/4 v12, 0x3

    .line 618
    :goto_1b
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    int-to-long v2, v2

    const-wide/16 v24, 0x3e8

    mul-long v2, v2, v24

    const-wide/16 v4, 0x64

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 619
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v15, 0x0

    goto :goto_1c

    :cond_2e
    const/high16 v15, 0x3f800000    # 1.0f

    .line 617
    :goto_1c
    invoke-virtual {v0, v12, v2, v3, v15}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    :cond_2f
    :goto_1d
    return-void
.end method

.method private fixIntentFlags(I)I
    .locals 2

    .line 670
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0x6000001

    and-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private getAvatarBitmap(Lorg/telegram/tgnet/TLObject;ZZ)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p2, :cond_0

    const/16 v0, 0x258

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x64

    goto :goto_0

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 230
    :try_start_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_4

    .line 231
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_1

    .line 232
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p3, v0

    goto/16 :goto_4

    :cond_1
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_2
    if-eqz v5, :cond_8

    .line 234
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 235
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    int-to-float v0, v1

    invoke-static {p3, v3, v0, v0, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_8

    if-eqz p3, :cond_3

    .line 240
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    .line 241
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    .line 242
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const-string v7, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    .line 244
    :cond_3
    iput-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    goto :goto_5

    .line 249
    :cond_4
    move-object v0, p1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p2, :cond_5

    .line 250
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_big:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_3

    :cond_5
    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    :goto_3
    if-eqz v5, :cond_8

    .line 252
    sget v6, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 253
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 254
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    int-to-float v0, v1

    invoke-static {p3, v3, v0, v0, v4}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz p2, :cond_8

    if-eqz p3, :cond_7

    .line 258
    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    .line 259
    invoke-static {v0, v4}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    .line 260
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const-string v7, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_5

    .line 262
    :cond_7
    iput-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 268
    :goto_4
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_8
    :goto_5
    if-nez p2, :cond_a

    .line 271
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 273
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p2, :cond_9

    .line 274
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_6

    .line 276
    :cond_9
    new-instance p2, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 278
    :goto_6
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setRoundRadius(I)V

    int-to-float p1, v1

    .line 279
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 280
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    invoke-virtual {p2, v4, v4, p1, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    return-object v3
.end method

.method private getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F
    .locals 0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 647
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 648
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MediaController;->getPlaybackSpeed(Z)F

    move-result p1

    return p1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onCreate$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    .line 102
    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 105
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_0
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private loadArtworkFromUrl(Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;
    .locals 10

    .line 205
    invoke-static {p1}, Lorg/telegram/messenger/ImageLoader;->getHttpFileName(Ljava/lang/String;)Ljava/lang/String;

    .line 210
    const-string v0, "jpg"

    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/high16 p3, 0x42c80000    # 100.0f

    const/high16 v0, 0x44160000    # 600.0f

    if-eqz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    if-eqz p2, :cond_1

    move p3, v0

    :cond_1
    const/4 p2, 0x0

    invoke-static {p1, v2, v1, p3, p2}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p3, :cond_3

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-nez p2, :cond_4

    .line 217
    iget-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-string v5, "48_48"

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;J)V

    goto :goto_1

    .line 220
    :cond_3
    iput-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    :cond_4
    :goto_1
    return-object v2
.end method

.method private updatePlaybackState(J)V
    .locals 6

    .line 628
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    .line 629
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->isDownloadingCurrentMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/4 p2, 0x6

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    goto :goto_2

    .line 633
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x336

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x306

    .line 637
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    .line 639
    :goto_1
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/MusicPlayerService;->getPlaybackSpeed(ZLorg/telegram/messenger/MessageObject;)F

    move-result v1

    .line 637
    invoke-virtual {v5, v0, p1, p2, v1}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    move-result-object p1

    .line 640
    invoke-virtual {p1, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 642
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    iget-object p2, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method


# virtual methods
.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 699
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    .line 700
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 702
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    .line 704
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 706
    :cond_1
    sget p2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    if-ne p1, p2, :cond_5

    .line 707
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 711
    :cond_2
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    int-to-float p1, p1

    const/4 p2, 0x1

    aget-object p2, p3, p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long p1, p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 712
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MusicPlayerService;->updatePlaybackState(J)V

    .line 713
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p3, :cond_7

    .line 714
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 716
    :goto_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 714
    :goto_1
    invoke-virtual {p3, v0, p1, p2, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    return-void

    .line 718
    :cond_5
    sget p2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    if-ne p1, p2, :cond_6

    .line 719
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 720
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 721
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 722
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    return-void

    .line 724
    :cond_6
    sget p2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    if-ne p1, p2, :cond_7

    .line 725
    aget-object p1, p3, v0

    check-cast p1, Ljava/lang/String;

    .line 726
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 727
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->loadingFilePath:Ljava/lang/String;

    if-eqz p3, :cond_7

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 728
    invoke-direct {p0, p2, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 93
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 95
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 96
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 97
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 98
    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 101
    new-instance v2, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 112
    new-instance v1, Landroid/media/session/MediaSession;

    const-string v2, "telegramAudioPlayer"

    invoke-direct {v1, p0, v2}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    .line 113
    new-instance v1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->playbackState:Landroid/media/session/PlaybackState$Builder;

    const/high16 v1, 0x42cc0000    # 102.0f

    .line 114
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$drawable;->nocover_big:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 116
    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lorg/telegram/messenger/MusicPlayerService;->albumArtPlaceholder:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    new-instance v1, Lorg/telegram/messenger/MusicPlayerService$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MusicPlayerService$2;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 162
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->headsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 680
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 681
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 682
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_0

    .line 683
    invoke-virtual {v1, v0}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 684
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->clear()V

    .line 685
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 686
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MusicPlayerService;->mediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 690
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidSeek:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 691
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 692
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoad:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 693
    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->fileLoaded:I

    invoke-virtual {v1, p0, v2}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".STOP_PLAYER"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 172
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    const/4 p1, 0x2

    return p1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 175
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object p1

    if-nez p1, :cond_1

    .line 177
    new-instance p1, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/MusicPlayerService$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/MusicPlayerService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return p2

    .line 180
    :cond_1
    sget-boolean p3, Lorg/telegram/messenger/MusicPlayerService;->supportLockScreenControls:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    .line 181
    new-instance p3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lorg/telegram/messenger/MusicPlayerReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p3}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 185
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p3, 0x2000000

    .line 187
    invoke-direct {p0, p3}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result p3

    invoke-static {p0, v0, v1, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 188
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, p3}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 189
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p3, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    goto :goto_0

    :catch_1
    move-exception p3

    goto :goto_1

    .line 191
    :cond_2
    :goto_0
    iget-object p3, p0, Lorg/telegram/messenger/MusicPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v1, 0xbd

    invoke-virtual {p3, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 194
    :goto_1
    :try_start_2
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 197
    :cond_3
    :goto_2
    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/MusicPlayerService;->createNotification(Lorg/telegram/messenger/MessageObject;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 199
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return p2
.end method

.method public setListeners(Landroid/widget/RemoteViews;)V
    .locals 5

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.telegram.android.musicplayer.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xa000000

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 658
    sget v1, Lorg/telegram/messenger/R$id;->player_previous:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 659
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.close"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 660
    sget v1, Lorg/telegram/messenger/R$id;->player_close:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.pause"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 662
    sget v1, Lorg/telegram/messenger/R$id;->player_pause:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 663
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.next"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 664
    sget v1, Lorg/telegram/messenger/R$id;->player_next:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "org.telegram.android.musicplayer.play"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/telegram/messenger/MusicPlayerService;->fixIntentFlags(I)I

    move-result v2

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 666
    sget v1, Lorg/telegram/messenger/R$id;->player_play:I

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-void
.end method
