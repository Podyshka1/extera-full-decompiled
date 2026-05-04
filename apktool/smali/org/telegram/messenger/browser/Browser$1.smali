.class Lorg/telegram/messenger/browser/Browser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/browser/Browser;->bindCustomTabsService(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
    .locals 2

    .line 111
    invoke-static {p1}, Lorg/telegram/messenger/browser/Browser;->-$$Nest$sfputcustomTabsClient(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V

    .line 112
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->customTabs:Z

    if-eqz p1, :cond_0

    .line 113
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->-$$Nest$sfgetcustomTabsClient()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/browser/Browser;->-$$Nest$sfgetcustomTabsClient()Lorg/telegram/messenger/support/customtabs/CustomTabsClient;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/support/customtabs/CustomTabsClient;->warmup(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 117
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-static {v0}, Lorg/telegram/messenger/browser/Browser;->-$$Nest$sfputcustomTabsClient(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V

    return-void
.end method
