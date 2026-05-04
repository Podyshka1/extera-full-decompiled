.class Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockVideoCellState"
.end annotation


# instance fields
.field lastFrameBitmap:Landroid/graphics/Bitmap;

.field playFrom:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromPlayer(Lorg/telegram/messenger/video/VideoPlayerHolderBase;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
    .locals 3

    .line 6973
    new-instance v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    invoke-direct {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;-><init>()V

    .line 6974
    invoke-virtual {p0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    .line 6975
    iget-boolean p0, p0, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6976
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p0, v1, :cond_0

    .line 6977
    new-instance p0, Landroid/view/Surface;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6978
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, p1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 6979
    invoke-static {p0, p1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V

    .line 6980
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 6981
    iput-object p1, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    return-object v0

    .line 6983
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->-$$Nest$fgettextureView(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0
.end method

.method public static fromPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Landroid/view/SurfaceView;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
    .locals 2

    .line 7007
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    invoke-direct {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;-><init>()V

    .line 7008
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    if-eqz p2, :cond_0

    .line 7009
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    .line 7010
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 7011
    invoke-static {p2, p0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    .line 7012
    iput-object p0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-object p1
.end method

.method public static fromPlayer(Lorg/telegram/ui/Components/VideoPlayer;Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Landroid/view/TextureView;)Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;
    .locals 2

    .line 6990
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;

    invoke-direct {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;-><init>()V

    .line 6991
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->playFrom:J

    if-eqz p2, :cond_1

    .line 6992
    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6993
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    .line 6994
    new-instance p0, Landroid/view/Surface;

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6995
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 6996
    invoke-static {p0, p2}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V

    .line 6997
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 6998
    iput-object p2, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    return-object p1

    .line 7000
    :cond_0
    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCellState;->lastFrameBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object p1
.end method
