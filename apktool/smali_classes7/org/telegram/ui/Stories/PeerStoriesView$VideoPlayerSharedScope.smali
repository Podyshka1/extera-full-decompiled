.class public Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/PeerStoriesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoPlayerSharedScope"
.end annotation


# instance fields
.field public firstFrameRendered:Z

.field public livePlayer:Lorg/telegram/ui/Stories/LivePlayer;

.field public player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

.field public renderView:Landroid/view/View;

.field public surfaceView:Landroid/view/SurfaceView;

.field public textureView:Landroid/view/TextureView;

.field public viewsToInvalidate:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    const/4 v0, 0x0

    .line 7798
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7799
    iget-object v1, p0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->viewsToInvalidate:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isBuffering()Z
    .locals 1

    .line 7804
    iget-object v0, p0, Lorg/telegram/ui/Stories/PeerStoriesView$VideoPlayerSharedScope;->player:Lorg/telegram/ui/Stories/StoryViewer$VideoPlayerHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
