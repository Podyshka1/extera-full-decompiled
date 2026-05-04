.class public abstract Lorg/telegram/ui/Stories/recorder/PreviewView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;
    }
.end annotation


# instance fields
.field private allowCropping:Z

.field private allowRotation:Z

.field private allowWithSingleTouch:Z

.field private angle:F

.field private audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapDst:Landroid/graphics/Rect;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final bitmapSrc:Landroid/graphics/Rect;

.field private final blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

.field private collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

.field private cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

.field private cx:F

.field private cy:F

.field private doNotSpanRotation:Z

.field private draw:Z

.field public drawForThemeToggle:Z

.field private entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public filterTextureView:Landroid/view/TextureView;

.field private finalMatrix:Landroid/graphics/Matrix;

.field private finalSeekPosition:J

.field private gradientBottom:I

.field private final gradientPaint:Landroid/graphics/Paint;

.field private gradientTop:I

.field private h:F

.field public invalidateBlur:Ljava/lang/Runnable;

.field private final invertMatrix:Landroid/graphics/Matrix;

.field public isMuted:Z

.field private lastPos:J

.field private final lastTouch:Landroid/graphics/PointF;

.field private lastTouchDistance:F

.field private lastTouchRotation:D

.field private lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private moving:Z

.field private multitouch:Z

.field private onErrorListener:Ljava/lang/Runnable;

.field private onTap:Ljava/lang/Runnable;

.field private final pauseLinks:Ljava/util/HashSet;

.field private photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

.field private rotationDiff:F

.field private roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private roundPlayerHeight:I

.field private roundPlayerWidth:I

.field private roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

.field private seekedLastTime:J

.field private slowerSeek:Ljava/lang/Runnable;

.field private slowerSeekScheduled:Z

.field private final snapPaint:Landroid/graphics/Paint;

.field private snappedRotation:Z

.field private snappedToCenterAndScaled:Z

.field private tapTime:J

.field private textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

.field private final textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

.field private final thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field private thumbBitmap:Landroid/graphics/Bitmap;

.field private timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

.field private final touch:Landroid/graphics/PointF;

.field private touchMatrix:Landroid/graphics/Matrix;

.field private final transformBackMatrix:Landroid/graphics/Matrix;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final updateAudioProgressRunnable:Ljava/lang/Runnable;

.field private final updateProgressRunnable:Ljava/lang/Runnable;

.field private final updateRoundProgressRunnable:Ljava/lang/Runnable;

.field private final vertices:[F

.field private videoHeight:I

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private videoWidth:I

.field private w:F

.field private wallpaperDrawable:Landroid/graphics/drawable/Drawable;

.field private wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;


# direct methods
.method public static synthetic $r8$lambda$0IG3_3cErD2eiM7Frof0cm650Fw(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$7(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5V9rmXkiaEDit09trkr7GTfV98w(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$CdwQPudGZoFEkgY51W58TfqoWbc(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    return-void
.end method

.method public static synthetic $r8$lambda$FSW-QZqYS3VDNRF0xVhDK9oVE70(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$G62VkjFvkuZ4miCHU5hzCs_sObI(Lorg/telegram/ui/Stories/recorder/PreviewView;[Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$4([Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$GH_9lL1Tx1Krc4A89qkYNRCsW3I(Lorg/telegram/ui/Stories/recorder/PreviewView;I[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupGradient$6(I[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GrAyjDVfHpaNXQtElJZ3WXyjfkc(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YvX6qPvkc_kWlwMcyzka-Jt4bas(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;ILandroid/util/Pair;)V
    .locals 4

    if-nez p5, :cond_0

    goto :goto_0

    .line 2008
    :cond_0
    iget-object v0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 2009
    iget-object p5, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p5, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;

    iget-object p5, p5, Lorg/telegram/messenger/wallpaper/WallpaperBitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 2010
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getThemeId(I)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    if-eqz p5, :cond_1

    .line 2011
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    .line 2012
    invoke-virtual {p3, p0, p5}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(ILandroid/graphics/Bitmap;)V

    .line 2013
    invoke-virtual {p3, p4}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternColorFilter(I)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 2014
    invoke-virtual {p3, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$fW1tJ093VnwnLqk21bvzrBt4U3s(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$new$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$gtUDqzZcecXMSQuffPZSxUaUDy4(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 429
    invoke-interface {p0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oMIzzk-VsyTwP8oaTDeZfzJOXEg(Lorg/telegram/ui/Stories/recorder/PreviewView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$qPX0vvL9BrttsjUCPPw9nuDSrCU(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupVideoPlayer$9(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vTyITAeWgntpjJfLjvEqgXkFG-Y(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vzwAhpfFpreCXFiK_tN5sxGxuqE(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->lambda$setupImage$5(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xW4_UpPPqR_o185V2LHvtWoY7CI(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 5

    .line 406
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 407
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 409
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 410
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    int-to-float p2, p2

    .line 411
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, p2, p2, v2}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 412
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/4 p2, 0x0

    .line 414
    :goto_0
    array-length v0, p3

    if-ge p2, v0, :cond_1

    .line 415
    aget-object v0, p3, p2

    if-nez v0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 418
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    aget-object v2, p3, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    aget-object v3, p3, p2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 419
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 420
    aget-object v0, p3, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    aget-object v2, p3, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 421
    aget-object v0, p3, p2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v4, v4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 422
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 423
    aget-object v0, p3, p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 426
    invoke-static {p0, p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmap(Landroid/graphics/Bitmap;I)V

    .line 428
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda14;

    invoke-direct {p1, p4, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/Utilities$Callback;Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioPlayer(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbitmap(Lorg/telegram/ui/Stories/recorder/PreviewView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcollage(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetentry(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/StoryEntry;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetonErrorListener(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetroundPlayer(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetroundView(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/Paint/Views/RoundView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureView(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettextureViewHolder(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateAudioProgressRunnable(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateProgressRunnable(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetupdateRoundProgressRunnable(Lorg/telegram/ui/Stories/recorder/PreviewView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoHeight(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Stories/recorder/PreviewView;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoWidth(Lorg/telegram/ui/Stories/recorder/PreviewView;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputbitmap(Lorg/telegram/ui/Stories/recorder/PreviewView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputroundPlayerHeight(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayerHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputroundPlayerWidth(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayerWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoHeight(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoWidth(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mseekTo(Lorg/telegram/ui/Stories/recorder/PreviewView;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 9

    .line 108
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    .line 99
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snapPaint:Landroid/graphics/Paint;

    .line 341
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    .line 1142
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    .line 1170
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    .line 1188
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    .line 1322
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x15e

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1323
    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    .line 1326
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    .line 1329
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 1331
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    .line 1357
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 1363
    new-instance v0, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x140

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v2, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x0

    .line 1364
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    .line 1532
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invertMatrix:Landroid/graphics/Matrix;

    .line 1533
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformMatrix:Landroid/graphics/Matrix;

    .line 1534
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    .line 1609
    iput-boolean v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    .line 1614
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    .line 1615
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    .line 1620
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    .line 1803
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    .line 110
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    .line 111
    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 114
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, -0x1

    .line 115
    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x40400000    # 3.0f

    .line 116
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {v7, v2, v4, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private extractPointsData(Landroid/graphics/Matrix;)V
    .locals 7

    .line 1335
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 1340
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 1341
    invoke-virtual {p1, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v4

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    .line 1343
    aget v1, v0, v2

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    .line 1345
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v5, v5

    aput v5, v0, v4

    .line 1346
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    aput v1, v0, v2

    .line 1347
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v1, v0, v2

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    sub-float/2addr v1, v5

    float-to-double v5, v1

    aget v0, v0, v4

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    .line 1349
    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v6, v5, v4

    aget v5, v5, v2

    invoke-static {v0, v1, v6, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    mul-float/2addr v0, v3

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->w:F

    .line 1351
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    aput v5, v0, v4

    .line 1352
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v1, v1

    aput v1, v0, v2

    .line 1353
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1354
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->vertices:[F

    aget v4, v1, v4

    aget v1, v1, v2

    invoke-static {p1, v0, v4, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result p1

    mul-float/2addr p1, v3

    iput p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->h:F

    return-void
.end method

.method public static getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-ltz v0, :cond_1

    .line 1835
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getUserFull(J)Lorg/telegram/tgnet/TLRPC$UserFull;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1837
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$UserFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    goto :goto_0

    .line 1840
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1842
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->wallpaper:Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 1845
    :cond_2
    :goto_0
    invoke-static {p0, p1, v1, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawable(Landroid/graphics/drawable/Drawable;ILorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p2, :cond_0

    .line 1849
    invoke-static {p2}, Lorg/telegram/messenger/ChatThemeController;->getWallpaperEmoticon(Lorg/telegram/tgnet/TLRPC$WallPaper;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1850
    invoke-static {p0, p2, p3}, Lorg/telegram/ui/ChatBackgroundDrawable;->getOrCreate(Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$WallPaper;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    if-eqz p2, :cond_1

    .line 1854
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    if-eqz v0, :cond_1

    .line 1855
    invoke-static {p1}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->emoticon:Ljava/lang/String;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/ChatThemeController;->getTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 1858
    invoke-static {p1, p2, v0, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 1861
    :cond_2
    sget-object p1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string p2, "themeconfig"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1862
    const-string p2, "lastDayTheme"

    const-string v1, "Blue"

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1863
    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p2, v1

    .line 1866
    :cond_4
    const-string v2, "lastDarkTheme"

    const-string v3, "Dark Blue"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1867
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    move-object p1, v3

    .line 1870
    :cond_6
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getActiveTheme()Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v2

    .line 1871
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1872
    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->isDark()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "Night"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v1, p2

    goto :goto_3

    :cond_8
    :goto_2
    move-object v3, p1

    goto :goto_3

    :cond_9
    move-object v3, p1

    goto :goto_1

    :goto_3
    if-eqz p3, :cond_a

    .line 1879
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    goto :goto_4

    .line 1881
    :cond_a
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getTheme(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object p1

    .line 1883
    :goto_4
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    const/4 p3, 0x1

    .line 1884
    new-array v1, p3, [Ljava/lang/String;

    .line 1886
    iget-object v2, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->assetName:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1887
    invoke-static {p0, v2, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    goto :goto_5

    .line 1889
    :cond_b
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->pathToFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, p0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemeFileValues(Ljava/io/File;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1891
    :goto_5
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getDefaultColors()[I

    move-result-object v2

    if-eqz v2, :cond_c

    move v3, v0

    .line 1893
    :goto_6
    array-length v4, v2

    if-ge v3, v4, :cond_c

    .line 1894
    aget v4, v2, v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1897
    :cond_c
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;->getAccent(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1899
    invoke-virtual {v2, p0, p2}, Lorg/telegram/ui/ActionBar/Theme$ThemeAccent;->fillAccentColors(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    goto :goto_8

    :cond_d
    if-eqz p0, :cond_e

    move v2, v0

    .line 1901
    :goto_7
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 1902
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1905
    :cond_e
    :goto_8
    aget-object p0, v1, v0

    invoke-static {p1, p2, p0, v0, p3}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p0

    .line 1906
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->themedWallpaper:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1966
    invoke-static {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILjava/lang/String;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1970
    invoke-static {p0}, Lorg/telegram/messenger/ChatThemeController;->getInstance(I)Lorg/telegram/messenger/ChatThemeController;

    move-result-object v0

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/theme/ThemeKey;->ofEmoticon(Ljava/lang/String;)Lorg/telegram/ui/ActionBar/theme/ThemeKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatThemeController;->getTheme(Lorg/telegram/ui/ActionBar/theme/ThemeKey;)Lorg/telegram/ui/ActionBar/EmojiThemes;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1972
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->getCachedWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1974
    invoke-static {p0, p1, v0, p2, p3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 1978
    invoke-static {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundDrawableFromTheme(ILorg/telegram/ui/ActionBar/EmojiThemes;IZZ)Landroid/graphics/drawable/Drawable;
    .locals 10

    .line 1983
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/EmojiThemes;->isAnyStub()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    invoke-static {p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getDefaultThemeInfo(Z)Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;

    move-result-object v0

    .line 1985
    invoke-virtual {p1, p0, p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1986
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaperLink(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1987
    invoke-static {v0, p0, p1, p2, v1}, Lorg/telegram/ui/ActionBar/Theme;->createBackgroundDrawable(Lorg/telegram/ui/ActionBar/Theme$ThemeInfo;Landroid/util/SparseIntArray;Ljava/lang/String;IZ)Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;

    move-result-object p0

    .line 1988
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/Theme$BackgroundDrawableSettings;->wallpaper:Landroid/graphics/drawable/Drawable;

    .line 1989
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p1, -0x1000000

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    .line 1991
    :cond_0
    invoke-virtual {p1, p0, p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getPreviewColors(II)Landroid/util/SparseIntArray;

    move-result-object p0

    .line 1992
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 1993
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to1:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 1994
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to2:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v6

    .line 1995
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_wallpaper_gradient_to3:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    .line 1997
    new-instance v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-direct {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;-><init>()V

    .line 1998
    iput-boolean p4, v3, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->isPreview:Z

    .line 1999
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/EmojiThemes;->getWallpaper(I)Lorg/telegram/tgnet/TLRPC$WallPaper;

    move-result-object p0

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    iget p0, p0, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->intensity:I

    invoke-virtual {v3, p0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPatternBitmap(I)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2000
    invoke-virtual/range {v3 .. v9}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setColors(IIIIIZ)V

    .line 2001
    invoke-virtual {v3, p2}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->setPhase(I)V

    .line 2002
    invoke-virtual {v3}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternColor()I

    move-result v5

    .line 2004
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;

    move-object v4, v3

    move v3, p3

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/EmojiThemes;ZZLorg/telegram/ui/Components/MotionBackgroundDrawable;I)V

    move-object v3, v4

    invoke-virtual {p1, p3, v0}, Lorg/telegram/ui/ActionBar/EmojiThemes;->loadWallpaper(ILorg/telegram/tgnet/ResultCallback;)V

    return-object v3
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 342
    iget-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    const/4 v0, 0x0

    .line 343
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    return-void
.end method

.method private synthetic lambda$new$10()V
    .locals 7

    .line 1143
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 1147
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 1148
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    long-to-float v2, v0

    .line 1149
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v3

    long-to-float v3, v3

    div-float/2addr v2, v3

    .line 1150
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/TimelineView;->isDragging()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    cmpg-float v5, v2, v5

    if-ltz v5, :cond_1

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v5

    const-wide/16 v5, 0x1f4

    cmp-long v2, v2, v5

    if-lez v2, :cond_2

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 1152
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1153
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 1154
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    move-wide v0, v1

    goto :goto_2

    .line 1156
    :cond_2
    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_3

    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 1157
    iget-wide v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    cmp-long v2, v0, v5

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    .line 1159
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    goto :goto_3

    .line 1161
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 1163
    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1164
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1165
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    const/high16 v3, 0x447a0000    # 1000.0f

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v3, v4

    float-to-long v3, v3

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1167
    :cond_6
    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastPos:J

    :cond_7
    :goto_4
    return-void
.end method

.method private synthetic lambda$new$11()V
    .locals 8

    .line 1171
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1175
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 1176
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    long-to-float v3, v0

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v7, v5

    mul-float/2addr v4, v7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    long-to-float v4, v5

    mul-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 1178
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v3

    mul-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    move-wide v0, v1

    .line 1180
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 1182
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1183
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1184
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioProgressRunnable:Ljava/lang/Runnable;

    const/high16 v1, 0x447a0000    # 1000.0f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$new$12()V
    .locals 8

    .line 1189
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1193
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    .line 1194
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v2, :cond_2

    long-to-float v3, v0

    iget v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v5, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v7, v5

    mul-float/2addr v4, v7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_1

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    long-to-float v4, v5

    mul-float/2addr v2, v4

    cmpl-float v2, v3, v2

    if-lez v2, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 1196
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget-wide v3, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v1, v3

    mul-float/2addr v2, v1

    float-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    const/4 v0, 0x1

    .line 1197
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    move-wide v0, v1

    .line 1199
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 1201
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1202
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1203
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundProgressRunnable:Ljava/lang/Runnable;

    const/high16 v1, 0x447a0000    # 1000.0f

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v1, v2

    float-to-long v1, v1

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic lambda$setupGradient$6(I[I)V
    .locals 9

    .line 736
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 737
    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 739
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 741
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    .line 742
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 744
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    .line 745
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupGradient$7(I[I)V
    .locals 9

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v1, 0x0

    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    const/4 v1, 0x1

    .line 751
    aget v1, p2, v1

    iput v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    iput v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/LinearGradient;

    int-to-float v5, p1

    const/4 p1, 0x2

    new-array v7, p1, [F

    fill-array-data v7, :array_0

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 753
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 755
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_0

    .line 756
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 758
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz p1, :cond_1

    .line 759
    iget p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$setupImage$3(Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1

    .line 683
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_1

    .line 684
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 685
    invoke-static {p1, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 688
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p4, 0x1

    invoke-static {p1, p2, p3, p4, p5}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 690
    :catchall_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    return-object p1

    .line 695
    :cond_1
    invoke-static {p4, p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$setupImage$4([Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V
    .locals 2

    .line 702
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 705
    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1

    .line 706
    iget-boolean v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDraft:Z

    if-nez v1, :cond_1

    iget-boolean v1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 707
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 708
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 709
    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 711
    :cond_1
    aget-boolean p1, p3, v0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 712
    invoke-virtual {p1}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    .line 713
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    const p3, 0x3e4ccccd    # 0.2f

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p3, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->buildBitmap(FLandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    .line 714
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invalidateBlur:Ljava/lang/Runnable;

    if-eqz p1, :cond_2

    .line 715
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 718
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setupImage$5(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 13

    const/4 v0, 0x1

    .line 644
    new-array v1, v0, [Landroid/graphics/Bitmap;

    .line 645
    new-array v2, v0, [Z

    const/4 v3, 0x0

    aput-boolean v0, v2, v3

    if-eqz p1, :cond_7

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    mul-int/lit8 v4, v0, 0x10

    int-to-float v4, v4

    const/high16 v5, 0x41100000    # 9.0f

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 650
    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_4

    .line 651
    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->blurredVideoThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    .line 652
    aput-object v5, v1, v3

    .line 654
    :cond_1
    aget-object v5, v1, v3

    if-nez v5, :cond_4

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-eqz v5, :cond_4

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 655
    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 657
    aget-object v7, v1, v3

    if-nez v7, :cond_3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    .line 660
    :try_start_0
    iget-boolean v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v7, :cond_2

    .line 661
    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_1

    .line 663
    :cond_2
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 665
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/util/Size;

    invoke-direct {v9, v0, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v9, v10}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    move-wide v10, v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, -0x1

    goto :goto_2

    :goto_3
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-gez v5, :cond_5

    .line 670
    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v5, :cond_5

    iget-object v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->thumbPath:Ljava/lang/String;

    if-nez v5, :cond_5

    .line 671
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 674
    :cond_5
    aget-object v5, v1, v3

    if-nez v5, :cond_7

    .line 675
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_6

    return-void

    .line 679
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 682
    new-instance v7, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda12;

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;JLjava/lang/String;)V

    invoke-static {v7, v0, v4, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getScaledBitmap(Lorg/telegram/ui/Stories/recorder/StoryEntry$DecodeBitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object p1

    aput-object p1, v1, v3

    .line 698
    aput-boolean v3, v2, v3

    goto :goto_4

    :cond_7
    move-object v8, p0

    move-object v9, p1

    .line 701
    :goto_4
    new-instance p1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0, v1, v9, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;[Landroid/graphics/Bitmap;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$8()V
    .locals 1

    .line 790
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 793
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupVideoPlayer$9(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V
    .locals 1

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setHDRInfo(Lorg/telegram/ui/Stories/recorder/StoryEntry$HDRInfo;)V

    :cond_0
    return-void
.end method

.method private seekTo(J)V
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(JZ)V

    return-void
.end method

.method private setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 726
    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->collageContent:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setCollage(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private setupGradient()V
    .locals 10

    .line 731
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 733
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-eqz v2, :cond_4

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-nez v1, :cond_2

    goto :goto_1

    .line 766
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/LinearGradient;

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    iput v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    iput v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    filled-new-array {v3, v0}, [I

    move-result-object v7

    const/4 v0, 0x2

    new-array v8, v0, [F

    fill-array-data v8, :array_0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 767
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_3

    .line 768
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurGradient(II)V

    .line 770
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    if-eqz v0, :cond_7

    .line 771
    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    goto :goto_2

    .line 734
    :cond_4
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 735
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v2, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 748
    :cond_5
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 749
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;I)V

    invoke-static {v2, v1, v2, v3}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_2

    .line 763
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 775
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 2

    .line 643
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tapTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1740
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    .line 1743
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1745
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1747
    :cond_1
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    return v1

    .line 1749
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 1750
    iput-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTime:J

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private touchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1631
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 1634
    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_2

    .line 1638
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 1639
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v7, v9

    div-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/PointF;->y:F

    .line 1640
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v6

    .line 1641
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    goto :goto_1

    .line 1643
    :cond_2
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->x:F

    .line 1644
    iget-object v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, v6, Landroid/graphics/PointF;->y:F

    const-wide/16 v7, 0x0

    move v6, v5

    .line 1646
    :goto_1
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    if-eq v9, v2, :cond_3

    .line 1647
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v11, v10, Landroid/graphics/PointF;->x:F

    iput v11, v9, Landroid/graphics/PointF;->x:F

    .line 1648
    iget v10, v10, Landroid/graphics/PointF;->y:F

    iput v10, v9, Landroid/graphics/PointF;->y:F

    .line 1649
    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 1650
    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    .line 1651
    iput-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->multitouch:Z

    .line 1653
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v2, :cond_4

    return v3

    .line 1657
    :cond_4
    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v2, v9

    .line 1658
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_5

    .line 1659
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1660
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1661
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedToCenterAndScaled:Z

    .line 1662
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    .line 1663
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1664
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    .line 1665
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    iget-object v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v10, v10, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1667
    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_12

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    if-eqz v9, :cond_12

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v9, :cond_12

    .line 1668
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v10, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v2

    iget v9, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v9, v2

    .line 1669
    iget-object v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget v12, v11, Landroid/graphics/PointF;->x:F

    mul-float/2addr v12, v2

    iget v11, v11, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, v2

    .line 1670
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/high16 v13, 0x42b40000    # 90.0f

    if-le v2, v4, :cond_d

    .line 1671
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    cmpl-float v14, v2, v5

    if-eqz v14, :cond_6

    div-float v2, v6, v2

    .line 1673
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v14, v2, v2, v10, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1675
    :cond_6
    iget-wide v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    sub-double v14, v7, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v14

    double-to-float v2, v14

    .line 1676
    iget v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    add-float/2addr v14, v2

    iput v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1677
    iget-boolean v15, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v15, :cond_a

    .line 1678
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const/high16 v15, 0x41a00000    # 20.0f

    cmpl-float v14, v14, v15

    if-lez v14, :cond_7

    move v14, v4

    goto :goto_2

    :cond_7
    move v14, v3

    :goto_2
    iput-boolean v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-nez v14, :cond_9

    .line 1680
    iget-object v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v14}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 1681
    iget v14, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    move/from16 v16, v13

    iget v13, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v14, v13

    cmpl-float v13, v14, v15

    if-lez v13, :cond_8

    move v13, v4

    goto :goto_3

    :cond_8
    move v13, v3

    :goto_3
    iput-boolean v13, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    goto :goto_4

    :cond_9
    move/from16 v16, v13

    .line 1683
    :goto_4
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v13, :cond_b

    .line 1684
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    .line 1685
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_5

    :cond_a
    move/from16 v16, v13

    .line 1688
    :cond_b
    :goto_5
    iget-boolean v13, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v13, :cond_c

    .line 1689
    iget-object v13, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v13, v2, v10, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1691
    :cond_c
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    goto :goto_6

    :cond_d
    move/from16 v16, v13

    .line 1693
    :goto_6
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v4, :cond_e

    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    if-eqz v2, :cond_f

    .line 1694
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    sub-float/2addr v10, v12

    sub-float/2addr v9, v11

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1696
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1697
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1698
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->extractPointsData(Landroid/graphics/Matrix;)V

    .line 1699
    iget v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    div-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    iget v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->angle:F

    sub-float/2addr v2, v9

    .line 1700
    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    if-eqz v9, :cond_11

    iget-boolean v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->doNotSpanRotation:Z

    if-nez v9, :cond_11

    .line 1701
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40600000    # 3.5f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_10

    .line 1702
    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    iget v10, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cx:F

    iget v11, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cy:F

    invoke-virtual {v9, v2, v10, v11}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1703
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    if-nez v2, :cond_11

    .line 1704
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->vibrateCursor(Landroid/view/View;)V

    .line 1705
    iput-boolean v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    goto :goto_7

    .line 1708
    :cond_10
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1712
    :cond_11
    :goto_7
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    iget-object v9, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v9}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1713
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-boolean v4, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    .line 1714
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 1715
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1717
    :cond_12
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v4, :cond_13

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v9, 0x3

    if-ne v2, v9, :cond_15

    .line 1718
    :cond_13
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-gt v1, v4, :cond_14

    .line 1719
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowWithSingleTouch:Z

    .line 1720
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedTop(Z)V

    .line 1721
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onEntityDraggedBottom(Z)V

    .line 1723
    :cond_14
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->moving:Z

    .line 1724
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowRotation:Z

    .line 1725
    iput v5, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->rotationDiff:F

    .line 1727
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedToCenterAndScaled:Z

    .line 1728
    iput-boolean v3, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->snappedRotation:Z

    .line 1729
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1731
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouch:Landroid/graphics/PointF;

    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->touch:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v1, Landroid/graphics/PointF;->x:F

    .line 1732
    iget v2, v2, Landroid/graphics/PointF;->y:F

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 1733
    iput v6, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchDistance:F

    .line 1734
    iput-wide v7, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastTouchRotation:D

    return v4
.end method


# virtual methods
.method public abstract additionalTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public applyMatrix()V
    .locals 4

    .line 1536
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_4

    iget-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v1, :cond_3

    .line 1540
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 1541
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 1542
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    if-gez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoWidth:I

    :cond_1
    int-to-float v3, v3

    mul-float/2addr v1, v3

    .line 1543
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    if-gez v3, :cond_2

    iget v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoHeight:I

    :cond_2
    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1541
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1545
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    .line 1546
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1547
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 1545
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1549
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 1551
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->setTransform(Landroid/graphics/Matrix;)V

    .line 1552
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1554
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_0
    return-void
.end method

.method public attachRoundView(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 1

    .line 1097
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz p1, :cond_0

    .line 1098
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 1099
    iget-object p1, p1, Lorg/telegram/ui/Components/Paint/Views/RoundView;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public checkVolumes()V
    .locals 5

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 1309
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->muted:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 1311
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_6

    .line 1312
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v3, :cond_5

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 1314
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_9

    .line 1315
    iget-boolean v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_8

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V

    .line 1317
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_a

    .line 1318
    iget-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setMuted(Z)V

    :cond_a
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1396
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1397
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CropEditor;->contentView:Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/CropEditor$ContentView;->drawImage(Landroid/graphics/Canvas;Z)V

    goto/16 :goto_1

    .line 1399
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    .line 1401
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v7, v0, v2

    if-lez v7, :cond_5

    .line 1402
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1403
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v9, v9, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1404
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1405
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v8, :cond_4

    .line 1406
    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1407
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1408
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v9, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1409
    iget v10, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v11, v7, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x5a

    rem-int/lit8 v10, v10, 0x2

    if-ne v10, v1, :cond_2

    move v13, v9

    move v9, v8

    move v8, v13

    :cond_2
    neg-int v10, v8

    int-to-float v10, v10

    .line 1413
    iget v11, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v10, v11

    div-float/2addr v10, v6

    neg-int v12, v9

    int-to-float v12, v12

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v12, v7

    div-float/2addr v12, v6

    int-to-float v8, v8

    mul-float/2addr v11, v8

    div-float/2addr v11, v6

    int-to-float v9, v9

    mul-float/2addr v7, v9

    div-float/2addr v7, v6

    invoke-virtual {p1, v10, v12, v11, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1417
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1418
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v10, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v10, v8

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v7, v9

    invoke-virtual {p1, v10, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1419
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v8, v7, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v7, v7, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v7, v7

    add-float/2addr v8, v7

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1420
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v7, v7, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v7, :cond_3

    .line 1421
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1423
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v7, v7

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1424
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v8, v8

    int-to-float v8, v8

    div-float/2addr v8, v6

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v7, v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1426
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1427
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1428
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->thumbBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v2, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1429
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1431
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 1432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1433
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v8, v8, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p1, v2, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1434
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1435
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v7, :cond_8

    .line 1436
    iget v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v7, v7

    div-float/2addr v7, v6

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    invoke-virtual {p1, v7, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1437
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v7, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v8, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1439
    iget v9, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v10, v2, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-ne v9, v1, :cond_6

    move v13, v8

    move v8, v7

    move v7, v13

    :cond_6
    neg-int v1, v7

    int-to-float v1, v1

    .line 1443
    iget v9, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v1, v9

    div-float/2addr v1, v6

    neg-int v10, v8

    int-to-float v10, v10

    iget v2, v2, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v10, v2

    div-float/2addr v10, v6

    int-to-float v7, v7

    mul-float/2addr v9, v7

    div-float/2addr v9, v6

    int-to-float v8, v8

    mul-float/2addr v2, v8

    div-float/2addr v2, v6

    invoke-virtual {p1, v1, v10, v9, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1447
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropScale:F

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1448
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPx:F

    mul-float/2addr v2, v7

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->cropPy:F

    mul-float/2addr v1, v8

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1449
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v2, v1, Lorg/telegram/messenger/MediaController$CropState;->cropRotate:F

    iget v1, v1, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1450
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget-boolean v1, v1, Lorg/telegram/messenger/MediaController$CropState;->mirrored:Z

    if-eqz v1, :cond_7

    .line 1451
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1453
    :cond_7
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1454
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1456
    :cond_8
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    sub-float/2addr v5, v0

    mul-float/2addr v5, v2

    float-to-int v0, v5

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1457
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1458
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1459
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapDst:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1463
    :cond_9
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1771
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1772
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->additionalTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1773
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->tapTouchEvent(Landroid/view/MotionEvent;)Z

    if-eqz v0, :cond_3

    .line 1775
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-gt v0, v2, :cond_2

    .line 1776
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_2
    return v2

    .line 1780
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBackground(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 1368
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1369
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 1370
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v3, 0x41400000    # 12.0f

    .line 1371
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v4, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 1372
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1373
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1376
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    .line 1377
    check-cast v0, Lorg/telegram/ui/Components/MotionBackgroundDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MotionBackgroundDrawable;->getPatternBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1379
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v1

    .line 1380
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_3

    cmpg-float v4, v1, v3

    if-gez v4, :cond_3

    sub-float/2addr v3, v1

    mul-float/2addr v3, v2

    float-to-int v3, v3

    .line 1381
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1382
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {p1, v0, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 1384
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->drawBackgroundDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 1386
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->drawForThemeToggle:Z

    if-eqz v0, :cond_4

    .line 1387
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void

    .line 1390
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 8

    .line 993
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eq p2, v0, :cond_1

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-ne p2, v0, :cond_4

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v0, :cond_4

    .line 997
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 999
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1000
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1001
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    if-eqz v1, :cond_3

    .line 1002
    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1003
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1004
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    iget v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 1005
    iget v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->crop:Lorg/telegram/messenger/MediaController$CropState;

    iget v5, v0, Lorg/telegram/messenger/MediaController$CropState;->transformRotation:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x5a

    rem-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v7, v3

    move v3, v1

    move v1, v7

    :cond_2
    neg-int v4, v1

    int-to-float v4, v4

    .line 1009
    iget v5, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPw:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v2

    neg-int v6, v3

    int-to-float v6, v6

    iget v0, v0, Lorg/telegram/messenger/MediaController$CropState;->cropPh:F

    mul-float/2addr v6, v0

    div-float/2addr v6, v2

    int-to-float v1, v1

    mul-float/2addr v1, v5

    div-float/2addr v1, v2

    int-to-float v3, v3

    mul-float/2addr v3, v0

    div-float/2addr v3, v2

    invoke-virtual {p1, v4, v6, v1, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1013
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1014
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1016
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->invertMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1017
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v3, v3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1019
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 1023
    :cond_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public drawContent(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1477
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v0, :cond_0

    .line 1478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1480
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1481
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->transformBackMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 1482
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 1484
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_1

    .line 1486
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1487
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1489
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getContentHeight()I
    .locals 1

    .line 1472
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1473
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .line 1467
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1468
    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    return v0
.end method

.method public varargs getCoverBitmap(Lorg/telegram/messenger/Utilities$Callback;[Landroid/view/View;)V
    .locals 9

    const/high16 v0, 0x41d00000    # 26.0f

    .line 383
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, v1

    float-to-int v2, v0

    const v0, 0x41f2a3d7    # 30.33f

    .line 384
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const/high16 v0, 0x40800000    # 4.0f

    .line 385
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v0, v1

    float-to-int v4, v0

    .line 387
    array-length v0, p2

    new-array v5, v0, [Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 388
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_4

    .line 389
    aget-object v1, p2, v0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-ltz v1, :cond_3

    aget-object v1, p2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 390
    :cond_0
    aget-object v1, p2, v0

    if-ne v1, p0, :cond_1

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v6, :cond_1

    .line 391
    invoke-virtual {v6}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_1

    .line 392
    :cond_1
    instance-of v6, v1, Landroid/view/TextureView;

    if-eqz v6, :cond_2

    .line 393
    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    goto :goto_1

    .line 394
    :cond_2
    instance-of v6, v1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 395
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    aput-object v1, v5, v0

    .line 396
    new-instance v1, Landroid/graphics/Canvas;

    aget-object v6, v5, v0

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 397
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v2

    .line 398
    aget-object v7, p2, v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    int-to-float v7, v3

    aget-object v8, p2, v0

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 399
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 400
    aget-object v6, p2, v0

    invoke-virtual {v6, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 401
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    :cond_4
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda11;

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda11;-><init>(III[Landroid/graphics/Bitmap;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 375
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 376
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    .line 377
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 4

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fileDuration:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->orientation:I

    return v0
.end method

.method public getPaintSize()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1510
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    .line 1511
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x438

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x780

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 1513
    :cond_0
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->resultHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1517
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTextureView()Lorg/telegram/ui/Components/VideoEditTextureView;
    .locals 1

    .line 1502
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    return-object v0
.end method

.method protected abstract invalidateTextureViewHolder()V
.end method

.method public isCollage()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 1823
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    const/16 v1, -0x26fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public mute(Z)V
    .locals 0

    .line 1304
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->isMuted:Z

    .line 1305
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    return-void
.end method

.method public abstract onAudioChanged()V
.end method

.method public abstract onEntityDraggedBottom(Z)V
.end method

.method public abstract onEntityDraggedTop(Z)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1762
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    if-eqz v0, :cond_0

    .line 1763
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->touchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 1766
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public abstract onRoundRemove()V
.end method

.method public abstract onRoundSelectChange(Z)V
.end method

.method public play(Z)V
    .locals 1

    xor-int/lit8 p1, p1, 0x1

    const/16 v0, -0x26fe

    .line 1826
    invoke-virtual {p0, v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    return-void
.end method

.method public preset(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    .line 182
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 184
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 185
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 188
    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void

    .line 191
    :cond_0
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_3

    .line 192
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 193
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez v2, :cond_2

    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    new-instance v2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 194
    :cond_2
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    goto :goto_1

    .line 199
    :cond_3
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 200
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    .line 202
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 203
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 204
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 205
    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void
.end method

.method public release()J
    .locals 5

    .line 1104
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1106
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1107
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_1

    .line 1111
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 1112
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1113
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1114
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    .line 1116
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    .line 1117
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 1118
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1120
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_2
    return-wide v3
.end method

.method public seek(J)V
    .locals 2

    .line 435
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekTo(J)V

    .line 436
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 437
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    :cond_0
    return-void
.end method

.method public seekTo(JZ)V
    .locals 5

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->seekTo(JZ)V

    goto :goto_0

    .line 354
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    .line 355
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    goto :goto_0

    .line 356
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 357
    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(JZ)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 359
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 360
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    if-eqz p3, :cond_6

    .line 362
    iget-boolean p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    if-eqz p3, :cond_4

    iget-wide v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    sub-long/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1c2

    cmp-long p3, v1, v3

    if-lez p3, :cond_5

    .line 363
    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeekScheduled:Z

    .line 364
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 365
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->slowerSeek:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3c

    invoke-static {p3, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 367
    :cond_5
    iput-wide p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->finalSeekPosition:J

    :cond_6
    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 132
    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public set(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 3

    .line 136
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 139
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 140
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 141
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 142
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 143
    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 144
    invoke-virtual {p0, v1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 149
    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 150
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_1

    .line 151
    :cond_1
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v2, :cond_4

    .line 152
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 153
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 154
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 155
    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientTopColor:I

    if-nez p2, :cond_3

    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->gradientBottomColor:I

    if-eqz p2, :cond_2

    goto :goto_0

    .line 158
    :cond_2
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupGradient(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 156
    :cond_3
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    goto :goto_1

    .line 161
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupCollage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    const-wide/16 p3, 0x0

    .line 162
    invoke-virtual {p0, v1, p2, p3, p4}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V

    .line 163
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupImage(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 164
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupGradient()V

    .line 166
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 167
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 168
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    .line 169
    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    return-void
.end method

.method public setAllowCropping(Z)V
    .locals 0

    .line 1611
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->allowCropping:Z

    return-void
.end method

.method public setCollageView(Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    return-void
.end method

.method public setCropEditorDrawing(Lorg/telegram/ui/Stories/recorder/CropEditor;)V
    .locals 1

    .line 2029
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    if-eq v0, p1, :cond_0

    .line 2030
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->cropEditorDrawing:Lorg/telegram/ui/Stories/recorder/CropEditor;

    .line 2031
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDraw(Z)V
    .locals 0

    .line 1359
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->draw:Z

    .line 1360
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setFilterTextureView(Landroid/view/TextureView;Lorg/telegram/ui/Components/PhotoFilterView;)V
    .locals 1

    .line 1126
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 1127
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1128
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    .line 1130
    :cond_0
    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->photoFilterView:Lorg/telegram/ui/Components/PhotoFilterView;

    .line 1131
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_1

    .line 1133
    iget p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientTop:I

    iget v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->gradientBottom:I

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/PhotoFilterView;->updateUiBlurGradient(II)V

    .line 1135
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->filterTextureView:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 1136
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setOnTapListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 1757
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onTap:Ljava/lang/Runnable;

    return-void
.end method

.method public setVideoTimelineView(Lorg/telegram/ui/Stories/recorder/TimelineView;)V
    .locals 1

    .line 442
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_0

    .line 444
    new-instance v0, Lorg/telegram/ui/Stories/recorder/PreviewView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$2;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setDelegate(Lorg/telegram/ui/Stories/recorder/TimelineView$TimelineDelegate;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1526
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 1528
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->set(Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    :cond_0
    return-void
.end method

.method public setupAudio(Lorg/telegram/messenger/MessageObject;Z)V
    .locals 10

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 272
    iput-boolean v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->editedMedia:Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_f

    .line 273
    iget-object v7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v7, :cond_0

    goto/16 :goto_7

    .line 281
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 282
    iget-object v7, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_1

    .line 283
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    iput-object p1, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    goto :goto_0

    .line 285
    :cond_1
    iget v7, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v7, v0, v6, v8, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 286
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 287
    :cond_2
    iget p1, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    invoke-virtual {p1, v0, v6, v1, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;ZZ)Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 288
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_6

    .line 297
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 299
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 301
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 302
    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 304
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_5
    :goto_1
    if-ge v8, v0, :cond_8

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v8, v8, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 305
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v7, :cond_7

    .line 306
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 307
    iget-object p1, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 310
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:D

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    iput-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    goto :goto_2

    .line 312
    :cond_7
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    if-eqz v7, :cond_5

    .line 313
    iget-object v7, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->file_name:Ljava/lang/String;

    iput-object v6, v7, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    goto :goto_1

    .line 317
    :cond_8
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-wide v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 318
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_9

    .line 319
    iget v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v0, v6

    float-to-long v6, v0

    iput-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    .line 321
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 323
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasVideo()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getDuration()J

    move-result-wide v6

    goto :goto_3

    .line 325
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v0, :cond_b

    .line 326
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v6

    goto :goto_3

    .line 328
    :cond_b
    iget-wide v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 330
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->getMaxCount()I

    move-result v1

    .line 331
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v8, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_d

    goto :goto_5

    :cond_d
    int-to-long v0, v1

    const-wide/32 v4, 0xe678

    mul-long/2addr v0, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_5
    iput v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    goto :goto_8

    .line 289
    :cond_e
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 290
    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 291
    iput-object v6, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 292
    iput-wide v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 293
    iput v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 294
    iput v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    return-void

    .line 274
    :cond_f
    :goto_7
    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    .line 275
    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    .line 276
    iput-object v6, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    .line 277
    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iput-wide v4, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    .line 278
    iput v2, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    .line 279
    iput v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    .line 334
    :cond_10
    :goto_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V

    return-void
.end method

.method public setupAudio(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 209
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 211
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    const/4 v2, 0x0

    .line 212
    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    :cond_0
    if-nez v1, :cond_1

    return-void

    .line 217
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v4, :cond_2

    .line 218
    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    iget-object v6, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioAuthor:Ljava/lang/String;

    iget-object v7, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioTitle:Ljava/lang/String;

    iget-wide v8, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    iget-wide v10, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    iget v12, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    iget v13, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v14, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioVolume:F

    move/from16 v15, p2

    invoke-virtual/range {v4 .. v15}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJFFFZ)V

    .line 220
    :cond_2
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 221
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 222
    iput-boolean v3, v2, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 223
    new-instance v4, Lorg/telegram/ui/Stories/recorder/PreviewView$1;

    invoke-direct {v4, v0}, Lorg/telegram/ui/Stories/recorder/PreviewView$1;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 257
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "other"

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    .line 260
    iget-object v2, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 261
    iget v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v4

    long-to-float v2, v4

    mul-float/2addr v1, v2

    float-to-long v1, v1

    .line 262
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 263
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {v4, v1, v2}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    .line 265
    :cond_3
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 267
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->onAudioChanged()V

    return-void
.end method

.method public setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V
    .locals 13

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1027
    iget-object v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-nez v3, :cond_0

    goto :goto_0

    .line 1039
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_1

    .line 1040
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1041
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1044
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v1}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1045
    iput-boolean v2, v1, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 1046
    new-instance v3, Lorg/telegram/ui/Stories/recorder/PreviewView$4;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$4;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 1087
    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1088
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v4, "other"

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    move-object v1, p2

    .line 1090
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->attachRoundView(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    .line 1091
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget-object v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    iget-wide v7, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    iget v9, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    iget v10, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v11, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundVolume:F

    move/from16 v12, p3

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setRound(Ljava/lang/String;JJFFFZ)V

    .line 1092
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void

    .line 1028
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_3

    .line 1029
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 1030
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 1031
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1033
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_4

    move/from16 v12, p3

    .line 1034
    invoke-virtual {v0, v12}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setRoundNull(Z)V

    .line 1036
    :cond_4
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    .line 1037
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setupVideoPlayer(Lorg/telegram/ui/Stories/recorder/StoryEntry;Ljava/lang/Runnable;J)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    .line 779
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isCollage()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    .line 805
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_1

    .line 806
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 807
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 810
    :cond_1
    new-array v3, v2, [Ljava/lang/Runnable;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    .line 812
    new-instance v5, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v5}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    iput-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 813
    iput-boolean v2, v5, Lorg/telegram/ui/Components/VideoPlayer;->allowMultipleInstances:Z

    .line 814
    new-instance v6, Lorg/telegram/ui/Stories/recorder/PreviewView$3;

    invoke-direct {v6, p0, p1, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView$3;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;Lorg/telegram/ui/Stories/recorder/StoryEntry;[Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 897
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz v3, :cond_2

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 899
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoEditTextureView;->release()V

    .line 900
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 901
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 904
    :cond_2
    new-instance v3, Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v3, v5, v6}, Lorg/telegram/ui/Components/VideoEditTextureView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/VideoPlayer;)V

    iput-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    .line 905
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->resetBitmap()V

    .line 906
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    :goto_0
    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/VideoEditTextureView;->updateUiBlurManager(Lorg/telegram/ui/Components/BlurringShader$BlurManager;)V

    .line 907
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v1, v4}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 908
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->applyMatrix()V

    .line 909
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    if-eqz v3, :cond_4

    .line 910
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_2

    .line 912
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 913
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    const/16 v0, 0x33

    const/4 v1, -0x2

    invoke-static {v1, v1, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    :goto_2
    new-instance p2, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->detectHDR(Lorg/telegram/messenger/Utilities$Callback;)V

    .line 922
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const-string v1, "other"

    invoke-virtual {v0, p2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 924
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 925
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 926
    iget-boolean p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isEditSaved:Z

    if-eqz p2, :cond_6

    .line 927
    iget p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    iget-wide v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->duration:J

    long-to-float v0, v0

    mul-float/2addr p2, v0

    long-to-float p3, p3

    add-float/2addr p2, p3

    float-to-long p3, p2

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_7

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 932
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->checkVolumes()V

    .line 933
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 935
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isRepostMessage:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_8

    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->messageObjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    iget v0, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    move v6, v2

    goto :goto_3

    :cond_8
    move v6, v4

    .line 936
    :goto_3
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->getOriginalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getDuration()J

    move-result-wide v8

    iget v10, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget v1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->left:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoLeft(F)V

    .line 938
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->right:F

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideoRight(F)V

    .line 939
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz p1, :cond_e

    if-lez p2, :cond_e

    .line 940
    invoke-virtual {p1, p3, p4}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setProgress(J)V

    return-void

    .line 780
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_a

    .line 781
    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    .line 782
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer(Z)V

    .line 783
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 785
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureViewHolder:Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;

    if-eqz p1, :cond_b

    iget-boolean p3, p1, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->active:Z

    if-eqz p3, :cond_b

    .line 786
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_5

    .line 787
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    if-eqz p1, :cond_c

    .line 788
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 789
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->textureView:Lorg/telegram/ui/Components/VideoEditTextureView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p3, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/recorder/PreviewView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/PreviewView;)V

    invoke-virtual {p1, p3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 795
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 797
    :cond_c
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->timelineView:Lorg/telegram/ui/Stories/recorder/TimelineView;

    if-eqz v0, :cond_d

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 798
    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/TimelineView;->setVideo(ZLjava/lang/String;JF)V

    .line 800
    :cond_d
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateProgressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_e

    .line 802
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_e
    return-void
.end method

.method public setupWallpaper(Lorg/telegram/ui/Stories/recorder/StoryEntry;Z)V
    .locals 6

    .line 1910
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1912
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    if-nez p1, :cond_1

    .line 1915
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 1918
    :cond_1
    iget-wide v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperPeerId:J

    .line 1919
    iget-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundWallpaperEmoticon:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1920
    iget v2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v3, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v2, v0, v3}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawableFromTheme(ILjava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_c

    .line 1922
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iget v4, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->currentAccount:I

    iget-boolean v5, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isDark:Z

    invoke-static {v0, v4, v2, v3, v5}, Lorg/telegram/ui/Stories/recorder/PreviewView;->getBackgroundDrawable(Landroid/graphics/drawable/Drawable;IJZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 1927
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p2, :cond_3

    .line 1929
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawableCrossfade:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    goto :goto_1

    .line 1931
    :cond_3
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->lastWallpaperDrawable:Landroid/graphics/drawable/Drawable;

    .line 1934
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5

    .line 1935
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1937
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    if-eqz p1, :cond_b

    .line 1938
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    .line 1939
    instance-of v1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_6

    .line 1940
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    .line 1942
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 1943
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-lez p1, :cond_7

    if-gtz p2, :cond_8

    :cond_7
    const/16 p1, 0x438

    const/16 p2, 0x780

    :cond_8
    int-to-float v1, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v3, v1

    int-to-float v5, p2

    div-float/2addr v3, v5

    .line 1948
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_9

    mul-float/2addr v1, v3

    float-to-int p1, v1

    mul-float/2addr v5, v3

    float-to-int p2, v5

    .line 1953
    :cond_9
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1954
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1955
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1956
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->blurManager:Lorg/telegram/ui/Components/BlurringShader$BlurManager;

    invoke-virtual {p1, v1, v0, v2}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;IZ)V

    goto :goto_2

    .line 1959
    :cond_a
    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/BlurringShader$BlurManager;->setFallbackBlur(Landroid/graphics/Bitmap;I)V

    .line 1962
    :cond_b
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 1924
    :cond_c
    iput-object v1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public updateAudioPlayer(Z)V
    .locals 13

    .line 1208
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1212
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1213
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 1216
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    if-eqz p1, :cond_8

    .line 1217
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    long-to-float p1, v0

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    .line 1219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_8

    .line 1220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 1221
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void

    .line 1229
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPositionWithOffset()J

    move-result-wide v2

    .line 1231
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isPlaying()Z

    move-result v0

    goto :goto_1

    .line 1233
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 1234
    :goto_0
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v2

    .line 1235
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    .line 1238
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v5, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioRight:F

    iget v6, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioLeft:F

    sub-float/2addr v5, v6

    iget-wide v7, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioDuration:J

    long-to-float v9, v7

    mul-float/2addr v5, v9

    float-to-long v9, v5

    if-eqz v0, :cond_5

    .line 1239
    iget-wide v11, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    cmp-long v0, v2, v11

    if-ltz v0, :cond_5

    add-long/2addr v11, v9

    cmp-long v0, v2, v11

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1240
    :goto_2
    iget-wide v4, v4, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioOffset:J

    long-to-float v0, v7

    mul-float/2addr v6, v0

    float-to-long v6, v6

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 1241
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eq v0, v1, :cond_6

    .line 1242
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1243
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void

    :cond_6
    if-eqz p1, :cond_8

    .line 1244
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x12c

    goto :goto_3

    :cond_7
    const/16 p1, 0x78

    :goto_3
    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_8

    .line 1245
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->audioPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_8
    :goto_4
    return-void
.end method

.method public updatePauseReason(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1806
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1808
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1810
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz p1, :cond_1

    .line 1811
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1813
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    if-eqz p1, :cond_2

    .line 1814
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->setPlaying(Z)V

    :cond_2
    const/4 p1, 0x1

    .line 1816
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateAudioPlayer(Z)V

    .line 1817
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updateRoundPlayer(Z)V

    return-void
.end method

.method public updateRoundPlayer(Z)V
    .locals 13

    .line 1250
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1254
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1255
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->pauseLinks:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1256
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setLooping(Z)V

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_1

    .line 1258
    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setShown(ZZ)V

    .line 1261
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    if-eqz p1, :cond_a

    .line 1262
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v2, v4

    if-eqz p1, :cond_a

    long-to-float p1, v0

    .line 1263
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v0

    long-to-float v0, v0

    div-float/2addr p1, v0

    .line 1264
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_2

    iget v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_a

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p1, v0, v2

    if-lez p1, :cond_a

    .line 1265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->seekedLastTime:J

    .line 1266
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-wide v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void

    .line 1274
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getPositionWithOffset()J

    move-result-wide v3

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->collage:Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 1278
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    .line 1282
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->entry:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget v6, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundRight:F

    iget v7, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundLeft:F

    sub-float/2addr v6, v7

    iget-wide v8, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundDuration:J

    long-to-float v10, v8

    mul-float/2addr v6, v10

    float-to-long v10, v6

    .line 1283
    iget-wide v5, v5, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundOffset:J

    cmp-long v12, v3, v5

    if-ltz v12, :cond_5

    add-long/2addr v10, v5

    cmp-long v10, v3, v10

    if-gtz v10, :cond_5

    move v10, v2

    goto :goto_1

    :cond_5
    move v10, v1

    :goto_1
    if-eqz v0, :cond_6

    if-eqz v10, :cond_6

    move v1, v2

    :cond_6
    sub-long/2addr v3, v5

    long-to-float v0, v8

    mul-float/2addr v7, v0

    float-to-long v5, v7

    add-long/2addr v3, v5

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundView:Lorg/telegram/ui/Components/Paint/Views/RoundView;

    if-eqz v0, :cond_7

    .line 1287
    invoke-virtual {v0, v10, v2}, Lorg/telegram/ui/Components/Paint/Views/RoundView;->setShown(ZZ)V

    .line 1289
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eq v0, v1, :cond_8

    .line 1290
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setPlayWhenReady(Z)V

    .line 1291
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    return-void

    :cond_8
    if-eqz p1, :cond_a

    .line 1292
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isCollage()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x12c

    goto :goto_2

    :cond_9
    const/16 p1, 0x78

    :goto_2
    int-to-long v5, p1

    cmp-long p1, v0, v5

    if-lez p1, :cond_a

    .line 1293
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->roundPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {p1, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    :cond_a
    :goto_3
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 2024
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->wallpaperDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public whenError(Ljava/lang/Runnable;)V
    .locals 0

    .line 1299
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PreviewView;->onErrorListener:Ljava/lang/Runnable;

    return-void
.end method
