.class public Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;
    }
.end annotation


# static fields
.field static lastAutoDownload:Z

.field static lastUpdateDownloadSettingsTime:J


# instance fields
.field private final animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

.field private final animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

.field animator:Landroid/animation/ValueAnimator;

.field private attached:Z

.field private authorText:Lorg/telegram/ui/Components/Text;

.field public blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final bounds:Landroid/graphics/RectF;

.field canvasButton:Lorg/telegram/ui/Components/CanvasButton;

.field private check2:Z

.field checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

.field checkBoxProgress:F

.field private clipPath:Landroid/graphics/Path;

.field crossfadeProgress:F

.field crossfadeToColumnsCount:F

.field crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

.field currentAccount:I

.field currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field currentParentColumnsCount:I

.field drawVideoIcon:Z

.field drawViews:Z

.field globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private gradientDrawable:Landroid/graphics/drawable/Drawable;

.field private gradientDrawableLoading:Z

.field highlightProgress:F

.field imageAlpha:F

.field public imageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field public imageReceiverColor:I

.field public imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

.field imageScale:F

.field public isFirst:Z

.field public isLast:Z

.field public isSearchingHashtag:Z

.field public isStory:Z

.field public isStoryPinned:Z

.field public isStoryUploading:Z

.field public isTop:Z

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

.field private path:Landroid/graphics/Path;

.field private privacyBitmap:Landroid/graphics/Bitmap;

.field private privacyPaint:Landroid/graphics/Paint;

.field private privacyType:I

.field private final progressPaint:Landroid/graphics/Paint;

.field private final rectPath:Landroid/graphics/Path;

.field private reorder:Z

.field private reordering:Z

.field private final scrimPaint:Landroid/graphics/Paint;

.field private sensitiveText:Lorg/telegram/ui/Components/Text;

.field private sensitiveTextShort:Lorg/telegram/ui/Components/Text;

.field private sensitiveTextShort2:Lorg/telegram/ui/Components/Text;

.field private shaker:Lorg/telegram/ui/Components/Shaker;

.field sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

.field showVideoLayout:Z

.field private spoilerMaxRadius:F

.field private spoilerRevealProgress:F

.field private spoilerRevealX:F

.field private spoilerRevealY:F

.field public storyId:I

.field private style:I

.field videoInfoLayot:Landroid/text/StaticLayout;

.field videoText:Ljava/lang/String;

.field viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

.field viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;


# direct methods
.method public static synthetic $r8$lambda$3Hbv1nBM8GSw6P1bvMUrbn4OJhI(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$drawImpl$2([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cQEpH16jx_mZlE4OHJ0TrtLN_b4(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$startRevealMedia$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iIdbxUnC8wPEcjs7ERfSHN75hC0(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$of6TNqZn6z3vgoMH618oc6-kFkE(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lambda$setStyle$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;I)V
    .locals 9

    .line 154
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverColor:I

    .line 76
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    .line 77
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 78
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 87
    iput v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    .line 88
    iput v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    .line 100
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x15e

    move-object v2, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    move-object v3, v2

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 101
    new-instance v1, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-direct {v1, p1, v0, v0}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;-><init>(ZZZ)V

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    .line 124
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    .line 131
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->rectPath:Landroid/graphics/Path;

    .line 136
    iput p1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    .line 138
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->scrimPaint:Landroid/graphics/Paint;

    .line 139
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    .line 140
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 501
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    .line 1232
    new-instance v2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v6, 0x140

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 155
    iput-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    .line 156
    iput p3, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    .line 158
    invoke-virtual {p0, p1, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setChecked(ZZ)V

    .line 159
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 160
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 161
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2, p0}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    .line 163
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    new-instance p3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ImageReceiver;->setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V

    .line 178
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 179
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const/high16 p3, 0x41400000    # 12.0f

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextSize(F)V

    .line 180
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result p3

    if-eqz p3, :cond_0

    sget p3, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTextColor(I)V

    .line 181
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setTypeface(Landroid/graphics/Typeface;)V

    .line 182
    iget-object p2, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    sget-object p3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p3, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setOverrideFullWidth(I)V

    .line 184
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastUpdateDownloadSettingsTime:J

    .line 475
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(Lorg/telegram/messenger/MessageObject;)Z

    move-result p1

    sput-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    .line 477
    :cond_0
    sget-boolean p1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->lastAutoDownload:Z

    return p1
.end method

.method private drawImpl(Landroid/graphics/Canvas;ZFFF)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v8, p5

    .line 510
    invoke-direct {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getPadding()F

    move-result v1

    mul-float v9, v1, p3

    .line 511
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    move v11, v9

    goto :goto_0

    :cond_0
    move v11, v10

    .line 515
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reordering:Z

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v12

    .line 517
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v11

    sub-float/2addr v1, v9

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v1, v2

    .line 518
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v10

    sub-float/2addr v2, v9

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v2, v3

    if-eqz p2, :cond_1

    .line 520
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    :goto_1
    move-object v13, v3

    move/from16 v3, p4

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_1

    .line 521
    :goto_2
    invoke-virtual {v13, v3}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 523
    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    const/high16 v14, 0x3f000000    # 0.5f

    cmpl-float v3, v3, v14

    const/16 v15, 0x9

    const/high16 v16, 0x41100000    # 9.0f

    const/high16 v17, 0x40000000    # 2.0f

    if-lez v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v3, v3, v16

    if-eqz v3, :cond_2

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-eq v3, v15, :cond_2

    mul-float v3, p3, v17

    sub-float/2addr v1, v3

    sub-float/2addr v2, v3

    :cond_2
    move v7, v1

    .line 528
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v1, :cond_3

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-ne v1, v3, :cond_5

    :cond_3
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_5

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v15, v3

    move/from16 p3, v4

    move/from16 p4, v14

    move v14, v2

    goto/16 :goto_7

    .line 529
    :cond_5
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    if-eqz v1, :cond_7

    .line 530
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v5, v6, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;->setParentSize(IIF)V

    .line 531
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateColors()V

    .line 532
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->updateGradient()V

    .line 534
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    cmpl-float v1, v1, v14

    if-lez v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v1, v1, v16

    if-eqz v1, :cond_6

    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-eq v1, v15, :cond_6

    move v1, v4

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_6
    move v1, v10

    goto :goto_4

    :goto_5
    add-float v2, v11, v1

    add-float/2addr v1, v9

    move v5, v4

    add-float v4, v2, v7

    move v6, v5

    add-float v5, v1, v3

    .line 537
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/FlickerLoadingView;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    move/from16 p4, v14

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    move v14, v3

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_7
    move v15, v3

    move/from16 p3, v4

    move/from16 p4, v14

    move v14, v2

    .line 539
    :goto_6
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 542
    :goto_7
    iget v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v2, v1, p3

    const/high16 v18, 0x437f0000    # 255.0f

    if-eqz v2, :cond_8

    add-float v2, v11, v9

    add-float v4, v2, v7

    add-float v2, v9, v10

    add-float v5, v2, v14

    mul-float v1, v1, v18

    float-to-int v6, v1

    move v1, v7

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v19, v10

    move v10, v1

    move-object/from16 v1, p1

    .line 543
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_8

    :cond_8
    move/from16 v19, v10

    move v10, v7

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 548
    :goto_8
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked()Z

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    iget-boolean v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-nez v1, :cond_b

    add-float v7, v11, v10

    sub-float v4, v7, v9

    add-float v2, v14, v19

    sub-float v5, v2, v9

    .line 549
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-static {v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->-$$Nest$fgetbackgroundPaint(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;)Landroid/graphics/Paint;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v2, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_b
    move-object/from16 v1, p1

    move v2, v11

    .line 552
    :goto_9
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v3, v15, :cond_e

    .line 553
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v5, 0x3f3851ec    # 0.72f

    mul-float/2addr v3, v5

    .line 554
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_c

    .line 555
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v5, :cond_d

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 556
    iput-boolean v15, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 557
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v6

    new-instance v7, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;

    invoke-direct {v7, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-static {v4, v5, v6, v7}, Lorg/telegram/ui/Stories/recorder/DominantColors;->getColors(ZLandroid/graphics/Bitmap;ZLorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_a

    .line 567
    :cond_c
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v5, v4, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 568
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_d
    :goto_a
    sub-float v7, v10, v3

    div-float v7, v7, v17

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v6, v19

    invoke-virtual {v13, v7, v6, v3, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_d

    :cond_e
    move/from16 v6, v19

    .line 571
    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_10

    .line 572
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz v3, :cond_f

    const/high16 v3, 0x40e00000    # 7.0f

    goto :goto_b

    :cond_f
    const/high16 v3, 0x41200000    # 10.0f

    :goto_b
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v3, v5

    add-float v11, v2, v3

    add-float v5, v9, v3

    mul-float v3, v3, v17

    sub-float v7, v10, v3

    sub-float v3, v14, v3

    .line 573
    invoke-virtual {v13, v11, v5, v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 574
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v11, v5, v7, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    goto :goto_d

    .line 577
    :cond_10
    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    cmpl-float v3, v3, p4

    if-lez v3, :cond_11

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    cmpl-float v3, v3, v16

    if-eqz v3, :cond_11

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/16 v5, 0x9

    if-eq v3, v5, :cond_11

    move/from16 v3, p3

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    add-float v11, v2, v3

    add-float/2addr v3, v9

    .line 580
    invoke-virtual {v13, v11, v3, v10, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 581
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v11, v3, v10, v14}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 584
    :goto_d
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isFirst:Z

    const/high16 v7, 0x41900000    # 18.0f

    if-eqz v3, :cond_12

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isTop:Z

    if-eqz v3, :cond_12

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_e

    :cond_12
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    :goto_e
    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget v11, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v3, v6, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    .line 585
    iget-boolean v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isLast:Z

    if-eqz v6, :cond_13

    iget-boolean v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isTop:Z

    if-eqz v6, :cond_13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_f

    :cond_13
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    :goto_f
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move/from16 p2, v5

    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v6, v11, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v5

    .line 586
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    move/from16 v16, v7

    iget v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v6, v11, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v6

    .line 587
    invoke-static/range {p3 .. p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v7, v11, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v4

    .line 583
    invoke-virtual {v13, v3, v5, v6, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(IIII)V

    .line 589
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    const v7, 0x3d99999a    # 0.075f

    if-eqz v3, :cond_16

    .line 590
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 591
    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reorder:Z

    if-nez v3, :cond_14

    iget-boolean v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reordering:Z

    if-eqz v3, :cond_16

    .line 592
    :cond_14
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 593
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    if-nez v3, :cond_15

    new-instance v3, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    .line 594
    :cond_15
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v4, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    mul-float v3, v12, v7

    sub-float v4, p3, v3

    .line 595
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 596
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v4

    neg-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 599
    :cond_16
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->isShowingImage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    const/4 v11, -0x1

    if-nez v3, :cond_21

    .line 600
    invoke-virtual {v13, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 601
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v3, v3, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    if-nez v3, :cond_20

    .line 602
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    add-float v3, v2, v10

    sub-float/2addr v3, v9

    const/4 v6, 0x0

    add-float v4, v14, v6

    sub-float/2addr v4, v9

    .line 603
    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 605
    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_17

    .line 606
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->rewind()V

    .line 607
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    iget v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 609
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->path:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 612
    :cond_17
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 614
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v2, :cond_18

    .line 615
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v2

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 616
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->draw(Landroid/graphics/Canvas;Landroid/view/View;II)V

    goto :goto_10

    .line 618
    :cond_18
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    if-nez v2, :cond_19

    .line 619
    new-instance v2, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v2}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 622
    :cond_19
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea66666    # 0.325f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v11, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setColor(I)V

    .line 623
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->setBounds(IIII)V

    .line 624
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;->draw(Landroid/graphics/Canvas;)V

    .line 626
    :goto_10
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 628
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isSensitive()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 629
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveText:Lorg/telegram/ui/Components/Text;

    const/high16 v3, 0x41600000    # 14.0f

    const/16 v4, 0x21

    const-string/jumbo v5, "x "

    const-string v6, "fonts/rmedium.ttf"

    if-nez v2, :cond_1a

    .line 630
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v14, Lorg/telegram/messenger/R$string;->MessageSensitiveContent:I

    invoke-static {v14}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 631
    new-instance v9, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v14, Lorg/telegram/messenger/R$drawable;->filled_sensitive:I

    invoke-direct {v9, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v14, 0x0

    .line 632
    invoke-virtual {v2, v9, v14, v15, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 633
    new-instance v9, Lorg/telegram/ui/Components/Text;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-direct {v9, v2, v3, v14}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v9, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveText:Lorg/telegram/ui/Components/Text;

    .line 636
    :cond_1a
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveText:Lorg/telegram/ui/Components/Text;

    const/16 v9, 0xd

    int-to-float v14, v9

    .line 637
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v20

    add-float v14, v14, v20

    cmpg-float v14, v10, v14

    if-gez v14, :cond_1c

    .line 638
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort:Lorg/telegram/ui/Components/Text;

    if-nez v2, :cond_1b

    .line 639
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lorg/telegram/messenger/R$string;->MessageSensitiveContentShort:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 640
    new-instance v5, Lorg/telegram/ui/Components/ColoredImageSpan;

    sget v14, Lorg/telegram/messenger/R$drawable;->filled_sensitive:I

    invoke-direct {v5, v14}, Lorg/telegram/ui/Components/ColoredImageSpan;-><init>(I)V

    const/4 v14, 0x0

    .line 641
    invoke-virtual {v2, v5, v14, v15, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 642
    new-instance v4, Lorg/telegram/ui/Components/Text;

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort:Lorg/telegram/ui/Components/Text;

    .line 644
    :cond_1b
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort:Lorg/telegram/ui/Components/Text;

    :cond_1c
    const/16 v3, 0x1a

    int-to-float v3, v3

    .line 646
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v4

    add-float/2addr v3, v4

    cmpg-float v3, v10, v3

    if-gez v3, :cond_1e

    .line 647
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort2:Lorg/telegram/ui/Components/Text;

    if-nez v2, :cond_1d

    .line 648
    new-instance v2, Landroid/text/SpannableStringBuilder;

    sget v3, Lorg/telegram/messenger/R$string;->MessageSensitiveContentShort:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 649
    new-instance v3, Lorg/telegram/ui/Components/Text;

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort2:Lorg/telegram/ui/Components/Text;

    .line 651
    :cond_1d
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sensitiveTextShort2:Lorg/telegram/ui/Components/Text;

    const/16 v9, 0xa

    const/16 v3, 0x1c

    goto :goto_11

    :cond_1e
    const/16 v3, 0x20

    .line 656
    :goto_11
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v5

    div-float v5, v5, v17

    add-float/2addr v4, v5

    .line 657
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v6

    div-float v6, v6, v17

    add-float/2addr v5, v6

    .line 658
    invoke-virtual {v2}, Lorg/telegram/ui/Components/Text;->getCurrentWidth()F

    move-result v6

    add-int v14, v9, v9

    int-to-float v14, v14

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float/2addr v6, v14

    int-to-float v3, v3

    .line 659
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v17

    .line 660
    iget v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    sub-float v14, p3, v14

    move/from16 p2, v7

    const v7, 0x3f4ccccd    # 0.8f

    move/from16 v15, p3

    invoke-static {v7, v15, v14}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v7

    .line 661
    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    div-float v6, v6, v17

    mul-float v15, v6, v7

    sub-float v11, v4, v15

    mul-float v21, v3, v7

    move-object/from16 v22, v2

    sub-float v2, v5, v21

    add-float/2addr v15, v4

    move/from16 v23, v6

    add-float v6, v5, v21

    invoke-virtual {v14, v11, v2, v15, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 663
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->rectPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 664
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->rectPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v14, v3, v3, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 665
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 666
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->rectPath:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 667
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAlpha()F

    move-result v2

    .line 668
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget v11, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v11, v15, v11

    mul-float/2addr v11, v2

    invoke-virtual {v6, v11}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 669
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 670
    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 671
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 673
    const-string v2, "paintChatTimeBackground"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getThemePaint(Ljava/lang/String;)Landroid/graphics/Paint;

    move-result-object v2

    .line 674
    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v11, v6

    .line 675
    iget v15, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v15, v21, v15

    mul-float/2addr v11, v15

    const v15, 0x3eb33333    # 0.35f

    mul-float/2addr v11, v15

    float-to-int v11, v11

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 676
    invoke-virtual {v1, v14, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 677
    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 679
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 680
    invoke-virtual {v1, v7, v7, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-float v4, v4, v23

    int-to-float v2, v9

    .line 681
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v3, v4, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v6, v15, v2

    move v4, v5

    const/4 v5, -0x1

    move-object v2, v1

    move-object/from16 v1, v22

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    move-object v1, v2

    .line 682
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_1f
    move/from16 p2, v7

    .line 685
    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_13

    :cond_20
    move/from16 p2, v7

    .line 687
    :goto_13
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    if-nez v2, :cond_22

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    const/16 v19, 0x0

    cmpl-float v3, v2, v19

    if-lez v3, :cond_22

    .line 688
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v3, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    mul-float v2, v2, p4

    mul-float v2, v2, v18

    float-to-int v2, v2

    const/high16 v4, -0x1000000

    invoke-static {v4, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 689
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v3, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->highlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_14

    :cond_21
    move/from16 p2, v7

    .line 692
    :cond_22
    :goto_14
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryUploading:Z

    if-eqz v2, :cond_24

    .line 693
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->scrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x30000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 695
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 696
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 697
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 698
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 699
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 700
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    move v3, v2

    .line 701
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    .line 702
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v4

    sub-float/2addr v4, v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v5

    sub-float/2addr v5, v3

    .line 703
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v6

    add-float/2addr v6, v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v7

    add-float/2addr v7, v3

    .line 701
    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x5dc

    rem-long/2addr v3, v5

    long-to-float v3, v3

    const v4, 0x44bb8000    # 1500.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    .line 706
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animatedProgress:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_23

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getProgress()F

    move-result v6

    goto :goto_15

    :cond_23
    const/4 v6, 0x0

    :goto_15
    const v7, 0x3e19999a    # 0.15f

    const v9, 0x3f733333    # 0.95f

    invoke-static {v7, v9, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v5

    mul-float/2addr v4, v5

    const/4 v5, 0x0

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->progressPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 707
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 710
    :cond_24
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v4

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageX2()F

    move-result v5

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getImageY2()F

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 711
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 712
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 713
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    if-nez v2, :cond_25

    .line 714
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawPrivacy(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    goto :goto_16

    .line 716
    :cond_25
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawAuthor(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V

    .line 718
    :goto_16
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz v2, :cond_26

    .line 719
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 722
    :cond_26
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v2, :cond_2e

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/4 v15, 0x1

    if-eq v3, v15, :cond_27

    invoke-virtual {v2}, Lorg/telegram/ui/Components/CheckBoxBase;->getProgress()F

    move-result v2

    const/16 v19, 0x0

    cmpl-float v2, v2, v19

    if-eqz v2, :cond_2e

    goto :goto_17

    :cond_27
    const/16 v19, 0x0

    .line 723
    :goto_17
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 724
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz v2, :cond_2a

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reorder:Z

    if-nez v2, :cond_28

    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reordering:Z

    if-eqz v2, :cond_2a

    .line 725
    :cond_28
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 726
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    if-nez v2, :cond_29

    new-instance v2, Lorg/telegram/ui/Components/Shaker;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/Shaker;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    .line 727
    :cond_29
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->shaker:Lorg/telegram/ui/Components/Shaker;

    iget v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float v3, v3, p4

    invoke-virtual {v2, v1, v3}, Lorg/telegram/ui/Components/Shaker;->concat(Landroid/graphics/Canvas;F)V

    mul-float v12, v12, p2

    const/high16 v15, 0x3f800000    # 1.0f

    sub-float v4, v15, v12

    .line 728
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 729
    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->getCenterY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 732
    :cond_2a
    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v15, 0x1

    if-ne v2, v15, :cond_2b

    .line 733
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v7, v10, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v7, v2

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v7, v3

    .line 734
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v10, v2

    goto :goto_18

    .line 735
    :cond_2b
    iget-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz v2, :cond_2c

    .line 736
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v7, v10, v2

    iget v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x41b00000    # 22.0f

    add-float/2addr v2, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v7, v2

    const/high16 v2, -0x40000000    # -2.0f

    .line 737
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v3, v4

    add-float v10, v2, v3

    goto :goto_18

    .line 739
    :cond_2c
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float v7, v10, v2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v7, v2

    move/from16 v10, v19

    .line 742
    :goto_18
    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 743
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->draw(Landroid/graphics/Canvas;)V

    .line 744
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v2, :cond_2d

    .line 745
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    iget-object v3, v3, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    iget-object v4, v4, Lorg/telegram/ui/Components/CheckBoxBase;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v10

    invoke-virtual {v2, v7, v10, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 746
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/CanvasButton;->setRect(Landroid/graphics/RectF;)V

    .line 748
    :cond_2d
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 751
    :cond_2e
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getPadding()F
    .locals 6

    .line 490
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v1, 0x9

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    const/high16 v4, 0x41100000    # 9.0f

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v5, v1, :cond_2

    :cond_0
    cmpl-float v0, v0, v4

    if-nez v0, :cond_1

    .line 492
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    mul-float/2addr v0, v1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    :goto_0
    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    return v0

    .line 494
    :cond_1
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    mul-float/2addr v0, v1

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    goto :goto_0

    .line 497
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    if-ne v0, v1, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    return v0

    :cond_3
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v0

    return v0
.end method

.method private getPrivacyType(Lorg/telegram/messenger/MessageObject;)I
    .locals 5

    .line 230
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    if-eqz v0, :cond_0

    const/16 p1, 0x64

    return p1

    .line 232
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_4

    .line 233
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    if-nez v2, :cond_1

    .line 234
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->privacy:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;-><init>(ILjava/util/ArrayList;)V

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    .line 236
    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->parsedPrivacy:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;

    iget p1, p1, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$StoryPrivacy;->type:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return p1

    :cond_4
    return v1
.end method

.method private getStoryMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .locals 0

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-nez p1, :cond_0

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic lambda$drawImpl$2([I)V
    .locals 2

    .line 558
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    if-nez v0, :cond_0

    return-void

    .line 561
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    .line 562
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p1, 0x0

    .line 563
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/telegram/messenger/ImageReceiver;ZZZ)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 168
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    iget-object p4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p4}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-static {p4}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p1, p4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 170
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getDominantColor(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverColor:I

    .line 172
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz p2, :cond_2

    const/4 p3, -0x1

    const/high16 p4, 0x3e800000    # 0.25f

    .line 173
    invoke-static {p3, p4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result p3

    invoke-static {p1, p3}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundColor(I)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$setStyle$1()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->onCheckBoxPressed()V

    return-void
.end method

.method private synthetic lambda$startRevealMedia$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 952
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    .line 953
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private mediaEqual(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$MessageMedia;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_0

    .line 220
    :cond_1
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_3

    .line 221
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz p1, :cond_2

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_2

    return v0

    :cond_2
    return v1

    .line 223
    :cond_3
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_4

    .line 224
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p2, :cond_4

    iget-wide v2, p2, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iget-wide p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    cmp-long p1, v2, p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method private setMessageObject(Lorg/telegram/messenger/MessageObject;IZ)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    move/from16 v3, p2

    if-ge v3, v2, :cond_0

    move v3, v2

    .line 263
    :cond_0
    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 264
    iput v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    .line 265
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    .line 270
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    if-ne v5, v8, :cond_5

    .line 271
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v5, :cond_2

    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    goto :goto_0

    :cond_2
    move-object v8, v6

    :goto_0
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-ne v8, v9, :cond_5

    if-eqz v5, :cond_3

    .line 272
    iget-object v8, v5, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    goto :goto_1

    :cond_3
    move-object v8, v6

    :goto_1
    iget-object v9, v1, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-ne v8, v9, :cond_5

    .line 273
    invoke-direct {v0, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getStoryMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getStoryMedia(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v8

    invoke-direct {v0, v5, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaEqual(Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$MessageMedia;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-ne v4, v3, :cond_5

    iget v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyType:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v7

    :goto_2
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryPinned:Z

    if-ne v5, v8, :cond_5

    .line 276
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getPrivacyType(Lorg/telegram/messenger/MessageObject;)I

    move-result v5

    if-ne v4, v5, :cond_5

    if-nez p3, :cond_5

    :goto_3
    return-void

    .line 281
    :cond_5
    iput-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v1, :cond_6

    .line 282
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isStory()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v7

    :goto_4
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    .line 283
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    move v4, v7

    :goto_5
    iput-boolean v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStoryUploading:Z

    .line 284
    invoke-direct {v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->updateSpoilers2()V

    .line 285
    const-string v4, ""

    const/4 v5, 0x0

    if-nez v1, :cond_8

    .line 286
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 287
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 288
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 289
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 290
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    .line 291
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v1, v5, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 292
    iget-object v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v1, v4, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 293
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 294
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 295
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawableLoading:Z

    .line 296
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->gradientDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, -0x1

    .line 297
    iput v1, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyType:I

    .line 298
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyBitmap:Landroid/graphics/Bitmap;

    .line 299
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->authorText:Lorg/telegram/ui/Components/Text;

    return-void

    .line 302
    :cond_8
    iget-boolean v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v8, :cond_9

    .line 303
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 304
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 305
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v8}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_9
    if-eqz p3, :cond_a

    .line 309
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    :goto_6
    move-object v9, v8

    goto :goto_7

    :cond_a
    iget-object v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    goto :goto_6

    .line 311
    :goto_7
    iget v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$Message;->restriction_reason:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Lorg/telegram/messenger/MessagesController;->getRestrictionReason(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    .line 314
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    div-int/2addr v10, v3

    int-to-float v10, v10

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    if-eqz p3, :cond_b

    .line 316
    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sget v11, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v10, v11

    float-to-int v10, v10

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x5

    .line 318
    :cond_b
    iget-object v11, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {v11, v10}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->getFilterString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x2

    if-le v3, v10, :cond_d

    if-eqz p3, :cond_c

    goto :goto_8

    :cond_c
    const/16 v12, 0x140

    goto :goto_9

    .line 321
    :cond_d
    :goto_8
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v12

    .line 329
    :goto_9
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    .line 330
    iput-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 331
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    .line 332
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    .line 333
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v13}, Lorg/telegram/messenger/ImageReceiver;->clearDecorators()V

    .line 334
    iget-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v13, :cond_f

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v13, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz v13, :cond_f

    .line 335
    iget v4, v13, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    if-lez v4, :cond_e

    move v13, v2

    goto :goto_a

    :cond_e
    move v13, v7

    :goto_a
    iput-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    .line 336
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v4, v7}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_b

    .line 338
    :cond_f
    iput-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    .line 339
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {v13, v5, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 340
    iget-object v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v13, v4, v7}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    .line 342
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    if-eqz v13, :cond_10

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_10
    invoke-virtual {v4, v5, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->set(FZ)F

    .line 343
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->parentStoriesList:Lorg/telegram/ui/Stories/StoriesController$StoriesList;

    if-eqz v4, :cond_11

    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-object/from16 v18, v4

    goto :goto_c

    :cond_11
    move-object/from16 v18, v1

    .line 344
    :goto_c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_12

    move v4, v10

    goto/16 :goto_17

    .line 346
    :cond_12
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v4, :cond_13

    iget-object v5, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageMediaUnsupported;

    if-eqz v5, :cond_13

    .line 347
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v11

    iput-wide v11, v4, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->dialogId:J

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$drawable;->msg_emoji_recent:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 349
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    const v8, 0x40ffffff    # 7.9999995f

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v8, v11}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 350
    new-instance v5, Lorg/telegram/ui/Components/CombinedDrawable;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const v11, -0xcccccd

    invoke-direct {v8, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v5, v8, v4}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v9, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    move v4, v10

    goto/16 :goto_18

    .line 351
    :cond_13
    iget-object v4, v1, Lorg/telegram/messenger/MessageObject;->uploadingStory:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    if-eqz v4, :cond_14

    iget-object v4, v4, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->firstFramePath:Ljava/lang/String;

    if-eqz v4, :cond_14

    .line 352
    invoke-static {v4}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    move v14, v10

    move-object v10, v4

    move v4, v14

    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_14
    move v4, v10

    .line 353
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v5

    const/16 v8, 0x32

    const-string v10, "_b"

    if-eqz v5, :cond_21

    .line 354
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    const/16 v5, 0x9

    if-eq v3, v5, :cond_15

    .line 356
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDuration()D

    move-result-wide v13

    double-to-int v5, v13

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->formatShortDuration(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    :cond_15
    move-object v5, v10

    .line 358
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v10, :cond_17

    .line 359
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_16

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, v18

    .line 360
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 362
    :cond_16
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 364
    :cond_17
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->hasVideoCover()Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 365
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 366
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v10, v12, v7, v8, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v10

    if-ne v10, v8, :cond_18

    move-object v8, v6

    .line 370
    :cond_18
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_1b

    .line 371
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_19

    iget v8, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v12, v8

    move-wide v15, v12

    goto :goto_d

    :cond_19
    const-wide/16 v15, 0x0

    :goto_d
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v8

    if-eqz v8, :cond_1a

    move/from16 v19, v4

    goto :goto_e

    :cond_1a
    move/from16 v19, v2

    :goto_e
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 373
    :cond_1b
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v10, v12}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v8, v13}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v10, :cond_1c

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v14, v5

    goto :goto_f

    :cond_1c
    const-wide/16 v14, 0x0

    :goto_f
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v10, v4

    goto :goto_10

    :cond_1d
    move v10, v2

    :goto_10
    const/16 v16, 0x0

    move-object/from16 v17, v18

    move/from16 v18, v10

    move-object v10, v12

    move-object v12, v8

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 376
    :cond_1e
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v10

    .line 377
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v13, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 378
    iget-object v13, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    iget-boolean v14, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v13, v12, v7, v6, v14}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v12

    if-ne v8, v12, :cond_1f

    .line 379
    iget-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-nez v13, :cond_1f

    move-object v12, v6

    :cond_1f
    if-eqz v8, :cond_2e

    .line 383
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v13, :cond_20

    .line 384
    invoke-static {v12, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, v18

    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 386
    :cond_20
    invoke-static {v12, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    invoke-static {v8, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object v10, v12

    move-object v12, v8

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    :cond_21
    move-object v5, v10

    .line 392
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v10

    instance-of v10, v10, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v10, :cond_2e

    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v10, :cond_2e

    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e

    .line 393
    iget-boolean v10, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    if-nez v10, :cond_24

    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canAutoDownload(Lorg/telegram/messenger/MessageObject;)Z

    move-result v10

    if-nez v10, :cond_24

    iget-boolean v10, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v10, :cond_22

    goto :goto_11

    .line 413
    :cond_22
    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_23

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v15, 0x0

    .line 414
    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 416
    :cond_23
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v5

    .line 417
    iget-object v8, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v5, v8}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v13, "b"

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 394
    :cond_24
    :goto_11
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->mediaThumb:Lorg/telegram/messenger/ImageLocation;

    if-eqz v10, :cond_26

    .line 395
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_25

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v14, v18

    .line 396
    invoke-virtual/range {v9 .. v15}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 398
    :cond_25
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->mediaSmallThumb:Lorg/telegram/messenger/ImageLocation;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto/16 :goto_18

    .line 401
    :cond_26
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {v10, v8}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 402
    iget-object v10, v1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    iget-boolean v13, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    invoke-static {v10, v12, v7, v8, v13}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v10

    if-ne v10, v8, :cond_27

    move-object v8, v6

    .line 406
    :cond_27
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2a

    .line 407
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v10, v5}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v5

    iget-object v14, v1, Lorg/telegram/messenger/MessageObject;->strippedThumb:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_28

    iget v8, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v12, v8

    move-wide v15, v12

    goto :goto_12

    :cond_28
    const-wide/16 v15, 0x0

    :goto_12
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v8

    if-eqz v8, :cond_29

    move/from16 v19, v4

    goto :goto_13

    :cond_29
    move/from16 v19, v2

    :goto_13
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    move-object v10, v5

    invoke-virtual/range {v9 .. v19}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_18

    .line 409
    :cond_2a
    iget-object v12, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v10, v12}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v12

    if-eqz p3, :cond_2b

    move-object v8, v6

    goto :goto_14

    :cond_2b
    iget-object v13, v1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v8, v13}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v8

    :goto_14
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-eqz v10, :cond_2c

    iget v5, v10, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    int-to-long v14, v5

    goto :goto_15

    :cond_2c
    const-wide/16 v14, 0x0

    :goto_15
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->shouldEncryptPhotoOrVideo()Z

    move-result v5

    if-eqz v5, :cond_2d

    move v10, v4

    goto :goto_16

    :cond_2d
    move v10, v2

    :goto_16
    const/16 v16, 0x0

    move-object/from16 v17, v18

    move/from16 v18, v10

    move-object v10, v12

    move-object v12, v8

    invoke-virtual/range {v9 .. v18}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_18

    .line 425
    :cond_2e
    :goto_17
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v8, Lorg/telegram/messenger/R$drawable;->photo_placeholder_in:I

    invoke-static {v5, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v9, v5}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :goto_18
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 429
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    :cond_2f
    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_30

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v5

    if-eqz v5, :cond_30

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v5, v5, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z

    if-nez v5, :cond_30

    .line 433
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v9}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 435
    :cond_30
    iget-object v5, v1, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v5, :cond_31

    .line 436
    new-instance v6, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;

    invoke-direct {v6, v5}, Lorg/telegram/ui/Stories/StoryWidgetsImageDecorator;-><init>(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V

    invoke-virtual {v9, v6}, Lorg/telegram/messenger/ImageReceiver;->addDecorator(Lorg/telegram/messenger/ImageReceiver$Decorator;)V

    .line 439
    :cond_31
    invoke-direct/range {p0 .. p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getPrivacyType(Lorg/telegram/messenger/MessageObject;)I

    move-result v5

    invoke-direct {v0, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setPrivacyType(I)V

    .line 441
    iget-boolean v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    if-eqz v5, :cond_34

    .line 442
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v5

    .line 443
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string/jumbo v8, "x "

    invoke-direct {v1, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 444
    iget v8, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lorg/telegram/messenger/MessagesController;->getPeerName(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 445
    new-instance v8, Lorg/telegram/ui/AvatarSpan;

    iget v9, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentAccount:I

    if-ne v3, v4, :cond_32

    const/high16 v10, 0x41800000    # 16.0f

    goto :goto_19

    :cond_32
    const v10, 0x415a8f5c    # 13.66f

    :goto_19
    invoke-direct {v8, v0, v9, v10}, Lorg/telegram/ui/AvatarSpan;-><init>(Landroid/view/View;IF)V

    .line 446
    invoke-virtual {v8, v5, v6}, Lorg/telegram/ui/AvatarSpan;->setDialogId(J)V

    const/16 v5, 0x21

    .line 447
    invoke-virtual {v1, v8, v7, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 448
    new-instance v2, Lorg/telegram/ui/Components/Text;

    if-ne v3, v4, :cond_33

    const/high16 v3, 0x41600000    # 14.0f

    goto :goto_1a

    :cond_33
    const v3, 0x4122aa65

    :goto_1a
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Lorg/telegram/ui/Components/Text;-><init>(Ljava/lang/CharSequence;FLandroid/graphics/Typeface;)V

    iput-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->authorText:Lorg/telegram/ui/Components/Text;

    .line 451
    :cond_34
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setPrivacyType(I)V
    .locals 2

    .line 455
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 456
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyType:I

    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 460
    :cond_1
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_pin_mini:I

    goto :goto_0

    .line 463
    :cond_2
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_groups:I

    goto :goto_0

    .line 461
    :cond_3
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_folders_private:I

    goto :goto_0

    .line 462
    :cond_4
    sget p1, Lorg/telegram/messenger/R$drawable;->msg_stories_closefriends:I

    :goto_0
    if-eqz p1, :cond_5

    .line 467
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->getPrivacyBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyBitmap:Landroid/graphics/Bitmap;

    .line 469
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateSpoilers2()V
    .locals 1

    .line 1019
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->supports()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-nez v0, :cond_2

    .line 1024
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    return-void

    .line 1027
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_2

    .line 1028
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1029
    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canRevealSpoiler()Z
    .locals 2

    .line 941
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-boolean v0, v0, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealedInSharedMedia:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public customDraw(Landroid/view/View;Landroid/graphics/Canvas;FFF)V
    .locals 9

    .line 757
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 759
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    if-nez v4, :cond_0

    .line 760
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    .line 762
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->rewind()V

    .line 764
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v5, 0x41400000    # 12.0f

    .line 766
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p5

    .line 767
    iget-object v7, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v4, v5, v5, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 768
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 770
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->clipPath:Landroid/graphics/Path;

    invoke-virtual {p2, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 771
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, p3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v3, p4, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 773
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->hasImageLoaded()Z

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v7, :cond_1

    cmpg-float v2, p5, v8

    if-gez v2, :cond_2

    :cond_1
    sub-float v3, v8, p5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    move v5, v3

    move-object v0, p0

    move-object v1, p2

    .line 776
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawImpl(Landroid/graphics/Canvas;ZFFF)V

    :cond_2
    if-eqz v7, :cond_3

    cmpl-float v0, p5, v6

    if-lez v0, :cond_3

    sub-float v3, v8, p5

    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p2

    move v4, p5

    .line 779
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawImpl(Landroid/graphics/Canvas;ZFFF)V

    .line 782
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public drawAuthor(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 9

    .line 878
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isSearchingHashtag:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->authorText:Lorg/telegram/ui/Components/Text;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const v0, 0x40aa8f5c    # 5.33f

    .line 880
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    .line 881
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->authorText:Lorg/telegram/ui/Components/Text;

    .line 882
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->ellipsize(F)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 883
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->setVerticalClipPadding(I)Lorg/telegram/ui/Components/Text;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, p3

    .line 884
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/Text;->setShadow(F)Lorg/telegram/ui/Components/Text;

    move-result-object v3

    iget v1, p2, Landroid/graphics/RectF;->left:F

    add-float v5, v1, v0

    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 885
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    const/high16 v0, 0x41700000    # 15.0f

    goto :goto_0

    :cond_2
    const v0, 0x413547ae    # 11.33f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v6, p2, v0

    const/4 p2, -0x1

    invoke-static {p2, p3}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/telegram/ui/Components/Text;->draw(Landroid/graphics/Canvas;FFIF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public drawCrossafadeImage(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    .line 1068
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1069
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1070
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 1071
    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    .line 1072
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1073
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method public drawDuration(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 786
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 790
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 791
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v3, v6

    if-gez v7, :cond_1

    float-to-double v7, v3

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    .line 794
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-float v3, v7

    .line 797
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 798
    iget v7, v2, Landroid/graphics/RectF;->left:F

    iget v8, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 799
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v5, v8, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 800
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v1, v8, v8, v5, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 801
    iget v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-nez v9, :cond_2

    iget-object v9, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 802
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v5, v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v9, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v14, v9

    .line 803
    new-instance v11, Landroid/text/StaticLayout;

    iget-object v12, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v13, v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v18}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    goto :goto_0

    :cond_2
    if-ge v5, v7, :cond_3

    .line 804
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-nez v5, :cond_4

    :cond_3
    iget-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    .line 805
    iput-object v5, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 807
    :cond_4
    :goto_0
    invoke-virtual {v0, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsOnLeft(F)Z

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    .line 808
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    const/4 v9, 0x0

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/text/Layout;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_5
    move v7, v9

    :goto_1
    add-int/2addr v5, v7

    iget-boolean v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    if-eqz v7, :cond_6

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    goto :goto_2

    :cond_6
    move v7, v9

    :goto_2
    add-int/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    .line 809
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v6, v2

    const/high16 v2, 0x41880000    # 17.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    int-to-float v11, v11

    sub-float/2addr v6, v11

    const/high16 v11, 0x40800000    # 4.0f

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v6, v12

    if-eqz v4, :cond_7

    const/high16 v4, 0x41b00000    # 22.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_3

    :cond_7
    move v4, v9

    :goto_3
    int-to-float v4, v4

    sub-float/2addr v6, v4

    invoke-virtual {v1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 810
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    int-to-float v5, v5

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 811
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v5

    .line 812
    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 813
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sget-object v10, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6, v8, v10}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 814
    sget-object v4, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 815
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_a

    .line 816
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 817
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-nez v4, :cond_8

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    :goto_4
    int-to-float v4, v4

    goto :goto_5

    :cond_8
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_4

    :goto_5
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v7, v7, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 818
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 819
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v4, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_6

    .line 821
    :cond_9
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v4, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x437f0000    # 255.0f

    iget v7, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    mul-float/2addr v7, v6

    mul-float/2addr v7, v3

    float-to-int v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 823
    :goto_6
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v4, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->playDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 824
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 826
    :cond_a
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v4, :cond_c

    .line 827
    iget-boolean v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    if-eqz v4, :cond_b

    const/16 v9, 0xa

    :cond_b
    add-int/lit8 v9, v9, 0x4

    int-to-float v4, v9

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v6, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    sub-int/2addr v2, v6

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 828
    iget-object v2, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 829
    iget-object v4, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v4, v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    int-to-float v5, v2

    mul-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 830
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 831
    iget-object v3, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v3, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->textPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 833
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :cond_d
    :goto_7
    return-void
.end method

.method public drawPrivacy(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 4

    .line 858
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 863
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    const v0, 0x418aa3d7    # 17.33f

    mul-float/2addr v1, v0

    .line 865
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 867
    iget v1, p2, Landroid/graphics/RectF;->right:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    const v2, 0x40b51eb8    # 5.66f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget p2, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 868
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyPaint:Landroid/graphics/Paint;

    if-nez p2, :cond_1

    .line 869
    new-instance p2, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {p2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyPaint:Landroid/graphics/Paint;

    .line 871
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 872
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 873
    iget-object p3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->privacyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 874
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    :goto_0
    return-void
.end method

.method public drawViews(Landroid/graphics/Canvas;Landroid/graphics/RectF;F)V
    .locals 8

    .line 889
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    goto/16 :goto_3

    .line 893
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 894
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    .line 895
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsOnLeft(F)Z

    move-result v0

    .line 897
    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsAlpha:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v2

    mul-float/2addr p3, v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, p3, v3

    if-gez v4, :cond_2

    float-to-double v4, p3

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    .line 901
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float p3, v4

    :cond_2
    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    goto/16 :goto_3

    .line 908
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 909
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v5, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_4

    move v2, v4

    goto :goto_0

    .line 910
    :cond_4
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {p1, v1, v1, v2, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 911
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1, v4, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v1, 0x41d00000    # 26.0f

    .line 913
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v0, :cond_5

    .line 915
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    sub-float/2addr v0, v1

    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result p2

    add-float/2addr v2, p2

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 916
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 917
    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    .line 918
    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    int-to-float v6, v2

    mul-float/2addr v6, p3

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 919
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 920
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_timeBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, 0x40400000    # 3.0f

    .line 923
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v3, v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->viewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 924
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeMonet()Z

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    if-eqz v0, :cond_6

    .line 925
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->viewDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_chat_mediaTimeText:I

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v5

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_2

    .line 927
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->viewDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    mul-float/2addr v3, v2

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 929
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->sharedResources:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;

    iget-object v0, v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$SharedResources;->viewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 930
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v0, 0x41b00000    # 22.0f

    .line 932
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    float-to-int v1, v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, p2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setBounds(IIII)V

    .line 934
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    mul-float/2addr p3, v2

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setAlpha(I)V

    .line 935
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 937
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    :goto_3
    return-void
.end method

.method public getCrossfadeView()Landroid/view/View;
    .locals 1

    .line 1078
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .line 1035
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1039
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 1150
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    return v0
.end method

.method public initFullSizeReceiver()V
    .locals 3

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;IZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 967
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 968
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 969
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 972
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 974
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 975
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 977
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_3

    .line 978
    iget-boolean v1, v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->destroyed:Z

    if-eqz v1, :cond_2

    .line 979
    invoke-static {p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->getInstance(Landroid/view/View;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    return-void

    .line 981
    :cond_2
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->attach(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onCheckBoxPressed()V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 988
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 989
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    .line 990
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    if-eqz v0, :cond_0

    .line 991
    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onDetachedFromWindow()V

    .line 993
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 995
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverFullSize:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 996
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->blurImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 998
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->mediaSpoilerEffect2:Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;

    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect2;->detach(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 505
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    .line 506
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawImpl(Landroid/graphics/Canvas;ZFFF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1009
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1010
    iget-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    if-eqz p2, :cond_0

    const/high16 v0, 0x3fa00000    # 1.25f

    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 1011
    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1012
    div-int/lit8 v0, v0, 0x2

    .line 1014
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1015
    invoke-direct {p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->updateSpoilers2()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1218
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    if-eqz v0, :cond_0

    .line 1219
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/CanvasButton;->checkTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1223
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCheck2()V
    .locals 1

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    return-void
.end method

.method public setChecked(ZZ)V
    .locals 7

    .line 1085
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p1, :cond_1

    return-void

    .line 1089
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 1090
    new-instance v0, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v4, 0x15

    invoke-direct {v0, p0, v4, v3}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    .line 1091
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v6, -0x1

    invoke-virtual {v0, v6, v4, v5}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 1092
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->check2:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiverColor:I

    if-eqz v0, :cond_2

    .line 1093
    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-static {v6, v5}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v5

    invoke-static {v0, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundColor(I)V

    .line 1095
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 1096
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 1097
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v2, v2, v5, v4}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 1098
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz v0, :cond_3

    .line 1099
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 1102
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/CheckBoxBase;->setChecked(ZZ)V

    .line 1103
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    .line 1105
    iput-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    .line 1106
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p2, :cond_6

    .line 1109
    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    if-eqz p1, :cond_5

    move v0, v3

    :cond_5
    const/4 v3, 0x2

    new-array v3, v3, [F

    aput p2, v3, v2

    aput v0, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    .line 1110
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$2;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1117
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1118
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1127
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    move v0, v3

    .line 1129
    :cond_7
    iput v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxProgress:F

    .line 1131
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V
    .locals 0

    .line 1061
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeView:Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 1062
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeProgress:F

    int-to-float p1, p3

    .line 1063
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->crossfadeToColumnsCount:F

    return-void
.end method

.method public setGradientView(Lorg/telegram/ui/Components/FlickerLoadingView;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->globalGradientView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-void
.end method

.method public setHighlightProgress(F)V
    .locals 1

    .line 1139
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1140
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->highlightProgress:F

    .line 1141
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageAlpha(FZ)V
    .locals 1

    .line 1043
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1044
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageAlpha:F

    if-eqz p2, :cond_0

    .line 1046
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setImageScale(FZ)V
    .locals 1

    .line 1052
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1053
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageScale:F

    if-eqz p2, :cond_0

    .line 1055
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;I)V
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setMessageObject(Lorg/telegram/messenger/MessageObject;IZ)V

    return-void
.end method

.method public setReorder(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reorder:Z

    .line 150
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setReordering(ZZ)V
    .locals 1

    .line 1234
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reordering:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1235
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->reordering:Z

    if-nez p2, :cond_1

    .line 1237
    iget-object p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->animatedReordering:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    .line 1239
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setStyle(I)V
    .locals 4

    .line 188
    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->style:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 193
    new-instance p1, Lorg/telegram/ui/Components/CheckBoxBase;

    const/16 v1, 0x15

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lorg/telegram/ui/Components/CheckBoxBase;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    .line 194
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_sharedMedia_photoPlaceholder:I

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    const/4 v3, -0x1

    invoke-virtual {p1, v3, v1, v2}, Lorg/telegram/ui/Components/CheckBoxBase;->setColor(III)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setDrawUnchecked(Z)V

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CheckBoxBase;->setBackgroundType(I)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p1, v0, v0, v2, v1}, Lorg/telegram/ui/Components/CheckBoxBase;->setBounds(IIII)V

    .line 198
    iget-boolean p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->attached:Z

    if-eqz p1, :cond_1

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->checkBoxBase:Lorg/telegram/ui/Components/CheckBoxBase;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/CheckBoxBase;->onAttachedToWindow()V

    .line 201
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/CanvasButton;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/CanvasButton;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->canvasButton:Lorg/telegram/ui/Components/CanvasButton;

    .line 202
    new-instance v0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/CanvasButton;->setDelegate(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setVideoText(Ljava/lang/String;Z)V
    .locals 1

    .line 481
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoText:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 482
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 484
    iput-object p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    .line 486
    :cond_1
    iput-boolean p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    return-void
.end method

.method public startRevealMedia(FF)V
    .locals 4

    .line 945
    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealX:F

    .line 946
    iput p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerRevealY:F

    .line 948
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    const/4 p1, 0x2

    .line 949
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->spoilerMaxRadius:F

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p2, v0

    const/high16 v0, 0x437a0000    # 250.0f

    const v1, 0x44098000    # 550.0f

    invoke-static {p2, v0, v1}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p2

    float-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 950
    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_BOTH:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 951
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 955
    new-instance p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2$1;-><init>(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 962
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public updateViews()V
    .locals 4

    .line 837
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->views:Lorg/telegram/tgnet/tl/TL_stories$StoryViews;

    if-eqz v0, :cond_1

    .line 838
    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$StoryViews;->views_count:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    .line 839
    iget-object v3, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->formatWholeNumber(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 841
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawViews:Z

    .line 842
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1228
    iget-object v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

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

.method public viewsOnLeft(F)Z
    .locals 5

    .line 847
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->isStory:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->currentParentColumnsCount:I

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    goto :goto_4

    :cond_0
    const/high16 v0, 0x41d00000    # 26.0f

    .line 850
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->viewsText:Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->getCurrentWidth()F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v0, v2

    .line 851
    iget-boolean v2, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->showVideoLayout:Z

    const/high16 v3, 0x41000000    # 8.0f

    if-eqz v2, :cond_3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    iget-object v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->videoInfoLayot:Landroid/text/StaticLayout;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    add-int/2addr v2, v4

    iget-boolean v4, p0, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawVideoIcon:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    add-int/2addr v2, v4

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-lez v0, :cond_4

    if-lez v2, :cond_4

    .line 852
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    add-int/2addr v0, v3

    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_4
    return v1
.end method
