.class Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaCell"
.end annotation


# instance fields
.field private bitmapPaint:Landroid/graphics/Paint;

.field public blurredImage:Lorg/telegram/messenger/ImageReceiver;

.field private durationIn:Landroid/graphics/Rect;

.field private durationOut:Landroid/graphics/Rect;

.field private fromRect:Landroid/graphics/RectF;

.field public fromRoundRadiuses:Landroid/graphics/RectF;

.field public fromScale:F

.field public groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

.field public image:Lorg/telegram/messenger/ImageReceiver;

.field private indexBitmap:Landroid/graphics/Bitmap;

.field private indexBitmapText:Ljava/lang/String;

.field private indexIn:Landroid/graphics/Rect;

.field private indexOut:Landroid/graphics/Rect;

.field private lastUpdate:J

.field private lastVisibleTUpdate:J

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field public photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

.field private positionFlags:I

.field private radii:[F

.field public rect:Landroid/graphics/RectF;

.field public roundRadiuses:Landroid/graphics/RectF;

.field public scale:F

.field private spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

.field private spoilerCrossfadePaint:Landroid/graphics/Paint;

.field private spoilerCrossfadeProgress:F

.field private spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private spoilerMaxRadius:F

.field private spoilerRevealProgress:F

.field private spoilerRevealX:F

.field private spoilerRevealY:F

.field private strokePaint:Landroid/graphics/Paint;

.field private tempRect:Landroid/graphics/RectF;

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

.field private final updateDuration:J

.field private videoDurationBitmap:Landroid/graphics/Bitmap;

.field private videoDurationBitmapText:Ljava/lang/String;

.field private videoDurationText:Ljava/lang/String;

.field private videoDurationTextPaint:Landroid/text/TextPaint;

.field private visibleT:F

.field public wasSpoiler:Z


# direct methods
.method public static synthetic $r8$lambda$Svn83pyUrc72ZFCpvx_8yb2NOow(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lambda$startRevealMedia$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vBrPPztxOhW_QVE2L2G8eLqxCqw(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lambda$setImage$0(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetlastUpdate(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetpositionFlags(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->positionFlags:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspoilerRevealProgress(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$mlayout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->layout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlayoutFrom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->layoutFrom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->setImage(Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartRevealMedia(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;FF)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->startRevealMedia(FF)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)V
    .locals 5

    .line 1929
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1930
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    const/4 p1, 0x0

    .line 1936
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    .line 1937
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    const-wide/16 v0, 0x0

    .line 1938
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    const-wide/16 v2, 0xc8

    .line 1939
    iput-wide v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->updateDuration:J

    const/4 v2, 0x0

    .line 1940
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->positionFlags:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1941
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    const/4 v3, 0x0

    .line 1942
    iput v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    .line 1949
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    .line 1950
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->roundRadiuses:Landroid/graphics/RectF;

    .line 1952
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationText:Ljava/lang/String;

    .line 1955
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    const/16 v3, 0x8

    .line 1956
    new-array v3, v3, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->radii:[F

    .line 1959
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeProgress:F

    .line 1960
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadePaint:Landroid/graphics/Paint;

    .line 2127
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    .line 2181
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->paint:Landroid/graphics/Paint;

    .line 2182
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->strokePaint:Landroid/graphics/Paint;

    .line 2185
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->bitmapPaint:Landroid/graphics/Paint;

    .line 2187
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    .line 2188
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmapText:Ljava/lang/String;

    .line 2189
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    .line 2190
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmapText:Ljava/lang/String;

    .line 2192
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexIn:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexOut:Landroid/graphics/Rect;

    .line 2193
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationIn:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationOut:Landroid/graphics/Rect;

    .line 2313
    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    .line 2314
    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastVisibleTUpdate:J

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)V

    return-void
.end method

.method private drawDuration(Landroid/graphics/Canvas;FFLjava/lang/String;FF)V
    .locals 9

    if-eqz p4, :cond_6

    .line 2250
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmapText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2251
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_1

    .line 2252
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    .line 2253
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2254
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    const/high16 v0, 0x41400000    # 12.0f

    .line 2256
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 2257
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2258
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 2259
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    .line 2260
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v4, v2

    .line 2261
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2263
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v6, v4, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 2264
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 2265
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 2267
    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    .line 2269
    :cond_4
    new-instance v6, Landroid/graphics/Canvas;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2271
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2272
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v2, v3, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/high16 v2, 0x40a00000    # 5.0f

    .line 2274
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    .line 2275
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 2276
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v7, v7, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v2

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v8, v8, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v8}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v8, v1

    invoke-virtual {v3, v2, v1, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2277
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetvideoPlayImage(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/high16 v1, 0x41900000    # 18.0f

    .line 2278
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    const v2, -0x40cccccd    # -0.7f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, p4, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2280
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationIn:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2281
    iput-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmapText:Ljava/lang/String;

    .line 2284
    :cond_5
    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2285
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationOut:Landroid/graphics/Rect;

    float-to-int v2, p2

    int-to-float v0, v0

    mul-float/2addr v0, p5

    sub-float v0, p3, v0

    float-to-int v0, v0

    int-to-float p4, p4

    mul-float/2addr p4, p5

    add-float/2addr p2, p4

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2286
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p6, p3

    float-to-int p3, p6

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2287
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationBitmap:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationIn:Landroid/graphics/Rect;

    iget-object p4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->durationOut:Landroid/graphics/Rect;

    iget-object p5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private drawPhotoIndex(Landroid/graphics/Canvas;FFLjava/lang/String;FF)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/high16 v2, 0x41400000    # 12.0f

    .line 2196
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    const v3, 0x3f99999a    # 1.2f

    .line 2197
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int v4, v2, v3

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    mul-int/lit8 v6, v3, 0x4

    if-eqz v1, :cond_5

    .line 2201
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmapText:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2202
    :cond_0
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 2203
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    .line 2205
    :cond_1
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v8, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v8, 0x0

    .line 2206
    invoke-virtual {v7, v8}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 2208
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    const/4 v10, 0x1

    if-nez v9, :cond_2

    .line 2209
    new-instance v9, Landroid/text/TextPaint;

    invoke-direct {v9, v10}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    .line 2210
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2212
    :cond_2
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v11, v11, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    sget v12, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxCheck:I

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2214
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    if-eq v9, v10, :cond_4

    if-eq v9, v5, :cond_4

    const/4 v5, 0x3

    if-eq v9, v5, :cond_3

    const/high16 v5, 0x41000000    # 8.0f

    goto :goto_0

    :cond_3
    const/high16 v5, 0x41200000    # 10.0f

    goto :goto_0

    :cond_4
    const/high16 v5, 0x41600000    # 14.0f

    .line 2226
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    int-to-float v9, v4

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 2229
    iget-object v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->paint:Landroid/graphics/Paint;

    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v13, v13, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v13, v13, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachCheckBoxBackground:I

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->setColor(I)V

    float-to-int v11, v9

    int-to-float v11, v11

    int-to-float v2, v2

    .line 2230
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v11, v2, v13}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2231
    iget-object v13, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->strokePaint:Landroid/graphics/Paint;

    iget-object v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v14, v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v14, v14, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-virtual {v14, v12}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->getThemedColor(I)I

    move-result v12

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v14, v12, v15, v15}, Lorg/telegram/messenger/AndroidUtilities;->getOffsetColor(IIFF)I

    move-result v12

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 2232
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->strokePaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2233
    iget-object v12, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->strokePaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2234
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v11, v11, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2235
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v10

    sub-float v2, v9, v2

    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v5, v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v9, v3

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2237
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexIn:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2238
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmapText:Ljava/lang/String;

    .line 2241
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 2242
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexOut:Landroid/graphics/Rect;

    int-to-float v2, v4

    mul-float v2, v2, p5

    sub-float v3, p3, v2

    int-to-float v4, v6

    add-float/2addr v3, v4

    float-to-int v3, v3

    sub-float v5, p2, v4

    float-to-int v6, v5

    add-float v4, p3, v4

    float-to-int v4, v4

    add-float/2addr v5, v2

    float-to-int v2, v5

    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2243
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->bitmapPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v2, v2, p6

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2244
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexIn:Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->indexOut:Landroid/graphics/Rect;

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->bitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_6
    return-void
.end method

.method private synthetic lambda$setImage$0(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    if-eqz p1, :cond_1

    .line 2000
    iget-boolean p1, p1, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2001
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2002
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 2003
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2006
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2007
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startRevealMedia$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2300
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealProgress:F

    .line 2301
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method

.method private layout(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;Z)V
    .locals 5

    if-eqz p1, :cond_a

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2077
    :cond_0
    iget v0, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->positionFlags:I

    if-eqz p3, :cond_3

    .line 2079
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result p3

    .line 2080
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    .line 2081
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-static {v0, v1, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2083
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    .line 2084
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->roundRadiuses:Landroid/graphics/RectF;

    invoke-static {v0, v1, p3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2086
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-static {v0, v1, p3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p3

    iput p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    .line 2087
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    .line 2089
    :cond_3
    iget p3, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->width:I

    int-to-float v1, v0

    div-float/2addr p3, v1

    .line 2090
    iget v1, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->height:F

    div-float/2addr v1, p1

    .line 2091
    iget v2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    .line 2092
    iget p2, p2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    div-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2093
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    .line 2094
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    add-float/2addr v2, p3

    add-float/2addr p2, v1

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 p1, 0x40000000    # 2.0f

    .line 2095
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    .line 2096
    sget p2, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    .line 2097
    iget-object p3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->roundRadiuses:Landroid/graphics/RectF;

    .line 2098
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->positionFlags:I

    and-int/lit8 v1, v0, 0x5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    move v1, p2

    goto :goto_0

    :cond_4
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    move v2, p2

    goto :goto_1

    :cond_5
    move v2, p1

    :goto_1
    and-int/lit8 v3, v0, 0xa

    const/16 v4, 0xa

    if-ne v3, v4, :cond_6

    move v3, p2

    goto :goto_2

    :cond_6
    move v3, p1

    :goto_2
    const/16 v4, 0x9

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    move p1, p2

    .line 2097
    :cond_7
    invoke-virtual {p3, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2103
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-nez p1, :cond_8

    .line 2104
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    .line 2105
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2107
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    if-nez p1, :cond_9

    .line 2108
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    .line 2109
    iget-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->roundRadiuses:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_9
    return-void

    :cond_a
    :goto_3
    const/4 p1, 0x0

    if-eqz p3, :cond_c

    .line 2065
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 2066
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    .line 2067
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_b

    .line 2068
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2070
    :cond_b
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    .line 2071
    iput-wide p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    return-void

    .line 2073
    :cond_c
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    return-void
.end method

.method private layoutFrom(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V
    .locals 8

    .line 2029
    iget v0, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    .line 2030
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 2031
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    .line 2033
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2034
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-nez v1, :cond_1

    .line 2035
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2037
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v3

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2040
    :goto_0
    iget-object v1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_2

    .line 2041
    iget-object v3, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-static {v1, v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 2042
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    .line 2043
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 2044
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 2045
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v2

    iget-object v7, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 2046
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result p1

    mul-float/2addr v6, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result p1

    div-float/2addr v6, p1

    add-float/2addr v0, v6

    .line 2042
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    .line 2049
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    .line 2050
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v4, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    .line 2051
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    .line 2052
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    div-float/2addr v6, v2

    iget-object v7, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v7

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v7}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v7

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 2053
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    iget-object v6, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->groupCell:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result p1

    mul-float/2addr v6, p1

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result p1

    div-float/2addr v6, p1

    add-float/2addr v0, v6

    .line 2049
    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2057
    :goto_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    .line 2059
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    return-void
.end method

.method private setImage(Lorg/telegram/messenger/MediaController$PhotoEntry;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1989
    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v1, :cond_0

    .line 1990
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    if-eqz v2, :cond_0

    .line 1991
    iget v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->duration:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1993
    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationText:Ljava/lang/String;

    .line 1995
    :goto_0
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    if-nez v2, :cond_1

    .line 1996
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    .line 1997
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-direct {v2, v3}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    .line 1999
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;Lorg/telegram/messenger/MediaController$PhotoEntry;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    :cond_1
    if-eqz v1, :cond_5

    .line 2012
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$MediaEditState;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 2013
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-static {v2}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v13}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 2014
    :cond_2
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 2015
    iget-boolean v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v3, 0x1

    const-string v4, ":"

    if-eqz v2, :cond_3

    .line 2016
    iget-object v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 2017
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    return-void

    .line 2019
    :cond_3
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    iget v5, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, v5, v3}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IZ)V

    .line 2020
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v7

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v6 .. v16}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    return-void

    .line 2023
    :cond_4
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method private startRevealMedia(FF)V
    .locals 4

    .line 2292
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealX:F

    .line 2293
    iput p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealY:F

    .line 2295
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object p1

    .line 2296
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    float-to-double v0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerMaxRadius:F

    const/4 p1, 0x2

    .line 2297
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerMaxRadius:F

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v0

    const/high16 v0, 0x437a0000    # 250.0f

    const v1, 0x44098000    # 550.0f

    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 2298
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2299
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2303
    new-instance p2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2310
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1929
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->clone()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;
    .locals 3

    .line 2120
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;-><init>(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)V

    .line 2121
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 2122
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    .line 2123
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iput-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    return-object v0
.end method

.method public detach()V
    .locals 2

    .line 1982
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_0

    .line 1983
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1984
    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2317
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->draw(Landroid/graphics/Canvas;Z)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;FZ)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 2323
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    if-nez v3, :cond_1

    :cond_0
    move/from16 v16, v7

    goto/16 :goto_9

    .line 2326
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_2

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->-$$Nest$fgetdraggingT(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)F

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 2327
    :goto_0
    iget v5, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-static {v5, v6, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    cmpg-float v6, v5, v4

    if-gtz v6, :cond_3

    return v7

    .line 2331
    :cond_3
    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 2332
    sget v6, Lorg/telegram/messenger/SharedConfig;->bubbleRadius:I

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    .line 2333
    iget-object v10, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->roundRadiuses:Landroid/graphics/RectF;

    iget v11, v10, Landroid/graphics/RectF;->left:F

    iget v12, v10, Landroid/graphics/RectF;->top:F

    iget v13, v10, Landroid/graphics/RectF;->right:F

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpg-float v15, v2, v14

    move/from16 v16, v7

    if-gez v15, :cond_4

    .line 2334
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    if-eqz v7, :cond_4

    .line 2335
    iget v7, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v7, v11, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 2336
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7, v12, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v12

    .line 2337
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v7, v13, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v13

    .line 2338
    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRoundRadiuses:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v7, v10, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v10

    .line 2340
    :cond_4
    invoke-static {v11, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 2341
    invoke-static {v12, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 2342
    invoke-static {v13, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v11

    .line 2343
    invoke-static {v10, v6, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    if-eqz p3, :cond_5

    .line 2345
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2346
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    neg-float v10, v10

    invoke-virtual {v1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2348
    :cond_5
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    float-to-int v10, v2

    float-to-int v12, v7

    float-to-int v13, v11

    move/from16 v17, v4

    float-to-int v4, v3

    invoke-virtual {v6, v10, v12, v13, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 2349
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    move/from16 v18, v14

    iget v14, v8, Landroid/graphics/RectF;->left:F

    iget v9, v8, Landroid/graphics/RectF;->top:F

    move/from16 p2, v2

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v2

    move/from16 v20, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v6, v14, v9, v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 2350
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2351
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2353
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    const/4 v6, 0x6

    const/4 v9, 0x5

    const/4 v14, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x2

    if-eqz v2, :cond_b

    const/16 v23, 0x7

    iget-boolean v3, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->hasSpoiler:Z

    if-eqz v3, :cond_a

    iget-boolean v2, v2, Lorg/telegram/messenger/MediaController$PhotoEntry;->isChatPreviewSpoilerRevealed:Z

    if-nez v2, :cond_a

    .line 2354
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->wasSpoiler:Z

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    .line 2355
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->wasSpoiler:Z

    .line 2356
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 2357
    :cond_7
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->wasSpoiler:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 2358
    iput-boolean v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->wasSpoiler:Z

    .line 2361
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->radii:[F

    aput p2, v3, v2

    aput p2, v3, v16

    .line 2362
    aput v7, v3, v21

    aput v7, v3, v22

    .line 2363
    aput v11, v3, v9

    aput v11, v3, v14

    .line 2364
    aput v20, v3, v23

    aput v20, v3, v6

    .line 2366
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2367
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 2368
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->radii:[F

    move/from16 v24, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v8, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2369
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2371
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealProgress:F

    cmpl-float v2, v2, v17

    if-eqz v2, :cond_8

    .line 2372
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 2373
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealX:F

    move/from16 v25, v9

    iget v9, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealY:F

    move/from16 v26, v14

    iget v14, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerMaxRadius:F

    move/from16 v27, v7

    iget v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerRevealProgress:F

    mul-float/2addr v14, v7

    invoke-virtual {v2, v3, v9, v14, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 2374
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    :cond_8
    move/from16 v27, v7

    move/from16 v25, v9

    move/from16 v26, v14

    .line 2377
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v10, v12, v13, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 2378
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v4, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 2379
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 2380
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->blurredImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 2382
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-nez v2, :cond_9

    .line 2383
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-static {v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    .line 2385
    :cond_9
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v3, v3, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v6, v6, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v2, v1, v3, v4, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;II)V

    .line 2386
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2388
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    .line 2389
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    goto :goto_3

    :cond_a
    move/from16 v24, v6

    move/from16 v27, v7

    move/from16 v25, v9

    move/from16 v26, v14

    goto :goto_3

    :cond_b
    move/from16 v24, v6

    move/from16 v27, v7

    move/from16 v25, v9

    move/from16 v26, v14

    const/16 v23, 0x7

    .line 2392
    :goto_3
    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeProgress:F

    cmpl-float v3, v2, v18

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_c

    .line 2393
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->radii:[F

    const/16 v19, 0x1

    aput p2, v2, v19

    aput p2, v2, v16

    .line 2394
    aput v27, v2, v21

    aput v27, v2, v22

    .line 2395
    aput v11, v2, v25

    aput v11, v2, v26

    .line 2396
    aput v20, v2, v23

    aput v20, v2, v24

    .line 2398
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 2399
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 2400
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    iget-object v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->radii:[F

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v8, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 2401
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->path:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 2403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x10

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2404
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeProgress:F

    long-to-float v2, v2

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    add-float/2addr v6, v2

    move/from16 v2, v18

    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeProgress:F

    .line 2406
    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadePaint:Landroid/graphics/Paint;

    sub-float v14, v2, v3

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v14, v2

    float-to-int v2, v14

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2407
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    iget v3, v8, Landroid/graphics/RectF;->left:F

    iget v6, v8, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2409
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 2411
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    goto :goto_4

    :cond_c
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v18

    if-nez v2, :cond_d

    .line 2412
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    .line 2413
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2414
    iput-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    .line 2416
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    .line 2419
    :cond_d
    :goto_4
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v3, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->indexStart:I

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetgroup(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$GroupCalculator;->photos:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    if-ltz v3, :cond_e

    .line 2420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v19, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2421
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v2

    if-eqz v2, :cond_f

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_f
    move/from16 v2, v17

    .line 2423
    :goto_5
    iget v3, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3c23d70a    # 0.01f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_10

    const/4 v7, 0x1

    goto :goto_6

    :cond_10
    move/from16 v7, v16

    :goto_6
    if-eqz v7, :cond_12

    .line 2424
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastVisibleTUpdate:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x11

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 2425
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastVisibleTUpdate:J

    long-to-float v3, v9

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v3, v6

    .line 2427
    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    cmpg-float v2, v2, v6

    if-gez v2, :cond_11

    sub-float/2addr v6, v3

    move/from16 v2, v17

    .line 2428
    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    goto :goto_7

    :cond_11
    add-float/2addr v6, v3

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2430
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    .line 2433
    :cond_12
    :goto_7
    iget v2, v8, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    iget v6, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v6, v3

    iget v6, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    mul-float/2addr v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawPhotoIndex(Landroid/graphics/Canvas;FFLjava/lang/String;FF)V

    .line 2434
    iget v1, v8, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->videoDurationText:Ljava/lang/String;

    iget v2, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->visibleT:F

    mul-float v6, v5, v2

    move v2, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawDuration(Landroid/graphics/Canvas;FFLjava/lang/String;FF)V

    if-eqz p3, :cond_13

    .line 2437
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    if-ltz v15, :cond_14

    if-eqz v7, :cond_15

    :cond_14
    const/16 v19, 0x1

    goto :goto_8

    :cond_15
    return v16

    :goto_8
    return v19

    :goto_9
    return v16
.end method

.method public draw(Landroid/graphics/Canvas;Z)Z
    .locals 1

    .line 2320
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->draw(Landroid/graphics/Canvas;FZ)Z

    move-result p1

    return p1
.end method

.method public drawingRect()Landroid/graphics/RectF;
    .locals 8

    .line 2165
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2169
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;->-$$Nest$fgetdraggingCell(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview;)Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->photoEntry:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->-$$Nest$fgetdraggingT(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;)F

    move-result v1

    .line 2170
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromScale:F

    iget v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->scale:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v3

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2171
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect()Landroid/graphics/RectF;

    move-result-object v1

    .line 2172
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 2173
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v5, v3, v0

    mul-float/2addr v4, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/RectF;->top:F

    .line 2174
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v6

    add-float/2addr v4, v7

    iget v5, v1, Landroid/graphics/RectF;->left:F

    .line 2175
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v7

    add-float/2addr v0, v3

    mul-float/2addr v7, v0

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 2176
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v7, v0

    div-float/2addr v7, v6

    add-float/2addr v3, v7

    .line 2172
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v1

    .line 2166
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2167
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getT()F
    .locals 5

    .line 2114
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetinterpolator(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->lastUpdate:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method public rect()Landroid/graphics/RectF;
    .locals 1

    .line 2129
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->getT()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect(F)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public rect(F)Landroid/graphics/RectF;
    .locals 7

    .line 2132
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->image:Lorg/telegram/messenger/ImageReceiver;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2136
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetleft(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2137
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgettop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 2138
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v3

    mul-float/2addr v2, v3

    .line 2139
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->rect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 2140
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_1

    .line 2141
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetleft(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4, v0, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    .line 2142
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgettop(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v6}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    .line 2143
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetwidth(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    .line 2144
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->fromRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    invoke-static {v5}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->-$$Nest$fgetheight(Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;)F

    move-result v5

    mul-float/2addr v4, v5

    invoke-static {v4, v3, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    .line 2146
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->positionFlags:I

    and-int/lit8 v4, p1, 0x4

    if-nez v4, :cond_2

    .line 2147
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->halfGap:I

    int-to-float v5, v4

    add-float/2addr v1, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :cond_2
    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_3

    .line 2151
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->halfGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :cond_3
    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_4

    .line 2154
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget v4, v4, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->halfGap:I

    int-to-float v5, v4

    add-float/2addr v0, v5

    int-to-float v4, v4

    sub-float/2addr v2, v4

    :cond_4
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    .line 2158
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget p1, p1, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->halfGap:I

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 2160
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2161
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    return-object p1

    .line 2133
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2134
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->tempRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method public startCrossfade()V
    .locals 4

    .line 1963
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->drawingRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 1964
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1965
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1966
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1967
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1968
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 1969
    iget v3, v0, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1970
    invoke-virtual {p0, v2}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->draw(Landroid/graphics/Canvas;)Z

    .line 1971
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 1973
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1976
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 1977
    iput v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->spoilerCrossfadeProgress:F

    .line 1978
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell$MediaCell;->this$2:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView$PreviewGroupCell;->this$1:Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertPhotoLayoutPreview$PreviewGroupsView;->invalidate()V

    return-void
.end method
