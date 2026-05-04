.class Lorg/telegram/messenger/ApplicationLoader$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ApplicationLoader;->ensureCurrentNetworkGet(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 509
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    const/4 p1, -0x1

    .line 512
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader;->-$$Nest$sfputlastKnownNetworkType(I)V

    .line 513
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/4 p1, -0x1

    .line 518
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader;->-$$Nest$sfputlastKnownNetworkType(I)V

    .line 519
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    const/4 p1, -0x1

    .line 524
    invoke-static {p1}, Lorg/telegram/messenger/ApplicationLoader;->-$$Nest$sfputlastKnownNetworkType(I)V

    .line 525
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->checkProxyForVpnState()V

    return-void
.end method
