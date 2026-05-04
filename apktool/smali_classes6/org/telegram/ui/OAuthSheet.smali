.class public abstract Lorg/telegram/ui/OAuthSheet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static showing:Lorg/telegram/ui/ActionBar/BottomSheet;


# direct methods
.method public static synthetic $r8$lambda$2Kd8arNVo_m9ySGNcnxfBxgE7Nw([ILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/ui/ActionBar/BottomSheet;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;[Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Integer;)V
    .locals 14

    const/4 v0, 0x0

    .line 315
    aget p0, p0, v0

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    return-void

    .line 317
    :cond_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog;

    sget-object p0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v0, 0xc8

    .line 318
    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 320
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance v0, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance v1, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda23;

    move-object v6, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v5, p11

    invoke-direct/range {v1 .. v13}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet;ZLjava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;[Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p0, p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method public static synthetic $r8$lambda$3lihHEW1tILjKbxIgKnX7YRsiak(Landroid/content/Context;)V
    .locals 1

    .line 102
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_0

    .line 103
    sget-object p0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_0
    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$4_k-9K_QtuFaOp3BTOBIc6jxC14(Landroid/content/Context;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/String;)V
    .locals 3

    .line 474
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V

    const-wide/16 v1, 0xc8

    .line 475
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog;->showDelayed(J)V

    .line 477
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messages_checkUrlAuthMatchCode;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messages_checkUrlAuthMatchCode;-><init>()V

    const/4 v1, 0x0

    .line 478
    aput-object p7, p1, v1

    iput-object p7, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_checkUrlAuthMatchCode;->match_code:Ljava/lang/String;

    .line 479
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_checkUrlAuthMatchCode;->url:Ljava/lang/String;

    .line 480
    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance p3, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda22;

    invoke-direct {p3, v0, p4, p5, p6}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {p1, p0, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method public static synthetic $r8$lambda$6xPbgwiQuEyzUNYJAAB_K6HFjFM(Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;[Ljava/lang/String;Landroid/content/Context;ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 9

    .line 426
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    new-instance v5, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda17;

    invoke-direct {v5, p1, p4}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda17;-><init>([Ljava/lang/String;Ljava/lang/Runnable;)V

    new-instance v7, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda18;

    invoke-direct {v7}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda18;-><init>()V

    .line 430
    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v8

    const/4 v6, 0x1

    move-object v1, p2

    move v2, p3

    .line 427
    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/OAuthSheet;->showMatchCodeSheet(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 432
    :cond_0
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$84VTTB5wL0TsY2kPt_qGs4lKmLg(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet;ZLjava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;[Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 321
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    const/4 p0, 0x0

    if-eqz p12, :cond_0

    .line 323
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 324
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p7, p7, p0

    move p3, p2

    move p2, p1

    move p1, p3

    move-object p3, p4

    move-object p4, p12

    invoke-static/range {p1 .. p9}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V

    return-void

    :cond_0
    if-eqz p13, :cond_3

    .line 326
    const-string p2, "URL_EXPIRED"

    iget-object p3, p13, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 328
    invoke-static {}, Lorg/telegram/ui/OAuthSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->error:I

    sget p3, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailTitle:I

    .line 329
    invoke-static {p3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    sget p0, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailNoDomain:I

    invoke-static {p0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p4, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFail:I

    iget-object p5, p10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    const/4 p6, 0x1

    new-array p6, p6, [Ljava/lang/Object;

    aput-object p5, p6, p0

    invoke-static {p4, p6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p4, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-static {p4, p11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p4

    invoke-static {p0, p4}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p2, p3, p0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 330
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 332
    :cond_2
    iget-object p0, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->topBulletinContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    .line 333
    invoke-virtual {p0, p13}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    :cond_3
    return-void
.end method

.method public static synthetic $r8$lambda$Foy1WD7Lw4Sl81Axg8hb75DEfbQ([ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;I)V
    .locals 3

    const/4 v0, 0x0

    .line 496
    sput-object v0, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v1, 0x0

    .line 497
    aget-boolean v2, p0, v1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 498
    aput-boolean v2, p0, v1

    if-eqz p1, :cond_0

    .line 501
    const-string p0, "oauth_result_failed"

    invoke-static {}, Lorg/telegram/ui/web/BotWebViewContainer;->obj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 504
    iget-object p0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 505
    new-instance p0, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;-><init>()V

    .line 506
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;->url:Ljava/lang/String;

    .line 507
    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$ItlOwHQ0s5YEaaQexFOiw72zpBQ([Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p1, 0x0

    .line 457
    sput-object p1, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    const/4 v0, 0x0

    .line 458
    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    .line 459
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 460
    aput-object p1, p0, v0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$KxXt3asaUsxnKMGProHSahhnkC4(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/FrameLayout;Ljava/util/ArrayList;[ILorg/telegram/messenger/Utilities$Callback;Landroid/view/View;)V
    .locals 4

    .line 347
    iget-object p5, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getResourcesProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p0

    invoke-static {p5, p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 348
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 349
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    aget v2, p3, p5

    if-ne v2, v1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, p5

    :goto_1
    new-instance v3, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda19;

    invoke-direct {v3, p4, v1}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/Utilities$Callback;I)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->addAccount(IZLjava/lang/Runnable;)Lorg/telegram/ui/Components/ItemOptions;

    goto :goto_0

    .line 354
    :cond_2
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/ItemOptions;->setDrawScrim(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 356
    invoke-virtual {p0, p5}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/4 p1, 0x3

    .line 357
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ItemOptions;->setGravity(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    const/high16 p1, 0x41000000    # 8.0f

    .line 358
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p2, p1}, Lorg/telegram/ui/Components/ItemOptions;->translate(FF)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p0

    .line 359
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void
.end method

.method public static synthetic $r8$lambda$LEF4U4aGV6a65A5Hsz9Z0_E37nc([ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$Bool;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 379
    aput-boolean p3, p0, p2

    .line 380
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$LskbgXSWWWWzQ_yiZhF49CbhdGI(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;[Ljava/lang/String;Lorg/telegram/ui/Cells/TextCheckCell;[Z[I[ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 389
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    move-object p0, p3

    move-object p3, p7

    move p7, p11

    .line 391
    new-instance p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;

    invoke-direct {p11}, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;-><init>()V

    .line 392
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    iget v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/2addr v0, v1

    iput v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    .line 394
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iput-object v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 395
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->msg_id:I

    iput v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->msg_id:I

    .line 396
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->button_id:I

    iput v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->button_id:I

    .line 398
    :cond_2
    iget v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 399
    iget v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    or-int/2addr v0, v1

    iput v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->flags:I

    .line 400
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    iput-object v0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->url:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    .line 402
    aget-object p0, p0, v0

    if-eqz p0, :cond_4

    .line 403
    iput-object p0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->match_code:Ljava/lang/String;

    :cond_4
    if-eqz p4, :cond_5

    .line 406
    invoke-virtual {p4}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    iput-boolean p1, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->write_allowed:Z

    .line 407
    aget-boolean p0, p5, v0

    iput-boolean p0, p11, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->share_phone_number:Z

    .line 409
    aget p0, p6, v0

    invoke-static {p0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance p1, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    move-object p5, p9

    move-object p9, p2

    new-instance p2, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda21;

    move-object p4, p8

    move-object p8, p6

    move-object p6, p10

    move-object p10, p12

    move-object p12, p13

    invoke-direct/range {p2 .. p12}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda21;-><init>([ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z[ILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Lorg/telegram/ui/web/BotWebViewContainer;)V

    invoke-virtual {p0, p11, p1, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void
.end method

.method public static synthetic $r8$lambda$QMRsKZdGBNWh_PnTkts_J0NLAyU(Lorg/telegram/ui/Cells/TextCheckCell;Landroid/view/View;)V
    .locals 0

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextCheckCell;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$U1LH9SuT0RMFwlUwp1no2gswtgQ(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 651
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 652
    aget-object p3, p1, p0

    if-eqz p3, :cond_1

    .line 653
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p3, 0x0

    .line 654
    aput-object p3, p1, p0

    .line 655
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$Vwf3ayBT571WRJWaRL5oT5_Gm5M(Lorg/telegram/messenger/Utilities$Callback;I)V
    .locals 0

    .line 351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_v5KRZYa6dp0PtdBna1SElZe1B0([ZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    .line 443
    aput-boolean p2, p0, p2

    .line 444
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$b4FpqIvCNWYnjZflWn0J4aEpMao(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .line 155
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long v0, p0

    .line 156
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p0

    iget p0, p0, Lorg/telegram/messenger/UserConfig;->loginTime:I

    int-to-long p0, p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$hLaPo7vgs4ZtnQHb2HfEU4DO2AE([ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z[ILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;Lorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 410
    aput-boolean v1, p0, v0

    .line 411
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    if-eqz p11, :cond_2

    .line 413
    const-string p0, "URL_EXPIRED"

    iget-object p1, p11, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 414
    invoke-static {}, Lorg/telegram/ui/OAuthSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->error:I

    sget p4, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailTitle:I

    .line 415
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailNoDomain:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget p5, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFail:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    new-array p6, v1, [Ljava/lang/Object;

    aput-object p2, p6, v0

    invoke-static {p5, p6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-static {p5, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 418
    :cond_1
    invoke-static {}, Lorg/telegram/ui/OAuthSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    invoke-virtual {p0, p11}, Lorg/telegram/ui/Components/BulletinFactory;->showForError(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void

    .line 421
    :cond_2
    aget p0, p5, v0

    move-object p5, p7

    const/4 p7, 0x0

    iget-boolean p8, p8, Lorg/telegram/tgnet/TLRPC$TL_messages_acceptUrlAuth;->share_phone_number:Z

    move p1, p4

    move-object p3, p6

    move-object p4, p10

    move-object p6, p2

    move p2, p0

    invoke-static/range {p1 .. p9}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jC2YU9RuChWHWeVgWqh7nBtoVt0()V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$pfTlQM9HwhspZJEfT70vEXzhlY8(Ljava/util/ArrayList;[Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;)V
    .locals 13

    if-eqz p2, :cond_5

    .line 598
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 599
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 600
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v3, v0

    .line 603
    :goto_1
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    .line 604
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->emoticon:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 605
    iget-object v4, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->packs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_stickerPack;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move v6, v0

    .line 606
    :goto_2
    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 607
    iget-object v7, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long v7, v7, v3

    if-nez v7, :cond_1

    .line 608
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$messages_StickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 618
    invoke-static {v2}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 619
    iget-object v2, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v3, 0x28

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    .line 620
    aget-object v6, p1, v1

    .line 621
    invoke-static {v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    .line 623
    invoke-static {v2, v5}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v9

    const-string v10, "40_40"

    const/4 v12, 0x0

    .line 620
    const-string v8, "40_40"

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    return-void
.end method

.method public static synthetic $r8$lambda$uDljVo93szH8qOEgs-cdW1f2jFE(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;[ILandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z[ZLjava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 436
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_1

    .line 437
    :cond_0
    iget-boolean p0, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_phone_number:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 438
    aget p1, p3, p0

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    .line 439
    new-instance p3, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object p5

    invoke-direct {p3, p4, p5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    sget p4, Lorg/telegram/messenger/R$string;->BotAuthPhoneNumber:I

    .line 440
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p3

    sget p4, Lorg/telegram/messenger/R$string;->BotAuthPhoneNumberText:I

    if-eqz p6, :cond_1

    .line 441
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p2}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    :goto_0
    invoke-static {}, Lorg/telegram/PhoneFormat/PhoneFormat;->getInstance()Lorg/telegram/PhoneFormat/PhoneFormat;

    move-result-object p5

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "+"

    invoke-virtual {p6, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Lorg/telegram/PhoneFormat/PhoneFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p5, " "

    const-string p6, "\u00a0"

    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, p0

    const/4 p0, 0x1

    aput-object p1, p5, p0

    invoke-static {p4, p5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {p3, p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->BotAuthPhoneNumberDeny:I

    .line 442
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda15;

    invoke-direct {p2, p7, p8}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda15;-><init>([ZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$string;->BotAuthPhoneNumberAccept:I

    .line 446
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda16;

    invoke-direct {p2, p7, p8}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda16;-><init>([ZLjava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, -0x2

    .line 450
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->makeRed(I)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    return-void

    .line 453
    :cond_2
    invoke-interface {p8}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic $r8$lambda$uGFA2LIRO3VWbMuhydpv9Z-FzWs(Lorg/telegram/ui/ActionBar/AlertDialog;Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$Bool;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 481
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 482
    instance-of p0, p4, Lorg/telegram/tgnet/TLRPC$TL_boolTrue;

    if-eqz p0, :cond_0

    .line 483
    sput-object p1, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 484
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void

    .line 486
    :cond_0
    sget-object p0, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz p0, :cond_1

    .line 487
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p0, 0x0

    .line 488
    sput-object p0, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 490
    :cond_1
    invoke-static {}, Lorg/telegram/ui/OAuthSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p0

    sget p1, Lorg/telegram/messenger/R$raw;->error:I

    sget p4, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailTitle:I

    .line 491
    invoke-static {p4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p4

    iget-object p5, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_2

    sget p2, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFailNoDomain:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    sget p5, Lorg/telegram/messenger/R$string;->BotAuthLoggedInFail:I

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p5, v0}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget p5, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-static {p5, p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p3

    invoke-static {p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p4, p2}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p0

    .line 492
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method public static synthetic $r8$lambda$vmd5HyhxjlEvAUp-kN27745VRlk([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 428
    aput-object p2, p0, v0

    .line 429
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$wMhAEAmdBygSATigTTqIkxlshXY([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const/4 p3, 0x0

    .line 588
    aget-object v0, p0, p3

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 v0, 0x0

    .line 590
    aput-object v0, p0, p3

    .line 591
    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$zFEFn3uSz5fZExu1EDUAFOgXuac([ZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 447
    aput-boolean p3, p0, p2

    .line 448
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$zN4O2JcVZJ2SPRwDmEJNBYP5WTw(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;[ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/web/BotWebViewContainer;ILandroid/view/View;)V
    .locals 1

    const/4 p6, 0x1

    if-eqz p0, :cond_3

    .line 363
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 370
    :cond_1
    invoke-virtual {p3, p6}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    if-eqz p4, :cond_2

    .line 373
    const-string p3, "oauth_result_failed"

    invoke-static {}, Lorg/telegram/ui/web/BotWebViewContainer;->obj()Lorg/json/JSONObject;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 376
    :cond_2
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;-><init>()V

    .line 377
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    iput-object p0, p3, Lorg/telegram/tgnet/TLRPC$TL_messages_declineUrlAuth;->url:Ljava/lang/String;

    .line 378
    invoke-static {p5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p0

    new-instance p4, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Lorg/telegram/messenger/BotForumHelper$$ExternalSyntheticLambda2;-><init>()V

    new-instance p5, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda20;

    invoke-direct {p5, p1, p2}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda20;-><init>([ZLorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {p0, p3, p4, p5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequestTyped(Lorg/telegram/tgnet/TLMethod;Ljava/util/concurrent/Executor;Lorg/telegram/messenger/Utilities$Callback2;)I

    return-void

    :cond_3
    :goto_0
    const/4 p0, 0x0

    .line 364
    aput-boolean p6, p1, p0

    .line 365
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public static getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;
    .locals 6

    .line 663
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 664
    sget-object v1, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 666
    sget-object v1, Lorg/telegram/ui/bots/BotWebViewSheet;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/bots/BotWebViewSheet;

    .line 667
    iget-boolean v5, v4, Lorg/telegram/ui/bots/BotWebViewSheet;->attached:Z

    if-eqz v5, :cond_0

    move-object v3, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_4

    if-eqz v0, :cond_2

    .line 672
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 673
    :goto_1
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 677
    :cond_4
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 679
    sget-object v1, Lorg/telegram/ui/ArticleViewer;->activeSheets:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/ArticleViewer;

    .line 680
    invoke-virtual {v4}, Lorg/telegram/ui/ArticleViewer;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v3, v4

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_9

    if-eqz v0, :cond_7

    .line 688
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_3

    :cond_7
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 689
    :goto_3
    invoke-static {v0}, Lorg/telegram/ui/Components/Bulletin$BulletinWindow;->make(Landroid/content/Context;)Lorg/telegram/ui/Components/Bulletin$BulletinWindow$BulletinWindowLayout;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 692
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 693
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getLastSheet()Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/BaseFragment$AttachedSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0

    .line 694
    :cond_a
    invoke-static {v0}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    return-object v0
.end method

.method public static handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 73
    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/OAuthSheet;->handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V

    return-void
.end method

.method public static handle(ZILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 40

    move-object/from16 v3, p2

    move-object/from16 v0, p3

    move-object/from16 v6, p5

    move-object/from16 v9, p8

    .line 77
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    const/4 v15, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_c

    .line 78
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;

    if-eqz v9, :cond_1

    .line 80
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->in_app_origin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    .line 81
    :cond_0
    invoke-virtual {v9}, Lorg/telegram/ui/web/BotWebViewContainer;->getOriginHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->in_app_origin:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_6

    .line 83
    :cond_1
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "result_url"

    const-string v3, "oauth_result_confirmed"

    if-eqz v1, :cond_9

    .line 85
    instance-of v0, v6, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    if-eqz v0, :cond_2

    .line 86
    move-object v1, v6

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v1, v15

    .line 88
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v0, :cond_3

    .line 89
    move-object v0, v6

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_phone_number:Z

    if-eqz v0, :cond_3

    if-nez p7, :cond_3

    move v0, v12

    goto :goto_1

    :cond_3
    move v0, v13

    .line 90
    :goto_1
    invoke-static {}, Lorg/telegram/ui/OAuthSheet;->getBulletinFactory()Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$raw;->contact_check:I

    sget v6, Lorg/telegram/messenger/R$string;->BotAuthLoggedInSuccessTitle:I

    .line 91
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_4

    sget v0, Lorg/telegram/messenger/R$string;->BotAuthLoggedInSuccessWithoutPhoneNumber:I

    goto :goto_2

    :cond_4
    sget v0, Lorg/telegram/messenger/R$string;->BotAuthLoggedInSuccess:I

    :goto_2
    new-array v7, v12, [Ljava/lang/Object;

    aput-object v1, v7, v13

    invoke-static {v0, v7}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLinkBold(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {v4, v5, v6, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    :cond_5
    if-eqz v9, :cond_6

    .line 95
    invoke-static {v2, v15}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_6
    if-eqz p0, :cond_16

    .line 97
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_6

    .line 99
    :cond_7
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_6

    .line 101
    :cond_8
    new-instance v1, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-wide/16 v2, 0x320

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_9
    if-eqz v9, :cond_a

    .line 110
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;->url:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->obj(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v9, v3, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->notifyEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 112
    :cond_a
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_6

    .line 114
    :cond_b
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultAccepted;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrlInSystemBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 117
    :cond_c
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultDefault;

    if-eqz v1, :cond_13

    if-eqz v9, :cond_d

    return-void

    .line 119
    :cond_d
    iget-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 120
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_6

    .line 122
    :cond_e
    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->url:Ljava/lang/String;

    if-nez v6, :cond_f

    goto :goto_3

    :cond_f
    move v12, v13

    :goto_3
    invoke-static {v0, v1, v13, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    return-void

    .line 123
    :cond_10
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 124
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_6

    :cond_11
    if-nez v6, :cond_12

    :goto_4
    move-object/from16 v5, p4

    goto :goto_5

    :cond_12
    move v12, v13

    goto :goto_4

    .line 126
    :goto_5
    invoke-static {v0, v5, v13, v12}, Lorg/telegram/ui/Components/AlertsCreator;->showOpenUrlAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;ZZ)V

    return-void

    :cond_13
    move-object/from16 v5, p4

    .line 131
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    if-nez v1, :cond_14

    goto :goto_6

    .line 133
    :cond_14
    move-object v10, v0

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;

    .line 135
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v14

    if-nez v14, :cond_15

    goto :goto_6

    .line 137
    :cond_15
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_6
    return-void

    .line 140
    :cond_17
    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v11

    .line 141
    new-instance v1, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-direct {v1, v0, v13, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 143
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v7

    .line 148
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v8, v13

    move-object/from16 v16, v15

    :goto_7
    const/16 v15, 0x10

    if-ge v8, v15, :cond_19

    .line 150
    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-static {v8}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v15

    invoke-virtual {v15}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v15

    if-ne v15, v7, :cond_18

    .line 151
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 154
    :cond_19
    new-instance v7, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 165
    iget-object v7, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v7, :cond_1a

    move/from16 v17, v12

    goto :goto_8

    :cond_1a
    move/from16 v17, v13

    .line 167
    :goto_8
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 168
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v18, 0x41600000    # 14.0f

    .line 169
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    move/from16 v19, v13

    sget v13, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackgroundGray:I

    invoke-virtual {v14, v13}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v13

    invoke-static {v15, v13}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 170
    new-instance v13, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v13, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-static/range {v18 .. v18}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v13, v15}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 172
    invoke-virtual {v13}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 173
    new-instance v15, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v15}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    move-object/from16 v20, v1

    .line 175
    filled-new-array/range {p1 .. p1}, [I

    move-result-object v1

    .line 176
    aget v21, v1, v19

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v12

    .line 177
    invoke-virtual {v15, v12}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 178
    invoke-virtual {v13, v12, v15}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v12, 0x73

    const/16 v15, 0x1c

    .line 180
    invoke-static {v15, v15, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v8, v13, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    new-instance v12, Landroid/widget/ImageView;

    invoke-direct {v12, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 182
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 183
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextGray3:I

    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v15

    move-object/from16 v22, v1

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v15, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 184
    sget v13, Lorg/telegram/messenger/R$drawable;->arrows_select:I

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    const/high16 v28, 0x40800000    # 4.0f

    const/16 v29, 0x0

    const/16 v23, 0x12

    const/high16 v24, 0x41900000    # 18.0f

    const/16 v25, 0x15

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 185
    invoke-static/range {v23 .. v29}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v12, 0x34

    const/16 v13, 0x11

    const/16 v15, 0x1c

    .line 186
    invoke-static {v12, v15, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41000000    # 8.0f

    .line 187
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    const/high16 v21, 0x40800000    # 4.0f

    move/from16 v23, v12

    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    move-object/from16 v23, v4

    move/from16 v4, v19

    invoke-virtual {v7, v15, v12, v13, v4}, Landroid/view/View;->setPadding(IIII)V

    const/16 v30, 0x6

    const/16 v31, 0x0

    const/16 v24, -0x2

    const/16 v25, -0x2

    const/16 v27, 0x33

    const/16 v28, 0x6

    const/16 v29, 0x4

    .line 188
    invoke-static/range {v24 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v7, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    invoke-static {v7}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 190
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v12, 0x1

    if-le v4, v12, :cond_1b

    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v4, :cond_1c

    :cond_1b
    const/16 v4, 0x8

    .line 191
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_1c
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 195
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v12, -0x1

    const/16 v13, 0x77

    .line 196
    invoke-static {v12, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v15

    invoke-virtual {v2, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v2, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    const/high16 v15, 0x42200000    # 40.0f

    .line 199
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    invoke-virtual {v2, v15}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 200
    new-instance v15, Lorg/telegram/ui/Components/AvatarDrawable;

    invoke-direct {v15}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>()V

    .line 201
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v15, v13}, Lorg/telegram/ui/Components/AvatarDrawable;->setInfo(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 202
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, v13, v15}, Lorg/telegram/ui/Components/BackupImageView;->setForUserOrChat(Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/Components/AvatarDrawable;)V

    const/16 v30, 0x0

    const/16 v31, 0x10

    const/16 v25, 0x50

    const/16 v26, 0x50

    const/16 v27, 0x31

    const/16 v28, 0x0

    const/16 v29, 0x15

    .line 203
    invoke-static/range {v25 .. v31}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v2, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    const/high16 v13, 0x41a00000    # 20.0f

    const/4 v15, 0x1

    invoke-static {v0, v13, v2, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v13

    const/16 v12, 0x11

    .line 206
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 207
    sget v12, Lorg/telegram/messenger/R$string;->BotAuthTitle:I

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    move-object/from16 v26, v3

    new-array v3, v15, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v26, v3, v19

    invoke-static {v12, v3}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {v14, v12}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v12

    invoke-static {v3, v12}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v31, 0x42000000    # 32.0f

    const v32, 0x411a8f5c    # 9.66f

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x31

    const/high16 v29, 0x42000000    # 32.0f

    const/16 v30, 0x0

    .line 208
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move/from16 v3, v18

    const/4 v12, 0x0

    .line 210
    invoke-static {v0, v3, v2, v12}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v13

    const/16 v12, 0x11

    .line 211
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setGravity(I)V

    if-eqz v17, :cond_1d

    .line 212
    sget v3, Lorg/telegram/messenger/R$string;->BotAuthBotSubtitle:I

    goto :goto_9

    :cond_1d
    sget v3, Lorg/telegram/messenger/R$string;->BotAuthSiteSubtitle:I

    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v31, 0x20

    const/16 v32, 0x18

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x31

    const/16 v29, 0x20

    const/16 v30, 0x0

    .line 213
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/high16 v12, 0x41800000    # 16.0f

    if-eqz v3, :cond_1f

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_a

    :cond_1e
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_14

    .line 217
    :cond_1f
    :goto_a
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v13, 0x0

    .line 218
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 219
    invoke-virtual {v3, v13}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v15, 0x1

    .line 220
    invoke-virtual {v3, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 221
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    sget v15, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v14, v15}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v15

    invoke-static {v13, v15}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawableShadowed(II)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v31, 0x9

    const/16 v32, -0x3

    const/16 v26, -0x1

    const/16 v27, -0x2

    const/16 v28, 0x37

    const/16 v29, 0x9

    const/16 v30, -0x3

    .line 222
    invoke-static/range {v26 .. v32}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v3, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const-string v27, "\u2014"

    if-eqz v13, :cond_21

    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_20

    goto :goto_b

    :cond_20
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    goto/16 :goto_e

    .line 225
    :cond_21
    :goto_b
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    .line 226
    invoke-virtual {v13, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 229
    sget v12, Lorg/telegram/messenger/R$drawable;->msg2_devices:I

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-direct {v12, v5, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v35, 0x14

    const/16 v36, 0x0

    const/16 v30, 0x18

    const/16 v31, 0x18

    const/16 v32, 0x13

    const/16 v33, 0x11

    const/16 v34, 0x0

    .line 231
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v13, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 234
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v35, 0x41a00000    # 20.0f

    const/high16 v36, 0x41300000    # 11.0f

    const/16 v30, -0x1

    const/16 v31, -0x2

    const/16 v32, 0x37

    const/16 v33, 0x0

    const v34, 0x412a8f5c    # 10.66f

    .line 235
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v13, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v15, 0x0

    .line 237
    invoke-static {v0, v12, v2, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 238
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_22

    move-object/from16 v12, v27

    goto :goto_c

    :cond_22
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->platform:Ljava/lang/String;

    :goto_c
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v35, 0x0

    const v36, 0x408a8f5c    # 4.33f

    const/16 v30, -0x1

    const/16 v31, -0x2

    const/16 v32, 0x37

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 239
    invoke-static/range {v30 .. v36}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v12

    invoke-virtual {v5, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v15, 0x0

    invoke-static {v0, v12, v6, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v6

    .line 242
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_23

    move-object/from16 v12, v27

    goto :goto_d

    :cond_23
    iget-object v12, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->browser:Ljava/lang/String;

    :goto_d
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    const/4 v7, -0x1

    const/16 v12, 0x37

    const/4 v15, -0x2

    .line 243
    invoke-static {v7, v15, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    invoke-static {v7, v15}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v13, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :goto_e
    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_f

    :cond_24
    const/4 v15, 0x0

    goto/16 :goto_13

    .line 248
    :cond_25
    :goto_f
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    .line 249
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 251
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    sget v7, Lorg/telegram/messenger/R$drawable;->msg2_language:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v8

    invoke-direct {v7, v8, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    const/16 v37, 0x14

    const/16 v38, 0x0

    const/16 v32, 0x18

    const/16 v33, 0x18

    const/16 v34, 0x13

    const/16 v35, 0x11

    const/16 v36, 0x0

    .line 254
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x1

    .line 257
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v37, 0x41a00000    # 20.0f

    const/high16 v38, 0x41300000    # 11.0f

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x37

    const/16 v35, 0x0

    const v36, 0x412a8f5c    # 10.66f

    .line 258
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v12, 0x41800000    # 16.0f

    const/4 v15, 0x0

    .line 260
    invoke-static {v0, v12, v2, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 261
    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_26

    move-object/from16 v6, v27

    goto :goto_10

    :cond_26
    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->region:Ljava/lang/String;

    :goto_10
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v37, 0x0

    const v38, 0x408a8f5c    # 4.33f

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x37

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 262
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIFFFF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v12, 0x41500000    # 13.0f

    const/4 v15, 0x0

    invoke-static {v0, v12, v2, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 265
    iget-object v6, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_27

    :goto_11
    move-object/from16 v6, v27

    goto :goto_12

    :cond_27
    sget v6, Lorg/telegram/messenger/R$string;->BotAuthBasedOnIP:I

    iget-object v7, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->ip:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v7, v8, v15

    invoke-static {v6, v8}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    goto :goto_11

    :goto_12
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/16 v12, 0x37

    .line 266
    invoke-static {v7, v6, v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-static {v7, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    :goto_13
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v0, v3, v1, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 272
    sget v2, Lorg/telegram/messenger/R$string;->BotAuthInfo:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v37, 0x16

    const/16 v38, 0x14

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x37

    const/16 v35, 0x16

    const/16 v36, 0x5

    .line 273
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    :goto_14
    iget-boolean v1, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->request_write_access:Z

    if-eqz v1, :cond_28

    .line 278
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v29, 0x41800000    # 16.0f

    .line 279
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {v14, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-static {v2, v5}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawableShadowed(II)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    new-instance v2, Lorg/telegram/ui/Cells/TextCheckCell;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 281
    sget v5, Lorg/telegram/messenger/R$string;->BotAuthAllowMessages:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2, v5, v15, v12}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 282
    invoke-virtual {v14, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {v14, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v3, v5, v6, v6}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(IIII)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 283
    new-instance v3, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Cells/TextCheckCell;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v3, 0x77

    const/4 v7, -0x1

    .line 286
    invoke-static {v7, v7, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v37, 0x9

    const/16 v38, -0x3

    const/16 v32, -0x1

    const/16 v33, -0x2

    const/16 v34, 0x7

    const/16 v35, 0x9

    const/16 v36, -0x3

    .line 287
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    const/high16 v3, 0x41600000    # 14.0f

    const/4 v15, 0x0

    invoke-static {v0, v3, v1, v15}, Lorg/telegram/ui/Components/TextHelper;->makeTextView(Landroid/content/Context;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 290
    sget v3, Lorg/telegram/messenger/R$string;->BotAuthAllowMessagesInfo:I

    iget-object v5, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->bot:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {v5}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x1

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v15

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v37, 0x16

    const/16 v38, 0x14

    const/16 v34, 0x37

    const/16 v35, 0x16

    const/16 v36, 0x6

    .line 291
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v12, v2

    goto :goto_15

    :cond_28
    move-object/from16 v12, v16

    .line 296
    :goto_15
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v15, 0x0

    .line 297
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 299
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v13

    .line 300
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-virtual {v14, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setColor(I)V

    .line 301
    sget v2, Lorg/telegram/messenger/R$string;->Decline:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    const/16 v38, 0x5

    const/16 v39, 0x0

    const/16 v32, -0x1

    const/16 v33, 0x30

    const/high16 v34, 0x3f800000    # 1.0f

    const/16 v35, 0x77

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 302
    invoke-static/range {v32 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    new-instance v2, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {v14}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v2

    .line 305
    sget v3, Lorg/telegram/messenger/R$string;->BotAuthLogin:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    const/16 v38, 0x0

    const/16 v36, 0x5

    .line 306
    invoke-static/range {v32 .. v39}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v37, 0xc

    const/16 v38, 0x8

    const/16 v33, -0x2

    const/16 v34, 0x7

    const/16 v35, 0xc

    const/16 v36, 0xc

    .line 308
    invoke-static/range {v32 .. v38}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    invoke-virtual/range {v20 .. v20}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v3

    .line 311
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {v14, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setBackgroundColor(I)V

    .line 313
    filled-new-array/range {p6 .. p6}, [Ljava/lang/String;

    move-result-object v4

    .line 314
    new-instance v8, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda5;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object v7, v4

    move-object v0, v8

    move-object/from16 v1, v22

    move-object/from16 v15, v30

    move/from16 v4, p0

    move-object/from16 v2, p2

    move/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda5;-><init>([ILorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;Lorg/telegram/ui/ActionBar/BottomSheet;ZLjava/lang/String;Lorg/telegram/tgnet/TLRPC$UrlAuthResult;[Ljava/lang/String;ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v8, v0

    move-object v9, v7

    move-object v7, v1

    .line 338
    iget-wide v0, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->user_id_hint:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2a

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iget-wide v4, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->user_id_hint:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2a

    .line 339
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v0, :cond_2a

    move-object/from16 v6, v23

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 340
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v22

    move-object v5, v3

    iget-wide v2, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->user_id_hint:J

    cmp-long v2, v22, v2

    if-nez v2, :cond_29

    .line 341
    invoke-interface {v8, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_17

    :cond_29
    move-object v3, v5

    move-object/from16 v23, v6

    goto :goto_16

    :cond_2a
    move-object v5, v3

    move-object/from16 v6, v23

    .line 346
    :goto_17
    new-instance v3, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda6;

    move-object v4, v5

    move-object/from16 v5, v31

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Landroid/widget/FrameLayout;Ljava/util/ArrayList;[ILorg/telegram/messenger/Utilities$Callback;)V

    move-object v0, v3

    move-object v3, v4

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v15, 0x1

    .line 361
    new-array v8, v15, [Z

    .line 362
    new-instance v0, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda7;

    move/from16 v6, p1

    move-object/from16 v1, p2

    move-object/from16 v5, p8

    move-object v2, v8

    move-object v4, v13

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;[ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/web/BotWebViewContainer;I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-array v6, v15, [Z

    .line 384
    new-array v15, v15, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 385
    new-instance v0, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda8;

    move-object/from16 v13, p4

    move-object v2, v4

    move-object v4, v9

    move-object v5, v12

    move-object/from16 v19, v14

    move-object/from16 v1, v20

    const/16 v20, 0x0

    move/from16 v12, p0

    move-object/from16 v14, p8

    move-object v9, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v14}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;[Ljava/lang/String;Lorg/telegram/ui/Cells/TextCheckCell;[Z[I[ZLorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZLjava/lang/String;Lorg/telegram/ui/web/BotWebViewContainer;)V

    move-object/from16 v22, v7

    move-object v13, v8

    move-object v12, v9

    move-object v7, v0

    move-object v9, v1

    move-object v1, v2

    move-object v0, v11

    move-object v11, v6

    .line 425
    new-instance v2, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda9;

    move/from16 v6, p1

    move-object v3, v10

    move-object/from16 v5, v18

    move-object/from16 v8, v19

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;[Ljava/lang/String;Landroid/content/Context;ILjava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    move-object/from16 v18, v4

    move-object v7, v5

    .line 435
    new-instance v3, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda10;

    move-object v4, v1

    move-object v5, v10

    move-object v10, v11

    move-object/from16 v6, v22

    move-object v11, v2

    move-object v2, v3

    move-object v3, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v11}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;[ILandroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Z[ZLjava/lang/Runnable;)V

    move-object v9, v3

    move-object v10, v5

    invoke-virtual {v9, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    new-instance v1, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda11;

    invoke-direct {v1, v15}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda11;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;)V

    invoke-virtual {v12, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 464
    sget-object v1, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    if-eqz v1, :cond_2b

    .line 465
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 466
    sput-object v16, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 469
    :cond_2b
    iget-boolean v1, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes_first:Z

    if-eqz v1, :cond_2c

    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    aget-object v1, v18, v20

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2c
    move-object v3, v12

    goto :goto_18

    .line 473
    :cond_2d
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->match_codes:Ljava/util/ArrayList;

    iget-object v11, v10, Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;->domain:Ljava/lang/String;

    new-instance v4, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda1;

    move-object/from16 v3, p2

    move-object v1, v7

    move-object v6, v10

    move-object v5, v12

    move-object/from16 v2, v18

    move-object v7, v0

    move-object v0, v4

    move/from16 v4, p1

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;[Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;ILorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/tgnet/TLRPC$TL_urlAuthResultRequest;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object v7, v1

    new-instance v6, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda2;

    move/from16 v1, p1

    invoke-direct {v6, v13, v14, v3, v1}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda2;-><init>([ZLorg/telegram/ui/web/BotWebViewContainer;Lorg/telegram/tgnet/TLRPC$TL_messages_requestUrlAuth;I)V

    .line 510
    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const/4 v5, 0x0

    move-object v4, v0

    move-object v0, v7

    move-object v3, v11

    move-object v7, v2

    move-object v2, v9

    .line 473
    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/OAuthSheet;->showMatchCodeSheet(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 470
    :goto_18
    sput-object v3, Lorg/telegram/ui/OAuthSheet;->showing:Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 471
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method public static showMatchCodeSheet(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;ZLjava/lang/Runnable;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/ActionBar/BottomSheet;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    const/4 v3, 0x1

    .line 524
    new-array v4, v3, [Lorg/telegram/ui/ActionBar/BottomSheet;

    .line 525
    new-instance v5, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 529
    invoke-virtual {v5, v6}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 531
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 532
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v8, 0x11

    .line 533
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v9, 0x41900000    # 18.0f

    .line 534
    invoke-virtual {v7, v3, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 535
    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v9, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v15, 0x0

    const/16 v16, 0x13

    const/4 v10, -0x1

    const/4 v11, -0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v14, 0x19

    .line 536
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 538
    new-instance v9, Landroid/widget/LinearLayout;

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 539
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 540
    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/high16 v11, 0x41980000    # 19.0f

    .line 541
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-virtual {v9, v10, v12, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 542
    invoke-static/range {v13 .. v19}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v6, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 545
    invoke-static/range {p1 .. p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v11

    if-eqz v11, :cond_1

    move v11, v10

    :goto_0
    const/16 v12, 0x10

    if-ge v11, v12, :cond_1

    .line 547
    invoke-static {v11}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/tgnet/ConnectionsManager;->isTestBackend()Z

    move-result v12

    if-nez v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move/from16 v11, p1

    .line 554
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [Lorg/telegram/ui/Components/BackupImageView;

    move v14, v3

    move v13, v10

    .line 555
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_4

    .line 556
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 557
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v17, 0x428c0000    # 70.0f

    .line 558
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-static {v8, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v8

    move-object/from16 v19, v5

    const v5, 0x3d4ccccd    # 0.05f

    invoke-static {v8, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v10, v5}, Lorg/telegram/ui/ActionBar/Theme;->createCircleDrawable(II)Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 560
    invoke-static {v15}, Lorg/telegram/messenger/Emoji;->getEmojiBigDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_2

    .line 562
    new-instance v5, Lorg/telegram/ui/Components/Text;

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-direct {v5, v15, v8, v10}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    .line 563
    new-instance v8, Lorg/telegram/ui/OAuthSheet$1;

    invoke-direct {v8, v5, v2}, Lorg/telegram/ui/OAuthSheet$1;-><init>(Lorg/telegram/ui/Components/Text;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object/from16 v25, v8

    const/4 v14, 0x0

    goto :goto_3

    :cond_2
    move-object/from16 v25, v5

    .line 579
    :goto_3
    new-instance v5, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {v5, v0}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    aput-object v5, v12, v13

    .line 580
    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v8

    invoke-virtual {v8, v11}, Lorg/telegram/messenger/ImageReceiver;->setCurrentAccount(I)V

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v5

    .line 581
    invoke-virtual/range {v20 .. v26}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)V

    .line 582
    invoke-static {v5}, Lorg/telegram/messenger/NotificationCenter;->listenEmojiLoading(Landroid/view/View;)V

    const/16 v8, 0x28

    const/16 v10, 0x11

    .line 583
    invoke-static {v8, v8, v10}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v3, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez v13, :cond_3

    const/16 v23, 0x0

    goto :goto_4

    :cond_3
    const/16 v5, 0x18

    move/from16 v23, v5

    :goto_4
    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v20, 0x46

    const/16 v21, 0x46

    const/16 v22, 0x10

    const/16 v24, 0x0

    .line 585
    invoke-static/range {v20 .. v26}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    invoke-static {v3}, Lorg/telegram/ui/Components/ScaleStateListAnimator;->apply(Landroid/view/View;)V

    .line 587
    new-instance v5, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda12;

    move-object/from16 v8, p4

    invoke-direct {v5, v4, v8, v15}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda12;-><init>([Lorg/telegram/ui/ActionBar/BottomSheet;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v19

    const/4 v3, 0x1

    const/16 v8, 0x11

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v19, v5

    .line 595
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    .line 596
    const-string v5, "RestrictedEmoji"

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    .line 597
    invoke-static {v11}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v5

    new-instance v8, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda13;

    invoke-direct {v8, v1, v12}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda13;-><init>(Ljava/util/ArrayList;[Lorg/telegram/ui/Components/BackupImageView;)V

    const/4 v1, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v3, v1, v9, v8}, Lorg/telegram/messenger/MediaDataController;->getStickerSet(Lorg/telegram/tgnet/TLRPC$InputStickerSet;Ljava/lang/Integer;ZLorg/telegram/messenger/Utilities$Callback;)Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    if-eqz v14, :cond_5

    .line 632
    sget v1, Lorg/telegram/messenger/R$string;->BotAuthSelectEmoji:I

    goto :goto_5

    :cond_5
    sget v1, Lorg/telegram/messenger/R$string;->BotAuthSelectCode:I

    :goto_5
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v10, 0x11

    .line 635
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v3, 0x41400000    # 12.0f

    const/4 v5, 0x1

    .line 636
    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 637
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 638
    sget v3, Lorg/telegram/messenger/R$string;->BotAuthLoginRequestFrom:I

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object p3, v5, v18

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->formatString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    invoke-static {v3, v5}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v12, 0x0

    const/16 v13, 0xb

    const/4 v7, -0x1

    const/4 v8, -0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v11, 0x17

    .line 639
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    new-instance v1, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-direct {v1, v0, v2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setRound()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    move-result-object v0

    if-eqz p5, :cond_6

    .line 643
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setNeutral()Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 644
    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 646
    :cond_6
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setColor(I)V

    .line 647
    sget v1, Lorg/telegram/messenger/R$string;->Decline:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    const/16 v12, 0xc

    const/16 v13, 0xc

    const/4 v7, -0x1

    const/16 v8, 0x30

    const/4 v9, 0x7

    const/16 v10, 0xc

    const/16 v11, 0xc

    .line 649
    invoke-static/range {v7 .. v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 650
    new-instance v1, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda14;

    move-object/from16 v2, p6

    invoke-direct {v1, v0, v4, v2}, Lorg/telegram/ui/OAuthSheet$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;[Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    invoke-virtual/range {v19 .. v19}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    const/16 v18, 0x0

    aput-object v0, v4, v18

    return-object v0
.end method
