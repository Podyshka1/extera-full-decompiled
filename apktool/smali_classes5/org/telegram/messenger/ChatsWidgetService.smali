.class public Lorg/telegram/messenger/ChatsWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2

    .line 41
    new-instance v0, Lorg/telegram/messenger/ChatsRemoteViewsFactory;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/telegram/messenger/ChatsRemoteViewsFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
