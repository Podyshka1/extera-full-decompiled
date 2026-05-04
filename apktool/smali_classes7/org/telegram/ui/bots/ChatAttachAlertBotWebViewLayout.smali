.class public Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;
.super Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;,
        Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;
    }
.end annotation


# instance fields
.field private addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private botId:J

.field private currentAccount:I

.field private customActionBarBackground:I

.field private customBackground:I

.field private destroyed:Z

.field private hasCustomActionBarBackground:Z

.field private hasCustomBackground:Z

.field private ignoreLayout:Z

.field private ignoreMeasure:Z

.field private isBotButtonAvailable:Z

.field private lastSwipeTime:J

.field private measureOffsetY:I

.field private monoforumTopicId:J

.field private needCloseConfirmation:Z

.field private needReload:Z

.field private otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field private peerId:J

.field public pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private pollRunnable:Ljava/lang/Runnable;

.field private progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

.field private queryId:J

.field private replyToMsgId:I

.field public settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

.field private silent:Z

.field private startCommand:Ljava/lang/String;

.field private swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

.field private webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

.field private webViewScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$2fcCEzrjjjXCYKmYQp5ku4Z3rug(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/Float;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$8(Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$41O-9uLZF4x3z6I2VMiIO8-nKNE(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nrhuboaC5tWNEp_50I3md9fsxE(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$D4Qx-n-UwGjQp4z7kQKSdn7zXdk(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$DsMc6MmiNj0E738tYWY1WPN8w40(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$showJustAddedBulletin$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GBQMbm9Ll6WDa8-ahkRXUoclrpQ(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    return-void
.end method

.method public static synthetic $r8$lambda$S27g5mTpyDXD0fQtUwIKquCv5Lg(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onCheckDismissByUser$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_9n-cjOB3ORO_6r_NM3O78n4rIk(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_SWbIenTUC3NEdgW7esKxBcNRZk(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gFbVN77pkc1r3CRc54r_bAD_xj8(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h-5Ef5B8tpTXtjERYt3ws7EkLeM(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hVJl8jnTsqWMTeIi4eb9Hrp_d4k(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jBSyAx88Et7Sb8rfcn0wMS4UWls(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$onShown$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$r_gZbisvceL70VpOeXNnhPUQl60(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$y4tKjPnlla6WJyl5RbIOahXftPY(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$new$5(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zHLZqPBtNu0M-836BOFMx8UIjXc(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisBotButtonAvailable(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmeasureOffsetY(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetprogressView(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetswipeContainer(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebViewContainer(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwebViewScrollAnimator(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisBotButtonAvailable(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputwebViewScrollAnimator(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 12

    .line 194
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 104
    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object p1

    const/4 v0, 0x0

    .line 197
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 198
    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_bot:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewOpenBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_pin:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    sget v2, Lorg/telegram/messenger/R$string;->PinMessage:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_settings:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewSettings:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v0, 0x8

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_retry:I

    sget v3, Lorg/telegram/messenger/R$string;->BotWebViewReloadPage:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 203
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v1, Lorg/telegram/messenger/R$id;->menu_add_to_home_screen_bot:I

    sget v2, Lorg/telegram/messenger/R$drawable;->msg_home:I

    sget v3, Lorg/telegram/messenger/R$string;->AddShortcut:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_tos_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_intro:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewToS:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_delete:I

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewDeleteBot:I

    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 208
    new-instance v3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;

    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v7

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;IZ)V

    iput-object v3, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    .line 226
    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$2;

    invoke-direct {p1, p0, v5}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$2;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Landroid/content/Context;)V

    iput-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    .line 232
    iget-object p2, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 p3, -0x1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollListener(Ljava/lang/Runnable;)V

    .line 238
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setScrollEndListener(Ljava/lang/Runnable;)V

    .line 239
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setDelegate(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer$Delegate;)V

    .line 244
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setIsKeyboardVisible(Lorg/telegram/messenger/GenericProvider;)V

    .line 246
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-static {p3, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-direct {p1, v5, v6}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/4 v10, 0x0

    const/high16 v11, 0x42a80000    # 84.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40000000    # -2.0f

    const/16 v7, 0x50

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object p1, v4, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->setWebViewProgressListener(Landroidx/core/util/Consumer;)V

    .line 267
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 142
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0xea60

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 135
    new-instance p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 7

    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    if-nez v0, :cond_4

    .line 106
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;-><init>()V

    .line 107
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 108
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 109
    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->query_id:J

    .line 110
    iget-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->silent:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->silent:Z

    .line 111
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 112
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v1

    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 113
    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 114
    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 115
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    .line 117
    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    goto :goto_0

    .line 118
    :cond_1
    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 119
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 120
    iget v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-wide v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v4

    iput-object v4, v1, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 121
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 124
    :cond_2
    :goto_0
    iget-wide v4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_3

    .line 125
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    neg-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 127
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_3

    .line 129
    iget v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 130
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_prolongWebView;->flags:I

    .line 135
    :cond_3
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_4
    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 3

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;ZI)V

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight()V

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->lastSwipeTime:J

    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 2

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->invalidateViewPortHeight(Z)V

    return-void
.end method

.method private synthetic lambda$new$5(Z)V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    move-result p1

    if-nez p1, :cond_0

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$6(Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->getKeyboardHeight()I

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$7(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$new$8(Ljava/lang/Float;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgressAnimated(F)V

    .line 251
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 252
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 253
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 254
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$3;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 261
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 263
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private synthetic lambda$onCheckDismissByUser$9(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    .line 294
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onPanTransitionStart$10(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 391
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;->setScrollY(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onShown$11()V
    .locals 1

    .line 450
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->restoreButtonData()V

    return-void
.end method

.method private synthetic lambda$requestWebView$12(Lorg/telegram/tgnet/TLObject;I)V
    .locals 2

    .line 554
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    if-eqz v0, :cond_0

    .line 555
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;

    .line 556
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->query_id:J

    iput-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    .line 557
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_webViewResultUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->loadUrl(ILjava/lang/String;)V

    .line 559
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestWebView$13(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 553
    new-instance p3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p2, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Lorg/telegram/tgnet/TLObject;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$showJustAddedBulletin$14(Ljava/lang/String;)V
    .locals 2

    .line 727
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getContainer()Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$raw;->contact_check:I

    .line 728
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/16 v0, 0x1388

    .line 729
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->setDuration(I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    const/4 v0, 0x1

    .line 730
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void
.end method

.method private requestEnableKeyboard()V
    .locals 3

    .line 454
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    .line 455
    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/ChatActivity;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 457
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v0, 0x1

    .line 462
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 463
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public canExpandByRequest()Z
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isSwipeInProgress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 2

    .line 693
    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 694
    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 696
    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->queryId:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_1

    .line 697
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 p1, 0x1

    .line 698
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 701
    :cond_0
    sget p2, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    if-ne p1, p2, :cond_1

    .line 702
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer;->updateFlickerBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public disallowSwipeOffsetAnimation()V
    .locals 2

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    return-void
.end method

.method public getButtonsHideOffset()I
    .locals 2

    .line 644
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentItemTop()I
    .locals 2

    .line 476
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getCustomActionBarBackground()I
    .locals 1

    .line 329
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customActionBarBackground:I

    return v0
.end method

.method public getCustomBackground()I
    .locals 1

    .line 319
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customBackground:I

    return v0
.end method

.method public getFirstOffset()I
    .locals 2

    .line 619
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->getListTopPadding()I

    move-result v0

    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListTopPadding()I
    .locals 1

    .line 614
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getStartCommand()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    return-object v0
.end method

.method public getSwipeContainer()Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;
    .locals 1

    .line 1328
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    return-object v0
.end method

.method public getWebViewContainer()Lorg/telegram/ui/web/BotWebViewContainer;
    .locals 1

    .line 680
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    return-object v0
.end method

.method public hasCustomActionBarBackground()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomActionBarBackground:Z

    return v0
.end method

.method public hasCustomBackground()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return v0
.end method

.method public isBotButtonAvailable()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    return v0
.end method

.method public needReload()Z
    .locals 2

    .line 605
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 606
    iput-boolean v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public needsActionBar()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .line 649
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 652
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    return v1
.end method

.method public onCheckDismissByUser()Z
    .locals 4

    .line 285
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    if-eqz v0, :cond_1

    .line 287
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 289
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 291
    :goto_0
    new-instance v2, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    invoke-virtual {v2, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewChangesMayNotBeSaved:I

    .line 293
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->BotWebViewCloseAnyway:I

    .line 294
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 295
    invoke-static {v2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Lorg/telegram/ui/ActionBar/AlertDialog$OnButtonClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 298
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 575
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 576
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didSetNewTheme:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 578
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->removeAllSubItems()V

    .line 580
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 582
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    .line 583
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->destroyed:Z

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pollRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 569
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onDestroy()V

    .line 570
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onDismissWithTouchOutside()Z
    .locals 1

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    const/4 v0, 0x0

    return v0
.end method

.method public onHidden()V
    .locals 2

    .line 468
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHidden()V

    .line 470
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setFocusable(Z)V

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onHide()V
    .locals 2

    .line 590
    invoke-super {p0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->onHide()V

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    .line 592
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->isBotButtonAvailable:Z

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    .line 596
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 598
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->hasUserPermissions()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->destroyWebView()V

    const/4 v0, 0x1

    .line 600
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needReload:Z

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 352
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onMenuItemClick(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onBackPressed()Z

    move-result p1

    if-nez p1, :cond_b

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->onCheckDismissByUser()Z

    return-void

    .line 156
    :cond_0
    sget v0, Lorg/telegram/messenger/R$id;->menu_open_bot:I

    if-ne p1, v0, :cond_1

    .line 157
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v0, "user_id"

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v1, p1}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 160
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismiss()V

    return-void

    .line 161
    :cond_1
    sget v0, Lorg/telegram/messenger/R$id;->menu_pin:I

    if-ne p1, v0, :cond_4

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v0, p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    .line 163
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->pinItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    if-nez v0, :cond_2

    sget v0, Lorg/telegram/messenger/R$string;->UnpinMessage:I

    goto :goto_0

    :cond_2
    sget v0, Lorg/telegram/messenger/R$string;->PinMessage:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    iget-boolean v1, v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->isPinned:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_unpin:I

    goto :goto_1

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    return-void

    .line 164
    :cond_4
    sget v0, Lorg/telegram/messenger/R$id;->menu_reload_page:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 167
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 170
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;->setLoadProgress(F)V

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 172
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->progressView:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebProgressView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    iget-object v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 176
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->reload()V

    return-void

    .line 177
    :cond_6
    sget v0, Lorg/telegram/messenger/R$id;->menu_delete_bot:I

    if-ne p1, v0, :cond_8

    .line 178
    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_7
    if-ge v1, v0, :cond_b

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 179
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v5, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 180
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v3, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onLongClickBotButton(Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;Lorg/telegram/tgnet/TLRPC$User;)V

    return-void

    .line 184
    :cond_8
    sget v0, Lorg/telegram/messenger/R$id;->menu_settings:I

    if-ne p1, v0, :cond_9

    .line 185
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->onSettingsButtonPressed()V

    return-void

    .line 186
    :cond_9
    sget v0, Lorg/telegram/messenger/R$id;->menu_add_to_home_screen_bot:I

    if-ne p1, v0, :cond_a

    .line 187
    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    sget v2, Lorg/telegram/messenger/MediaDataController;->SHORTCUT_TYPE_ATTACHED_BOT:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/messenger/MediaDataController;->installShortcut(JI)V

    return-void

    .line 188
    :cond_a
    sget v0, Lorg/telegram/messenger/R$id;->menu_tos_bot:I

    if-ne p1, v0, :cond_b

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->BotWebViewToSLink:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onPanTransitionEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 414
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    .line 415
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 416
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    .line 417
    invoke-virtual {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestLayout()V

    return-void
.end method

.method public onPanTransitionStart(ZI)V
    .locals 4

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 365
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/web/BotWebViewContainer;->setViewPortByMeasureSuppressed(Z)V

    .line 368
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result p1

    neg-float p1, p1

    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v1

    add-float/2addr p1, v1

    .line 369
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getSwipeOffsetY()F

    move-result v1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 374
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->sizeNotifierFrameLayout:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->measureKeyboardHeight()I

    move-result v1

    add-int/2addr v1, p2

    .line 375
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 376
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreMeasure:Z

    .line 377
    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    if-nez p1, :cond_3

    .line 380
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    .line 381
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 p1, 0x0

    .line 382
    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    .line 385
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 386
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v1, p2

    add-int/2addr v1, p1

    .line 388
    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    .line 389
    sget-object p2, Landroidx/recyclerview/widget/ChatListItemAnimator;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 390
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 396
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$4;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 407
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPreMeasure(II)V
    .locals 2

    .line 625
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-le v0, p1, :cond_0

    int-to-float p1, p2

    const/high16 p2, 0x40600000    # 3.5f

    div-float/2addr p1, p2

    float-to-int p1, p1

    goto :goto_0

    .line 628
    :cond_0
    div-int/lit8 p2, p2, 0x5

    mul-int/lit8 p1, p2, 0x2

    .line 630
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setAllowNestedScroll(Z)V

    const/4 p2, 0x0

    if-gez p1, :cond_1

    move p1, p2

    .line 635
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    int-to-float p1, p1

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_2

    .line 636
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    .line 637
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setOffsetY(F)V

    .line 638
    iput-boolean p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    :cond_2
    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;)V
    .locals 3

    .line 422
    iget p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 424
    :try_start_0
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    const/high16 v2, 0x41a00000    # 20.0f

    .line 425
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 426
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :catch_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetY(F)V

    .line 430
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->getWebView()Lorg/telegram/ui/web/BotWebViewContainer$MyWebView;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 433
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 434
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getBaseFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/web/BotWebViewContainer;->setParentActivity(Landroid/app/Activity;)V

    .line 436
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->otherItem:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->isBackButtonVisible()Z

    move-result p1

    if-nez p1, :cond_2

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->updateImageViewImageAnimated(Landroid/widget/ImageView;I)V

    :cond_2
    return-void
.end method

.method public onShown()V
    .locals 2

    .line 445
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->isPageLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-direct {p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->requestEnableKeyboard()V

    .line 449
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setSwipeOffsetAnimationDisallowed(Z)V

    .line 450
    new-instance v0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 658
    iget-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 661
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public requestWebView(IJJZILjava/lang/String;J)V
    .locals 4

    .line 494
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    .line 495
    iput-wide p2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->peerId:J

    .line 496
    iput-wide p4, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    .line 497
    iput-boolean p6, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->silent:Z

    .line 498
    iput p7, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->replyToMsgId:I

    .line 499
    iput-wide p9, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->monoforumTopicId:J

    .line 500
    iput-object p8, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->startCommand:Ljava/lang/String;

    .line 501
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 502
    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Lorg/telegram/messenger/MediaDataController;->canCreateAttachedMenuBotShortcut(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->addToHomeScreenItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 509
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->setBotUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->settingsItem:Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    invoke-virtual {v0, p1, p4, p5, v2}, Lorg/telegram/ui/web/BotWebViewContainer;->loadFlickerAndSettingsItem(IJLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 512
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;-><init>()V

    .line 513
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 514
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p4

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->bot:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 515
    iput-boolean p6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->silent:Z

    .line 516
    const-string p4, "android"

    iput-object p4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->platform:Ljava/lang/String;

    const-wide/16 p4, 0x0

    cmp-long p6, p2, p4

    if-gez p6, :cond_2

    .line 519
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p6

    neg-long p2, p2

    invoke-virtual {p6, p2, p3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 521
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz p2, :cond_2

    .line 523
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Peer;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->send_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 524
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit16 p2, p2, 0x2000

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_2
    if-eqz p8, :cond_3

    .line 529
    iput-object p8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->start_param:Ljava/lang/String;

    .line 530
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    :cond_3
    if-eqz p7, :cond_5

    .line 534
    invoke-static {p1}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance(I)Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object p2

    invoke-virtual {p2, p7}, Lorg/telegram/messenger/SendMessagesHelper;->createReplyInput(I)Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    move-result-object p2

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    cmp-long p3, p9, p4

    if-eqz p3, :cond_4

    .line 536
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p9, p10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 537
    iget-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    iget p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->flags:I

    .line 539
    :cond_4
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    goto :goto_1

    :cond_5
    cmp-long p2, p9, p4

    if-eqz p2, :cond_6

    .line 541
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputReplyToMonoForum;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->reply_to:Lorg/telegram/tgnet/TLRPC$InputReplyTo;

    .line 542
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p9, p10}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$InputReplyTo;->monoforum_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 543
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x1

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 546
    :cond_6
    :goto_1
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2}, Lorg/telegram/ui/bots/BotWebViewSheet;->makeThemeParams(Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 548
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->theme_params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 549
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 550
    iget p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_requestWebView;->flags:I

    .line 553
    :cond_7
    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;I)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 563
    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->webViewResultSent:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public scrollToTop()V
    .locals 3

    .line 666
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getOffsetY()F

    move-result v1

    neg-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v2}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->getTopActionBarOffsetY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->stickTo(F)V

    return-void
.end method

.method public setAllowSwipes(Z)V
    .locals 1

    .line 275
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;->setAllowSwipes(Z)V

    return-void
.end method

.method public setCustomActionBarBackground(I)V
    .locals 1

    const/4 v0, 0x1

    .line 333
    iput-boolean v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomActionBarBackground:Z

    .line 334
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customActionBarBackground:I

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 0

    .line 308
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->customBackground:I

    const/4 p1, 0x1

    .line 309
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->hasCustomBackground:Z

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V
    .locals 1

    .line 684
    iget-object v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->webViewContainer:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/BotWebViewContainer;->setDelegate(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public setMeasureOffsetY(I)V
    .locals 0

    .line 342
    iput p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->measureOffsetY:I

    .line 343
    iget-object p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->swipeContainer:Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$WebViewSwipeContainer;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNeedCloseConfirmation(Z)V
    .locals 0

    .line 271
    iput-boolean p1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->needCloseConfirmation:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 481
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 482
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->parentAlert:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public shouldHideBottomButtons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showJustAddedBulletin()V
    .locals 10

    .line 707
    iget v0, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    .line 709
    iget v1, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaDataController;->getAttachMenuBots()Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots;->bots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;

    .line 710
    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->bot_id:J

    iget-wide v8, p0, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;->botId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_2

    return-void

    .line 719
    :cond_2
    iget-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_side_menu:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBot;->show_in_attach_menu:Z

    if-eqz v4, :cond_3

    .line 720
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttachAndSide:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "BotAttachMenuShortcatAddedAttachAndSide"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 722
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedSide:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "BotAttachMenuShortcatAddedSide"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 724
    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->BotAttachMenuShortcatAddedAttach:I

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    const-string v0, "BotAttachMenuShortcatAddedAttach"

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 726
    :goto_1
    new-instance v1, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/bots/ChatAttachAlertBotWebViewLayout;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
