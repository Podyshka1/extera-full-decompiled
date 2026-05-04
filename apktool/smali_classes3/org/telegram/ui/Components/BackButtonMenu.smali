.class public abstract Lorg/telegram/ui/Components/BackButtonMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$LjwJnyIy4aTYeceLn6PSUidUlns(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;)V
    .locals 4

    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    .line 170
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 172
    :cond_0
    iget p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-ltz p0, :cond_8

    if-eqz p2, :cond_3

    .line 175
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    iget p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-lt p0, p5, :cond_1

    goto :goto_0

    .line 179
    :cond_1
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    iget p5, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 180
    instance-of p5, p0, Lorg/telegram/ui/ChatActivity;

    if-eqz p5, :cond_2

    .line 181
    check-cast p0, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 182
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity;->getTopicId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    .line 183
    :cond_2
    instance-of p5, p0, Lorg/telegram/ui/ProfileActivity;

    if-eqz p5, :cond_3

    .line 184
    check-cast p0, Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/ProfileActivity;->getTopicId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    move-object p0, v0

    :goto_1
    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long p5, v0, v2

    if-nez p5, :cond_5

    :cond_4
    if-eqz p3, :cond_6

    if-eqz p0, :cond_6

    iget p3, p3, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v0, p3

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_6

    .line 189
    :cond_5
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    :goto_2
    iget p3, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le p0, p3, :cond_8

    .line 190
    invoke-interface {p2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->removeFragmentFromStack(I)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_8

    .line 193
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 194
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-direct {p0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 195
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x2

    :goto_3
    iget p5, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le p3, p5, :cond_7

    .line 196
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    .line 198
    :cond_7
    invoke-interface {p2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p5, p0, :cond_8

    const/4 p0, 0x1

    .line 200
    invoke-interface {p2, p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->closeLastFragment(Z)V

    return-void

    .line 206
    :cond_8
    invoke-static {p4, p1}, Lorg/telegram/ui/Components/BackButtonMenu;->goToPulledDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sPUzo9otFwawnC1-lMMb0CzYuf8(Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)I
    .locals 0

    .line 412
    iget p1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    iget p0, p0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic $r8$lambda$zwJbf49aukFzohFh_mJM0GlNr8Q(Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)I
    .locals 0

    .line 290
    iget p1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    iget p0, p0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static addToPulledDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;ILorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;JII)V
    .locals 4

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-nez p0, :cond_2

    :goto_0
    return-void

    .line 427
    :cond_2
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->setPulledDialogs(Ljava/util/List;)V

    .line 431
    :cond_3
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    if-nez p4, :cond_5

    .line 432
    iget-wide v2, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v2, v2, p5

    if-eqz v2, :cond_6

    :cond_5
    if-eqz p4, :cond_4

    iget-object v1, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v1, :cond_4

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    iget v2, p4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    if-ne v1, v2, :cond_4

    :cond_6
    return-void

    .line 439
    :cond_7
    new-instance v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v0}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 440
    const-class v1, Lorg/telegram/ui/ChatActivity;

    iput-object v1, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 441
    iput p1, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 442
    iput-wide p5, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    .line 443
    iput p8, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    .line 444
    iput p7, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    .line 445
    iput-object p2, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 446
    iput-object p3, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 447
    iput-object p4, v0, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 448
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static clearPulledDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 2

    if-nez p0, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 459
    :cond_1
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 460
    :goto_0
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 461
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    iget v1, v1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-le v1, p1, :cond_2

    .line 462
    invoke-interface {p0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static getStackedHistoryDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;J)Ljava/util/ArrayList;
    .locals 16

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    .line 334
    :cond_1
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    .line 335
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 337
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_9

    .line 339
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 345
    instance-of v7, v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v7, :cond_3

    .line 347
    check-cast v6, Lorg/telegram/ui/ChatActivity;

    .line 348
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getChatMode()I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->isReport()Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_5

    .line 351
    :cond_2
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 352
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v8

    .line 353
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v9

    .line 354
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogFolderId()I

    move-result v11

    .line 355
    invoke-virtual {v6}, Lorg/telegram/ui/ChatActivity;->getDialogFilterId()I

    move-result v6

    .line 356
    const-class v12, Lorg/telegram/ui/ChatActivity;

    goto :goto_3

    :cond_3
    instance-of v7, v6, Lorg/telegram/ui/ProfileActivity;

    if-eqz v7, :cond_8

    .line 358
    check-cast v6, Lorg/telegram/ui/ProfileActivity;

    .line 359
    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getCurrentChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v7

    .line 361
    :try_start_0
    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getUserInfo()Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$UserFull;->user:Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v8, 0x0

    .line 363
    :goto_2
    invoke-virtual {v6}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v9

    .line 365
    const-class v12, Lorg/telegram/ui/ProfileActivity;

    move v6, v3

    move v11, v6

    :goto_3
    cmp-long v13, v9, p1

    if-eqz v13, :cond_8

    const-wide/16 v13, 0x0

    cmp-long v13, p1, v13

    if-nez v13, :cond_4

    .line 369
    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v13

    if-nez v13, :cond_8

    :cond_4
    move v13, v3

    .line 371
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 372
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    iget-wide v14, v14, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v14, v14, v9

    if-nez v14, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 378
    :cond_6
    new-instance v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {v13}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 379
    iput-object v12, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 380
    iput v5, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 381
    iput-object v7, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 382
    iput-object v8, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    .line 383
    iput-wide v9, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    .line 384
    iput v11, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    .line 385
    iput v6, v13, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    if-nez v7, :cond_7

    if-eqz v8, :cond_8

    .line 387
    :cond_7
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    if-eqz v1, :cond_d

    .line 394
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ltz v2, :cond_d

    .line 396
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    .line 397
    iget-wide v5, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_a

    goto :goto_8

    :cond_a
    move v5, v3

    .line 401
    :goto_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 402
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    iget-wide v6, v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    iget-wide v8, v4, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 408
    :cond_c
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 412
    :cond_d
    new-instance v1, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static getStackedHistoryForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JJ)Ljava/util/ArrayList;
    .locals 9

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object v0

    .line 259
    :cond_1
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getPulledDialogs()Ljava/util/List;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    const/4 v4, 0x0

    move v5, v3

    .line 261
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 262
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    .line 263
    iget-object v7, v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v7, :cond_4

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    int-to-long v7, v7

    cmp-long v7, v7, p3

    if-nez v7, :cond_2

    goto :goto_2

    .line 266
    :cond_2
    iget v7, v6, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    if-lt v7, v5, :cond_3

    move v5, v7

    .line 269
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v5, v3

    .line 272
    :cond_6
    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const-class p4, Lorg/telegram/ui/TopicsFragment;

    const/4 v2, 0x1

    if-le p3, v2, :cond_7

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object p3

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lorg/telegram/ui/TopicsFragment;

    if-eqz p3, :cond_7

    .line 273
    new-instance p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {p3}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 274
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v5, v2

    .line 275
    iput v5, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 276
    const-class v1, Lorg/telegram/ui/DialogsActivity;

    iput-object v1, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 278
    new-instance p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {p3}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 279
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iput v3, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 281
    iput-object p4, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 282
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iput-object p0, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    goto :goto_3

    .line 284
    :cond_7
    new-instance p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    invoke-direct {p3}, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;-><init>()V

    .line 285
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iput v3, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->stackIndex:I

    .line 287
    iput-object p4, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    .line 288
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p0

    neg-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p0

    iput-object p0, p3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 290
    :goto_3
    new-instance p0, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static goToPulledDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;)V
    .locals 10

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 298
    :cond_0
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class v1, Lorg/telegram/ui/ChatActivity;

    const-string v2, "chat_id"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_4

    .line 299
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 300
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 301
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_2

    .line 303
    const-string/jumbo v1, "user_id"

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v9, v1, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 305
    :cond_2
    :goto_0
    const-string v0, "dialog_folder_id"

    iget v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->folderId:I

    invoke-virtual {v9, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 306
    const-string v0, "dialog_filter_id"

    iget v1, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->filterId:I

    invoke-virtual {v9, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 307
    iget-object v7, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    if-eqz v7, :cond_3

    .line 308
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v8, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->getChatActivityForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JLorg/telegram/tgnet/TLRPC$TL_forumTopic;ILandroid/os/Bundle;)Lorg/telegram/ui/ChatActivity;

    move-result-object p0

    .line 309
    invoke-virtual {v4, p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    :cond_3
    move-object v4, p0

    .line 311
    new-instance p0, Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, v9}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    :cond_4
    move-object v4, p0

    .line 313
    const-class p0, Lorg/telegram/ui/ProfileActivity;

    if-ne v0, p0, :cond_5

    .line 314
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 315
    const-string v0, "dialog_id"

    iget-wide v5, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->dialogId:J

    invoke-virtual {p0, v0, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 316
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 317
    :cond_5
    :goto_1
    iget-object p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class v0, Lorg/telegram/ui/TopicsFragment;

    if-ne p0, v0, :cond_6

    .line 318
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 319
    iget-object v0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 320
    new-instance v0, Lorg/telegram/ui/TopicsFragment;

    invoke-direct {v0, p0}, Lorg/telegram/ui/TopicsFragment;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, v0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 321
    :cond_6
    iget-object p0, p1, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    const-class p1, Lorg/telegram/ui/DialogsActivity;

    if-ne p0, p1, :cond_7

    .line 323
    new-instance p0, Lorg/telegram/ui/DialogsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v4, p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    :cond_7
    :goto_2
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/view/View;JJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
    .locals 28

    move-object/from16 v5, p0

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move-object/from16 v6, p6

    const/4 v7, 0x0

    if-nez v5, :cond_0

    return-object v7

    .line 60
    :cond_0
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentLayout()Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v4

    .line 61
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v8

    .line 62
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v9

    if-eqz v4, :cond_1

    if-eqz v8, :cond_1

    if-nez v9, :cond_2

    :cond_1
    move-object/from16 v16, v7

    goto/16 :goto_c

    :cond_2
    const-wide/16 v10, 0x0

    cmp-long v12, v2, v10

    if-eqz v12, :cond_3

    .line 67
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v12

    invoke-static {v12, v0, v1}, Lorg/telegram/messenger/ChatObject;->isMonoForum(IJ)Z

    move-result v12

    if-nez v12, :cond_3

    .line 68
    invoke-static {v5, v0, v1, v2, v3}, Lorg/telegram/ui/Components/BackButtonMenu;->getStackedHistoryForTopic(Lorg/telegram/ui/ActionBar/BaseFragment;JJ)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    move-object v12, v0

    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v5, v0, v1}, Lorg/telegram/ui/Components/BackButtonMenu;->getStackedHistoryDialogs(Lorg/telegram/ui/ActionBar/BaseFragment;J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 73
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    return-object v7

    .line 77
    :cond_4
    new-instance v13, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    invoke-direct {v13, v8, v6}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 78
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 79
    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->popup_fixed_alert:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v14}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 81
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    invoke-virtual {v13, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setBackgroundColor(I)V

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 86
    :goto_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v16, v7

    if-ge v0, v3, :cond_12

    .line 87
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;

    move-wide/from16 v17, v10

    .line 88
    iget-object v10, v3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 89
    iget-object v11, v3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->user:Lorg/telegram/tgnet/TLRPC$User;

    move-object/from16 v19, v4

    .line 90
    iget-object v4, v3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->topic:Lorg/telegram/tgnet/TLRPC$TL_forumTopic;

    .line 91
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v20, 0x43480000    # 200.0f

    .line 92
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/view/View;->setMinimumWidth(I)V

    .line 94
    new-instance v15, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v15, v8}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    if-nez v10, :cond_5

    if-nez v11, :cond_5

    move/from16 v20, v0

    const/4 v0, 0x0

    .line 96
    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    move-object/from16 p4, v1

    move/from16 p5, v2

    goto :goto_5

    :cond_5
    move/from16 v20, v0

    if-eqz v10, :cond_6

    .line 98
    iget-boolean v0, v10, Lorg/telegram/tgnet/TLRPC$Chat;->forum:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    move-object/from16 p4, v1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    const/high16 v1, 0x42000000    # 32.0f

    move/from16 p5, v2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/exteragram/messenger/ExteraConfig;->getAvatarCorners(FZZ)I

    move-result v0

    invoke-virtual {v15, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    :goto_5
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v21, 0x42000000    # 32.0f

    const/high16 v22, 0x42000000    # 32.0f

    const v23, 0x800013

    const/high16 v24, 0x41500000    # 13.0f

    const/16 v25, 0x0

    .line 100
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v7, v15, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    const/high16 v2, 0x41800000    # 16.0f

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-static {v1, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 106
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/high16 v26, 0x41400000    # 12.0f

    const/high16 v21, -0x40800000    # -1.0f

    const/high16 v22, -0x40000000    # -2.0f

    const/high16 v24, 0x426c0000    # 59.0f

    .line 107
    invoke-static/range {v21 .. v27}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameRelatively(FFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v1, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    const v2, 0x3f4ccccd    # 0.8f

    .line 110
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AvatarDrawable;->setScaleSize(F)V

    if-eqz v4, :cond_9

    .line 115
    iget v1, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->id:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 116
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_inMenu:I

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static {v1, v10, v2, v11}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createGeneralTopicDrawable(Landroid/content/Context;FIZ)Lorg/telegram/ui/Components/Forum/ForumUtilities$GeneralTopicDrawable;

    move-result-object v1

    .line 117
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 118
    :cond_7
    iget-wide v1, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    cmp-long v1, v1, v17

    if-eqz v1, :cond_8

    .line 119
    new-instance v1, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    iget-wide v10, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->icon_emoji_id:J

    const/16 v5, 0xa

    invoke-direct {v1, v5, v2, v10, v11}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;-><init>(IIJ)V

    .line 120
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setAnimatedEmojiDrawable(Lorg/telegram/ui/Components/AnimatedEmojiDrawable;)V

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    .line 122
    invoke-static {v4, v11}, Lorg/telegram/ui/Components/Forum/ForumUtilities;->createTopicDrawable(Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 123
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    :goto_6
    iget-object v1, v4, Lorg/telegram/tgnet/TLRPC$TL_forumTopic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    move-object/from16 v21, v3

    :goto_8
    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_b

    .line 126
    :cond_9
    const-string v2, "50_50"

    if-eqz v10, :cond_b

    .line 128
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-virtual {v1, v5, v10}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$Chat;)V

    .line 129
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v5, :cond_a

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_a

    move-object v1, v5

    :cond_a
    const/4 v5, 0x1

    .line 132
    invoke-static {v10, v5}, Lorg/telegram/messenger/ImageLocation;->getForChat(Lorg/telegram/tgnet/TLRPC$Chat;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v11

    invoke-virtual {v15, v11, v2, v1, v10}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 133
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    if-eqz v11, :cond_10

    .line 137
    iget-object v5, v11, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v5, :cond_c

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->strippedBitmap:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    move-object v5, v1

    .line 140
    :goto_9
    iget-object v10, v3, Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;->activity:Ljava/lang/Class;

    move-object/from16 v21, v3

    const-class v3, Lorg/telegram/ui/ChatActivity;

    if-ne v10, v3, :cond_d

    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 141
    sget v2, Lorg/telegram/messenger/R$string;->SavedMessages:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    .line 142
    invoke-virtual {v1, v5}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 143
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 144
    :cond_d
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isReplyUser(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 145
    sget v2, Lorg/telegram/messenger/R$string;->RepliesTitle:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    .line 146
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/AvatarDrawable;->setAvatarType(I)V

    .line 147
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    .line 148
    :cond_e
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->isDeleted(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 149
    sget v3, Lorg/telegram/messenger/R$string;->HiddenName:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v5

    invoke-virtual {v1, v5, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    const/4 v10, 0x1

    .line 151
    invoke-static {v11, v10}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    invoke-virtual {v15, v5, v2, v1, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object v2, v3

    goto :goto_a

    :cond_f
    const/4 v10, 0x1

    .line 153
    invoke-static {v11}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 p5, v3

    .line 154
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v3

    invoke-virtual {v1, v3, v11}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(ILorg/telegram/tgnet/TLRPC$User;)V

    .line 155
    invoke-static {v11, v10}, Lorg/telegram/messenger/ImageLocation;->getForUser(Lorg/telegram/tgnet/TLRPC$User;I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v1

    invoke-virtual {v15, v1, v2, v5, v11}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    move-object/from16 v2, p5

    .line 157
    :goto_a
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_10
    move-object/from16 v21, v3

    .line 159
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_viewchats:I

    invoke-static {v8, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 160
    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 161
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v15, v2, v1}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 162
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-static {v2, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v1}, Lorg/telegram/ui/Components/BackupImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 163
    sget v1, Lorg/telegram/messenger/R$string;->AllChats:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move/from16 v11, p5

    const/4 v10, 0x1

    .line 167
    :goto_b
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v0, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 168
    new-instance v0, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda0;

    move-object/from16 v5, p0

    move-object/from16 v1, p4

    move-object/from16 v3, v19

    move-object/from16 v2, v21

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/BackButtonMenu$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/telegram/ui/Components/BackButtonMenu$PulledDialog;Lorg/telegram/ui/ActionBar/INavigationLayout;Lorg/telegram/tgnet/TLRPC$TL_forumTopic;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x30

    const/4 v2, -0x1

    .line 208
    invoke-static {v2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v13, v7, v0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz v10, :cond_11

    .line 210
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 211
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuSeparator:I

    invoke-static {v3, v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 212
    sget v3, Lorg/telegram/messenger/R$id;->fit_width_tag:I

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/16 v3, 0x8

    .line 213
    invoke-static {v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v13, v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->addView(Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;)V

    :cond_11
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v5, p0

    move v2, v11

    move-object/from16 v7, v16

    move-wide/from16 v10, v17

    move-object/from16 v4, v19

    goto/16 :goto_2

    :cond_12
    move/from16 p5, v2

    if-nez p5, :cond_13

    return-object v16

    .line 219
    :cond_13
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v2, -0x2

    invoke-direct {v0, v13, v2, v2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    .line 220
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v5, 0x1

    .line 221
    invoke-virtual {v0, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setPauseNotifications(Z)V

    const/16 v1, 0xdc

    .line 222
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->setDismissAnimationDuration(I)V

    .line 223
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 224
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 225
    sget v1, Lorg/telegram/messenger/R$style;->PopupContextAnimation:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 226
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/high16 v1, 0x447a0000    # 1000.0f

    .line 227
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v13, v2, v1}, Landroid/view/View;->measure(II)V

    const/4 v1, 0x2

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v11, 0x0

    .line 229
    invoke-virtual {v0, v11}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 230
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 231
    invoke-virtual {v13, v5}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setFitItems(Z)V

    const/high16 v2, 0x41000000    # 8.0f

    .line 233
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 234
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 235
    new-array v1, v1, [I

    .line 236
    invoke-virtual {v9, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v11, 0x0

    .line 237
    aget v1, v1, v11

    add-int/2addr v3, v1

    .line 239
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x33

    .line 240
    invoke-virtual {v0, v9, v2, v3, v1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-object v0

    :goto_c
    return-object v16
.end method
