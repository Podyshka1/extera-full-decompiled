.class public Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/DialogsBotsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopularBots"
.end annotation


# instance fields
.field public final bots:Ljava/util/ArrayList;

.field private cacheLoaded:Z

.field private cacheTime:J

.field private final currentAccount:I

.field private endReached:Z

.field private lastOffset:Ljava/lang/String;

.field public loading:Z

.field private savingCache:Z

.field private final whenUpdated:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$6BCdrVKBCv9vrjoWF9ZQWpRyT38(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$saveCache$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$8S_CP7Nl2fIoqEWJFsFlmVli3LE(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$B2H46VCOp5TPBi2W1DsTciyaqoM(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$KJQaZ_Z4KoX8oFHnKSFIHXz36Vo(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$loadCache$0(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kyr4AKxIgD9OqJdVdjUyJHljQys(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$load$5(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MXbOMFvfPy5pwYQVLaREmjMkMwE(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$saveCache$3(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vrj6JGUooGlyUxDDVQ4crnZBl74(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lambda$loadCache$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetendReached(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    return p0
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 1

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    .line 438
    iput p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    .line 439
    iput-object p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$load$4()V
    .locals 5

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    .line 555
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 557
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 558
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 559
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    const/4 v0, 0x0

    .line 560
    iput-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->load()V

    return-void
.end method

.method private synthetic lambda$load$5(Lorg/telegram/tgnet/TLObject;)V
    .locals 5

    .line 571
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 572
    check-cast p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;

    .line 573
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 574
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v4, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1, v3, v2}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    iget-object v1, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->users:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 576
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_bots$popularAppBots;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 577
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    .line 579
    invoke-direct {p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->saveCache()V

    .line 580
    iput-boolean v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    .line 581
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 583
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    .line 584
    iput-boolean v2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    .line 585
    iput-boolean v3, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    .line 586
    iget-object p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->whenUpdated:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 570
    new-instance p2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadCache$0(Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    .line 494
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 497
    iput-wide p2, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    .line 498
    iput-object p4, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    .line 499
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    .line 500
    iput-boolean v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheLoaded:Z

    .line 502
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private synthetic lambda$loadCache$1(Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V
    .locals 17

    .line 455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 458
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-wide/16 v3, 0x0

    .line 461
    :try_start_0
    const-string v6, "SELECT uid, time, offset FROM popular_bots ORDER BY pos"

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v8}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    .line 462
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_0

    .line 463
    :try_start_2
    invoke-virtual {v1, v7}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    .line 464
    invoke-virtual {v1, v8}, Lorg/telegram/SQLite/SQLiteCursor;->longValue(I)J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v8, 0x2

    .line 465
    invoke-virtual {v1, v8}, Lorg/telegram/SQLite/SQLiteCursor;->stringValue(I)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    goto/16 :goto_8

    :catch_0
    move-exception v0

    move-object v5, v1

    move-object/from16 v16, v6

    goto/16 :goto_6

    .line 467
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    move-object/from16 v8, p1

    .line 468
    invoke-virtual {v8, v0}, Lorg/telegram/messenger/MessagesStorage;->getUsers(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_5

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 472
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    move v14, v7

    :goto_2
    if-ge v14, v13, :cond_3

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lorg/telegram/tgnet/TLRPC$User;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v15, :cond_1

    move-object/from16 v16, v6

    .line 473
    :try_start_4
    iget-wide v5, v15, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v5, v5, v11

    if-nez v5, :cond_2

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_3
    move-object v5, v1

    goto :goto_6

    :cond_1
    move-object/from16 v16, v6

    :cond_2
    move-object/from16 v6, v16

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v16, v6

    goto :goto_3

    :cond_3
    move-object/from16 v16, v6

    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_4

    .line 479
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-object/from16 v6, v16

    goto :goto_1

    :cond_5
    move-object/from16 v16, v6

    .line 487
    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    :goto_5
    move-object/from16 v5, v16

    goto :goto_7

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_8

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    const/16 v16, 0x0

    .line 484
    :goto_6
    :try_start_5
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v5, :cond_6

    .line 487
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_5

    .line 493
    :goto_7
    new-instance v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5;

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Ljava/util/ArrayList;JLjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catchall_2
    move-exception v0

    :goto_8
    if-eqz v5, :cond_7

    .line 487
    invoke-virtual {v5}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    .line 489
    :cond_7
    throw v0
.end method

.method private synthetic lambda$saveCache$2()V
    .locals 1

    const/4 v0, 0x0

    .line 543
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    return-void
.end method

.method private synthetic lambda$saveCache$3(Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V
    .locals 4

    .line 521
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object p1

    const/4 v0, 0x0

    .line 524
    :try_start_0
    const-string v1, "DELETE FROM popular_bots"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 525
    const-string v1, "REPLACE INTO popular_bots VALUES(?, ?, ?, ?)"

    invoke-virtual {p1, v1}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v0

    const/4 p1, 0x0

    .line 526
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 527
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    .line 528
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x2

    .line 529
    invoke-virtual {v0, v1, p3, p4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v1, 0x3

    .line 530
    invoke-virtual {v0, v1, p5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindString(ILjava/lang/String;)V

    const/4 v1, 0x4

    .line 531
    invoke-virtual {v0, v1, p1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    .line 532
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    if-eqz v0, :cond_1

    .line 538
    :goto_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    goto :goto_3

    .line 535
    :goto_2
    :try_start_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 542
    :cond_1
    :goto_3
    new-instance p1, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :goto_4
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    .line 540
    :cond_2
    throw p1
.end method

.method private loadCache(Ljava/lang/Runnable;)V
    .locals 3

    .line 451
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, p1}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveCache()V
    .locals 8

    .line 509
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 510
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->savingCache:Z

    .line 512
    iget-wide v5, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheTime:J

    .line 513
    iget-object v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    move-object v7, v0

    .line 514
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 515
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 516
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    .line 520
    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda4;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;Lorg/telegram/messenger/MessagesStorage;Ljava/util/ArrayList;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public load()V
    .locals 3

    .line 549
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->endReached:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 550
    iput-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loading:Z

    .line 552
    iget-boolean v0, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->cacheLoaded:Z

    if-nez v0, :cond_1

    .line 553
    new-instance v0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->loadCache(Ljava/lang/Runnable;)V

    return-void

    .line 567
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;-><init>()V

    const/16 v1, 0x14

    .line 568
    iput v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;->limit:I

    .line 569
    iget-object v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->lastOffset:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_bots$getPopularAppBots;->offset:Ljava/lang/String;

    .line 570
    iget v1, p0, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/DialogsBotsAdapter$PopularBots;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_3
    :goto_0
    return-void
.end method
