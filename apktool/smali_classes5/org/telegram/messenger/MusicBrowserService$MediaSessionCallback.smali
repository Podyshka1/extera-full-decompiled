.class final Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MusicBrowserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MusicBrowserService;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/MusicBrowserService;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/MusicBrowserService;Lorg/telegram/messenger/MusicBrowserService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;-><init>(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v0}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$mhandlePauseRequest(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method

.method public onPlay()V
    .locals 3

    .line 386
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetlastSelectedDialog(Lorg/telegram/messenger/MusicBrowserService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 390
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9

    .line 410
    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 411
    array-length p2, p1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 415
    :try_start_0
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const/4 p2, 0x1

    .line 416
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 417
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmusicObjects(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/util/ArrayList;

    .line 418
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmusicQueues(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    if-ltz p1, :cond_5

    .line 419
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p1, v2, :cond_1

    goto/16 :goto_0

    .line 422
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v2, v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fputlastSelectedDialog(Lorg/telegram/messenger/MusicBrowserService;J)V

    .line 423
    iget-object v2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v2}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/MusicBrowserService;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "auto_lastSelectedDialog"

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;JZLorg/telegram/messenger/MediaController$PlaylistGlobalSearchParams;)Z

    .line 425
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$mcreateMediaSession(Lorg/telegram/messenger/MusicBrowserService;)V

    .line 426
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmediaSession(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setQueue(Ljava/util/List;)V

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    .line 428
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetusers(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p1, :cond_2

    .line 430
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmediaSession(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 432
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmediaSession(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object p1

    const-string p2, "DELETED USER"

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 435
    :cond_3
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetchats(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object p1

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_4

    .line 437
    iget-object p2, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p2}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmediaSession(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 439
    :cond_4
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetmediaSession(Lorg/telegram/messenger/MusicBrowserService;)Landroid/media/session/MediaSession;

    move-result-object p1

    const-string p2, "DELETED CHAT"

    invoke-virtual {p1, p2}, Landroid/media/session/MediaSession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_0
    return-void

    .line 443
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 445
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$mhandlePlayRequest(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    if-eqz p1, :cond_7

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 473
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 474
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetdialogs(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 475
    iget-object v1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetdialogs(Lorg/telegram/messenger/MusicBrowserService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 476
    invoke-static {v1, v2}, Lorg/telegram/messenger/DialogObject;->isUserDialog(J)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "_"

    if-eqz v3, :cond_4

    .line 477
    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v3}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetusers(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    if-nez v3, :cond_1

    goto :goto_1

    .line 481
    :cond_1
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 482
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 486
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {v3}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$fgetchats(Lorg/telegram/messenger/MusicBrowserService;)Landroidx/collection/LongSparseArray;

    move-result-object v3

    neg-long v6, v1

    invoke-virtual {v3, v6, v7}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v3, :cond_5

    goto :goto_1

    .line 490
    :cond_5
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public onSeekTo(J)V
    .locals 4

    .line 402
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    long-to-float p1, p1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v2

    double-to-float p2, v2

    div-float/2addr p1, p2

    invoke-virtual {v1, v0, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    :cond_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 460
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playNextMessage()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 465
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->playPreviousMessage()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    .line 396
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MediaController;->playMessageAtIndex(I)V

    .line 397
    iget-object p1, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    invoke-static {p1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$mhandlePlayRequest(Lorg/telegram/messenger/MusicBrowserService;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 455
    iget-object v0, p0, Lorg/telegram/messenger/MusicBrowserService$MediaSessionCallback;->this$0:Lorg/telegram/messenger/MusicBrowserService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/messenger/MusicBrowserService;->-$$Nest$mhandleStopRequest(Lorg/telegram/messenger/MusicBrowserService;Ljava/lang/String;)V

    return-void
.end method
