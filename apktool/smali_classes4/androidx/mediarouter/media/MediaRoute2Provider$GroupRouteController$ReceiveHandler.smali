.class Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiveHandler"
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;)V
    .locals 0

    .line 692
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    .line 693
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 698
    iget v0, p1, Landroid/os/Message;->what:I

    .line 699
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 701
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 702
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    .line 704
    iget-object v3, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    iget-object v3, v3, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    if-nez v3, :cond_0

    .line 706
    const-string p1, "MR2Provider"

    const-string v0, "Pending callback not found for control request."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 709
    :cond_0
    iget-object v4, p0, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController$ReceiveHandler;->this$1:Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;

    iget-object v4, v4, Landroidx/mediarouter/media/MediaRoute2Provider$GroupRouteController;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 716
    :cond_2
    const-string v0, "error"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 717
    :goto_0
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, p1, v2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 713
    :cond_3
    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
