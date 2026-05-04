.class Lorg/telegram/messenger/ApplicationLoader$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->postInitApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 225
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 229
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->-$$Nest$sfgetconnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    sput-object p1, Lorg/telegram/messenger/ApplicationLoader;->currentNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    :catchall_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isConnectionSlow()Z

    move-result p1

    const/4 p2, 0x0

    :goto_0
    const/16 v0, 0x10

    if-ge p2, v0, :cond_0

    .line 237
    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->checkConnection()V

    .line 238
    invoke-static {p2}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/FileLoader;->onNetworkChanged(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
