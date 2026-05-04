.class Lorg/telegram/ui/web/BotWebViewContainer$5;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/web/BotWebViewContainer;->onEventReceived(Lorg/telegram/ui/web/BotWebViewContainer$BotWebViewProxy;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/web/BotWebViewContainer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/web/BotWebViewContainer;)V
    .locals 0

    .line 2274
    iput-object p1, p0, Lorg/telegram/ui/web/BotWebViewContainer$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 2275
    invoke-static {p1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/web/BotWebViewContainer;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 2283
    iget-object v0, p0, Lorg/telegram/ui/web/BotWebViewContainer$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {v0}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/web/BotWebViewContainer;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 2

    .line 2287
    new-instance v0, Lorg/telegram/ui/web/BotWebViewContainer$5$1;

    iget-object v1, p0, Lorg/telegram/ui/web/BotWebViewContainer$5;->this$0:Lorg/telegram/ui/web/BotWebViewContainer;

    invoke-static {v1}, Lorg/telegram/ui/web/BotWebViewContainer;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/web/BotWebViewContainer;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/web/BotWebViewContainer$5$1;-><init>(Lorg/telegram/ui/web/BotWebViewContainer$5;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 2278
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
