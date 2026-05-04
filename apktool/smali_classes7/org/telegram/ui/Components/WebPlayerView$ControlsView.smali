.class Lorg/telegram/ui/Components/WebPlayerView$ControlsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/WebPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlsView"
.end annotation


# instance fields
.field private bufferedPosition:I

.field private currentAnimation:Landroid/animation/AnimatorSet;

.field private currentProgressX:I

.field private duration:I

.field private durationLayout:Landroid/text/StaticLayout;

.field private durationWidth:I

.field private hideRunnable:Ljava/lang/Runnable;

.field private imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private isVisible:Z

.field private lastProgressX:I

.field private progress:I

.field private progressBufferedPaint:Landroid/graphics/Paint;

.field private progressInnerPaint:Landroid/graphics/Paint;

.field private progressLayout:Landroid/text/StaticLayout;

.field private progressPaint:Landroid/graphics/Paint;

.field private progressPressed:Z

.field private textPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lorg/telegram/ui/Components/WebPlayerView;


# direct methods
.method public static synthetic $r8$lambda$MYx_bAv_0s9abRiOfOVmKdM9NUA(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetimageReceiver(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcurrentAnimation(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;Landroid/animation/AnimatorSet;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckNeedHide(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/WebPlayerView;Landroid/content/Context;)V
    .locals 2

    .line 1253
    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    .line 1254
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 1247
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    .line 1251
    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 1255
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 1257
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2, p1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/4 v0, -0x1

    .line 1258
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1259
    iget-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1261
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    const v1, -0xe65818

    .line 1262
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1264
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    const v1, -0x6a6e69

    .line 1265
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1267
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    .line 1268
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1270
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method private checkNeedHide()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1343
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1251
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1432
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetdrawImage(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1433
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetfirstFrameRendered(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1435
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetlastUpdateTime(Lorg/telegram/ui/Components/WebPlayerView;)J

    move-result-wide v5

    sub-long v5, v3, v5

    .line 1436
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v3, v4}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputlastUpdateTime(Lorg/telegram/ui/Components/WebPlayerView;J)V

    .line 1437
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v3

    long-to-float v4, v5

    const/high16 v5, 0x43160000    # 150.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;F)V

    .line 1438
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1439
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fputcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;F)V

    .line 1441
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 1443
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v2}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetcurrentAlpha(Lorg/telegram/ui/Components/WebPlayerView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 1444
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 1446
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/VideoPlayer;->isPlayerPrepared()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisStream(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1447
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1448
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1449
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisInline(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1450
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    const/16 v4, 0xa

    const/4 v5, 0x6

    if-eqz v3, :cond_4

    .line 1451
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x42680000    # 58.0f

    .line 1452
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v1, v3

    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v4

    :goto_0
    add-int/lit8 v6, v6, 0x1d

    int-to-float v6, v6

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int v6, v2, v6

    int-to-float v6, v6

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1453
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1454
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1457
    :cond_4
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_6

    .line 1458
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v3, 0x41900000    # 18.0f

    .line 1459
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v6}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    :cond_5
    add-int/lit8 v4, v4, 0x1d

    int-to-float v4, v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, v2, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1460
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1461
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1465
    :cond_6
    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v3, :cond_e

    .line 1471
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisInline(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    const/high16 v6, 0x40e00000    # 7.0f

    const/4 v4, 0x0

    const/high16 v7, 0x40400000    # 3.0f

    if-eqz v3, :cond_7

    .line 1472
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    .line 1475
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    :goto_1
    sub-int/2addr v2, v5

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    goto :goto_2

    .line 1476
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x41e80000    # 29.0f

    .line 1477
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    const/high16 v4, 0x42100000    # 36.0f

    .line 1478
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int/2addr v4, v5

    const/high16 v5, 0x42980000    # 76.0f

    .line 1479
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v1, v5

    const/high16 v5, 0x41e00000    # 28.0f

    .line 1480
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_1

    :cond_8
    const/high16 v3, 0x41500000    # 13.0f

    .line 1482
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v2, v3

    const/high16 v5, 0x41400000    # 12.0f

    .line 1485
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    goto :goto_1

    .line 1487
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_9

    int-to-float v1, v11

    int-to-float v2, v10

    int-to-float v3, v8

    .line 1488
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v10

    int-to-float v4, v4

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1491
    :cond_9
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v0, :cond_a

    .line 1492
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    :goto_3
    move v12, v0

    goto :goto_4

    :cond_a
    sub-int v0, v8, v11

    int-to-float v0, v0

    .line 1494
    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v11

    goto :goto_3

    .line 1496
    :goto_4
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    if-eqz v0, :cond_c

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v1, :cond_c

    int-to-float v2, v11

    move v3, v2

    int-to-float v2, v10

    sub-int/2addr v8, v11

    int-to-float v4, v8

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v4, v0

    add-float v0, v3, v4

    .line 1497
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v1, v10

    int-to-float v4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressBufferedPaint:Landroid/graphics/Paint;

    :goto_5
    move-object v5, v1

    move v1, v3

    move v3, v0

    move-object v0, p1

    goto :goto_6

    :cond_b
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressInnerPaint:Landroid/graphics/Paint;

    goto :goto_5

    :goto_6
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_c
    int-to-float v1, v11

    int-to-float v2, v10

    int-to-float v3, v12

    .line 1499
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v10, v0

    int-to-float v4, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1500
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisInline(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-nez v1, :cond_e

    int-to-float v1, v9

    .line 1501
    iget-boolean v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v2, :cond_d

    goto :goto_7

    :cond_d
    const/high16 v6, 0x40a00000    # 5.0f

    :goto_7
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1351
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 1352
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    return p1

    .line 1355
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1356
    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    return p1

    .line 1358
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1372
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinFullscreen(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x42100000    # 36.0f

    .line 1373
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    add-int/2addr v0, v2

    .line 1374
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/high16 v3, 0x42980000    # 76.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    sub-int/2addr v2, v3

    .line 1375
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    .line 1378
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1379
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int v3, v0, v3

    move v0, v1

    .line 1382
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v4, :cond_1

    sub-int v5, v2, v0

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-float v6, v6

    int-to-float v4, v4

    div-float/2addr v6, v4

    mul-float/2addr v5, v6

    float-to-int v4, v5

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    add-int/2addr v4, v0

    .line 1384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    .line 1385
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisInline(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisStream(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1386
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eqz v0, :cond_3

    .line 1387
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    .line 1389
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v4, v5

    if-lt v0, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    add-int/2addr v5, v4

    if-gt v0, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int v5, v3, v5

    if-lt v1, v5, :cond_3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v3, v2

    if-gt v1, v3, :cond_3

    .line 1390
    iput-boolean v6, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    .line 1391
    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    .line 1392
    iput v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1393
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1394
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 1398
    :cond_2
    invoke-virtual {p0, v6, v6}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->show(ZZ)V

    .line 1400
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1401
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    goto :goto_4

    .line 1412
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 1413
    iget-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v1, :cond_a

    .line 1414
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 1415
    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    iget v4, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    sub-int/2addr v4, v1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1416
    iput v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->lastProgressX:I

    if-ge v3, v0, :cond_6

    .line 1418
    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    goto :goto_3

    :cond_6
    if-le v3, v2, :cond_7

    .line 1420
    iput v2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    .line 1422
    :cond_7
    :goto_3
    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v3, v0

    mul-float/2addr v1, v3

    float-to-int v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->setProgress(I)V

    .line 1423
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_5

    .line 1402
    :cond_8
    :goto_4
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinitied(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v3}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1403
    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->hideRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1405
    :cond_9
    iget-boolean v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-eqz v3, :cond_a

    .line 1406
    iput-boolean v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    .line 1407
    iget-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v1}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetinitied(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1408
    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    int-to-float v1, v1

    iget v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentProgressX:I

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v3, v0

    mul-float/2addr v1, v3

    float-to-int v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    .line 1409
    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetvideoPlayer(Lorg/telegram/ui/Components/WebPlayerView;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V

    .line 1426
    :cond_a
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v6
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .line 1363
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 1364
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method

.method public setBufferedProgress(I)V
    .locals 0

    .line 1286
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->bufferedPosition:I

    .line 1287
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDuration(I)V
    .locals 9

    .line 1274
    iget v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    if-eq v0, p1, :cond_2

    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisStream(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1277
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    .line 1278
    new-instance v1, Landroid/text/StaticLayout;

    iget p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->duration:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    .line 1279
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 1280
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationLayout:Landroid/text/StaticLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->durationWidth:I

    .line 1282
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setProgress(I)V
    .locals 9

    .line 1291
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressPressed:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->this$0:Lorg/telegram/ui/Components/WebPlayerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/WebPlayerView;->-$$Nest$fgetisStream(Lorg/telegram/ui/Components/WebPlayerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    .line 1295
    new-instance v1, Landroid/text/StaticLayout;

    iget p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progress:I

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->textPaint:Landroid/text/TextPaint;

    const/high16 p1, 0x447a0000    # 1000.0f

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->progressLayout:Landroid/text/StaticLayout;

    .line 1296
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public show(ZZ)V
    .locals 6

    .line 1300
    iget-boolean v0, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1303
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    .line 1304
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_1

    .line 1305
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1307
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->isVisible:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0x96

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    .line 1309
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1310
    new-array v5, v1, [F

    aput p1, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1311
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1312
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$1;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1318
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1320
    :cond_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    if-eqz p2, :cond_4

    .line 1324
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    .line 1325
    new-array v5, v1, [F

    aput p1, v5, v0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object p1, v1, v0

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1326
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1327
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    new-instance p2, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView$2;-><init>(Lorg/telegram/ui/Components/WebPlayerView$ControlsView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1333
    iget-object p1, p0, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->currentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1335
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1338
    :goto_0
    invoke-direct {p0}, Lorg/telegram/ui/Components/WebPlayerView$ControlsView;->checkNeedHide()V

    return-void
.end method
