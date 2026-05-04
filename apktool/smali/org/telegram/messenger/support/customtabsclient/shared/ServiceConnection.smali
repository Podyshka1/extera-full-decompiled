.class public Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;
.super Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# instance fields
.field private mConnectionCallback:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/telegram/messenger/support/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1, p2}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;->onServiceConnected(Lorg/telegram/messenger/support/customtabs/CustomTabsClient;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 44
    iget-object p1, p0, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnection;->mConnectionCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;

    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lorg/telegram/messenger/support/customtabsclient/shared/ServiceConnectionCallback;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
