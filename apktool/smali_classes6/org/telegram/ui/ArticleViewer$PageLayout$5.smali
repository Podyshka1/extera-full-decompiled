.class Lorg/telegram/ui/ArticleViewer$PageLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/web/BotWebViewContainer$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$PageLayout;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

.field final synthetic val$this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$PageLayout;Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 13055
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->val$this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic getBotSensors()Lorg/telegram/ui/bots/BotSensors;
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$getBotSensors(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Lorg/telegram/ui/bots/BotSensors;

    move-result-object v0

    return-object v0
.end method

.method public synthetic isClipboardAvailable()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$isClipboardAvailable(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)Z

    move-result v0

    return v0
.end method

.method public onCloseRequested(Ljava/lang/Runnable;)V
    .locals 3

    .line 13059
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_0

    .line 13060
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgoBack(Lorg/telegram/ui/ArticleViewer;)V

    :cond_0
    return-void
.end method

.method public onCloseToTabs()V
    .locals 2

    .line 13066
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13067
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismiss(Z)V

    :cond_0
    return-void
.end method

.method public synthetic onEmojiStatusGranted(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onEmojiStatusGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onEmojiStatusSet(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onEmojiStatusSet(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method

.method public synthetic onFullscreenRequested(ZZ)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onFullscreenRequested(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onInstantClose()V
    .locals 4

    .line 13073
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer$PageLayout;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v2, :cond_0

    .line 13074
    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$Sheet;->dismissInstant()V

    return-void

    .line 13075
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-ne v2, v0, :cond_1

    .line 13076
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mgoBack(Lorg/telegram/ui/ArticleViewer;)V

    :cond_1
    return-void
.end method

.method public synthetic onLocationGranted(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onLocationGranted(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onOpenBackFromTabs()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onOpenBackFromTabs(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public synthetic onOrientationLockChanged(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onOrientationLockChanged(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Z)V

    return-void
.end method

.method public synthetic onSendWebViewData(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onSendWebViewData(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/lang/String;)V

    return-void
.end method

.method public onSetBackButtonVisible(Z)V
    .locals 0

    return-void
.end method

.method public onSetSettingsButtonVisible(Z)V
    .locals 0

    return-void
.end method

.method public onSetupMainButton(ZZLjava/lang/String;JIIZZ)V
    .locals 0

    return-void
.end method

.method public onSetupSecondaryButton(ZZLjava/lang/String;JIIZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic onSharedTo(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onSharedTo(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onWebAppBackgroundChanged(ZI)V
    .locals 1

    .line 13102
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageLayout$5;->this$1:Lorg/telegram/ui/ArticleViewer$PageLayout;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ArticleViewer$PageLayout;->-$$Nest$msetWebBgColor(Lorg/telegram/ui/ArticleViewer$PageLayout;ZI)V

    return-void
.end method

.method public onWebAppExpand()V
    .locals 0

    return-void
.end method

.method public onWebAppOpenInvoice(Lorg/telegram/tgnet/TLRPC$InputInvoice;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    return-void
.end method

.method public synthetic onWebAppReady()V
    .locals 0

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppReady(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;)V

    return-void
.end method

.method public onWebAppSetActionBarColor(IIZ)V
    .locals 0

    return-void
.end method

.method public onWebAppSetBackgroundColor(I)V
    .locals 0

    return-void
.end method

.method public synthetic onWebAppSetNavigationBarColor(I)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/web/BotWebViewContainer$Delegate$-CC;->$default$onWebAppSetNavigationBarColor(Lorg/telegram/ui/web/BotWebViewContainer$Delegate;I)V

    return-void
.end method

.method public onWebAppSetupClosingBehavior(Z)V
    .locals 0

    return-void
.end method

.method public onWebAppSwipingBehavior(Z)V
    .locals 0

    return-void
.end method

.method public onWebAppSwitchInlineQuery(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    return-void
.end method
