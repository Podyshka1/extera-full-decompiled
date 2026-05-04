.class Landroidx/mediarouter/media/GlobalMediaRouter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/GlobalMediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/GlobalMediaRouter;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/GlobalMediaRouter;)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged()V
    .locals 2

    .line 104
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$000(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    .line 107
    invoke-static {v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$000(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient;

    .line 108
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-static {v1}, Landroidx/mediarouter/media/GlobalMediaRouter;->access$000(Landroidx/mediarouter/media/GlobalMediaRouter;)Landroid/support/v4/media/session/MediaSessionCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->addRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void

    .line 111
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/GlobalMediaRouter$1;->this$0:Landroidx/mediarouter/media/GlobalMediaRouter;

    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/GlobalMediaRouter;->removeRemoteControlClient(Landroid/media/RemoteControlClient;)V

    :cond_1
    return-void
.end method
