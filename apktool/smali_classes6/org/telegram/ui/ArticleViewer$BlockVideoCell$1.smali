.class Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;
.super Lorg/telegram/messenger/video/VideoPlayerHolderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->startVideoPlayer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V
    .locals 0

    .line 7462
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-direct {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;-><init>()V

    return-void
.end method


# virtual methods
.method public needRepeat()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRenderedFirstFrame()V
    .locals 5

    .line 7470
    invoke-super {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->onRenderedFirstFrame()V

    .line 7471
    iget-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7472
    iput-boolean v0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    .line 7473
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 7475
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7476
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetvideoStates(Lorg/telegram/ui/ArticleViewer;)Landroidx/collection/LongSparseArray;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgetcurrentBlock(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v1

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;->this$1:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v4, v3, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v4, v4, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-static {v4, v3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->fromPlayer(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setState(Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method
