.class Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;
.super Landroid/media/MediaRouter2$RouteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRoute2Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RouteCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRoute2Provider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRoute2Provider;)V
    .locals 0

    .line 382
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-direct {p0}, Landroid/media/MediaRouter2$RouteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutesAdded(Ljava/util/List;)V
    .locals 0

    .line 386
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method

.method public onRoutesChanged(Ljava/util/List;)V
    .locals 0

    .line 396
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method

.method public onRoutesRemoved(Ljava/util/List;)V
    .locals 0

    .line 391
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRoute2Provider$RouteCallback;->this$0:Landroidx/mediarouter/media/MediaRoute2Provider;

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRoute2Provider;->refreshRoutes()V

    return-void
.end method
