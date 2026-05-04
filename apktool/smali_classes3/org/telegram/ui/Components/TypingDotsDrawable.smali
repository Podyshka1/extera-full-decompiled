.class public Lorg/telegram/ui/Components/TypingDotsDrawable;
.super Lorg/telegram/ui/Components/StatusDrawable;
.source "SourceFile"


# instance fields
.field private currentAccount:I

.field private currentPaint:Landroid/graphics/Paint;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private elapsedTimes:[F

.field private isChat:Z

.field private lastUpdateTime:J

.field private scales:[F

.field private startTimes:[F

.field private started:Z


# direct methods
.method public static synthetic $r8$lambda$DhAqYqzFQSQmSZ7kBcUQzPeSD9M(Lorg/telegram/ui/Components/TypingDotsDrawable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 35
    invoke-direct {p0}, Lorg/telegram/ui/Components/StatusDrawable;-><init>()V

    .line 24
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    iput v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->currentAccount:I

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    const/4 v1, 0x3

    .line 26
    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    .line 27
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    .line 28
    new-array v1, v1, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 30
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 31
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    if-eqz p1, :cond_0

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->currentPaint:Landroid/graphics/Paint;

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43160000    # 150.0f
        0x43960000    # 300.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private checkUpdate()V
    .locals 3

    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    if-eqz v0, :cond_1

    .line 126
    iget v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->update()V

    return-void

    .line 129
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/TypingDotsDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TypingDotsDrawable$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/TypingDotsDrawable;)V

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private update()V
    .locals 10

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 54
    iget-wide v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    sub-long v2, v0, v2

    .line 55
    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    const-wide/16 v0, 0x32

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v2, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_5

    .line 61
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v4, v1, v0

    long-to-float v5, v2

    add-float/2addr v4, v5

    aput v4, v1, v0

    .line 62
    iget-object v5, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aget v6, v5, v0

    sub-float/2addr v4, v6

    const/4 v6, 0x0

    cmpl-float v7, v4, v6

    const v8, 0x3faa3d71    # 1.33f

    if-lez v7, :cond_4

    const/high16 v7, 0x43a00000    # 320.0f

    cmpg-float v9, v4, v7

    if-gtz v9, :cond_1

    .line 65
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr v4, v7

    invoke-virtual {v1, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 66
    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    add-float/2addr v1, v8

    aput v1, v4, v0

    goto :goto_1

    :cond_1
    const/high16 v9, 0x44200000    # 640.0f

    cmpg-float v9, v4, v9

    if-gtz v9, :cond_2

    .line 68
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float/2addr v4, v7

    div-float/2addr v4, v7

    invoke-virtual {v1, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 69
    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    add-float/2addr v5, v8

    aput v5, v4, v0

    goto :goto_1

    :cond_2
    const/high16 v7, 0x44480000    # 800.0f

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_3

    .line 71
    aput v6, v1, v0

    .line 72
    aput v6, v5, v0

    .line 73
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v8, v1, v0

    goto :goto_1

    .line 75
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v8, v1, v0

    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v8, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 105
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x41080000    # 8.5f

    .line 106
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    :cond_0
    const v0, 0x4114cccd    # 9.3f

    .line 108
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 111
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->currentPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_1

    .line 112
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_statusPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    .line 113
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1
    const/high16 v2, 0x40400000    # 3.0f

    .line 118
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41100000    # 9.0f

    .line 119
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v2, 0x41700000    # 15.0f

    .line 120
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 121
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    .line 156
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    const/high16 v0, 0x41900000    # 18.0f

    .line 151
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->currentPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIsChat(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 88
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 93
    iget-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v3, v2, v1

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const v3, 0x3faa3d71    # 1.33f

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v3, v1, v0

    const/high16 v2, 0x43160000    # 150.0f

    const/4 v3, 0x1

    .line 97
    aput v2, v1, v3

    const/4 v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    .line 98
    aput v3, v1, v2

    .line 99
    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    return-void
.end method
