.class public final Lorg/telegram/messenger/utils/FrameMetricsOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;
    }
.end annotation


# instance fields
.field private final attachedToWindowManager:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final bgPaint:Landroid/graphics/Paint;

.field private hostWindow:Landroid/view/Window;

.field private listener:Landroid/view/Window$OnFrameMetricsAvailableListener;

.field private lp:Landroid/view/WindowManager$LayoutParams;

.field private metricsHandler:Landroid/os/Handler;

.field private metricsThread:Landroid/os/HandlerThread;

.field private final redraw:Ljava/lang/Runnable;

.field private final running:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final textPaint:Landroid/graphics/Paint;

.field private final uiHandler:Landroid/os/Handler;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$m42WIPdz4HTot3OVFKZ-a0YbcXM(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 8

    .line 181
    invoke-static {}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->values()[Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    aget-object v1, p0, v0

    .line 182
    invoke-virtual {v1}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/high16 v2, -0x8000000000000000L

    .line 183
    iput-wide v2, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    goto :goto_2

    .line 186
    :cond_0
    iget v2, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->key:I

    invoke-virtual {p1, v2}, Landroid/view/FrameMetrics;->getMetric(I)J

    move-result-wide v2

    .line 187
    iput-wide v2, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    .line 189
    iget-boolean v4, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->isDuration:Z

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    .line 191
    iget-wide v4, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const-wide v6, 0x3fa999999999999aL    # 0.05

    sub-double/2addr v2, v4

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    .line 193
    :goto_1
    iput-wide v2, v1, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetrunning(Lorg/telegram/messenger/utils/FrameMetricsOverlayView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetuiHandler(Lorg/telegram/messenger/utils/FrameMetricsOverlayView;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 107
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->bgPaint:Landroid/graphics/Paint;

    .line 108
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->attachedToWindowManager:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 125
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->uiHandler:Landroid/os/Handler;

    .line 126
    new-instance v2, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$1;-><init>(Lorg/telegram/messenger/utils/FrameMetricsOverlayView;)V

    iput-object v2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->redraw:Ljava/lang/Runnable;

    const/high16 v2, -0x50000000

    .line 136
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, -0x1

    .line 137
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 138
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 140
    const-string p1, "fonts/rmono.ttf"

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 142
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotDraw(Z)V

    return-void
.end method

.method private attachInternal(Landroid/app/Activity;II)V
    .locals 6

    .line 147
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->wm:Landroid/view/WindowManager;

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->hostWindow:Landroid/view/Window;

    .line 150
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x318

    const/4 v5, -0x3

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v3, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 161
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    int-to-float p1, p3

    .line 162
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 163
    iget-object p2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->lp:Landroid/view/WindowManager$LayoutParams;

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 164
    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 p1, 0x43820000    # 260.0f

    .line 165
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    iput p1, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 167
    iget-object p1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->wm:Landroid/view/WindowManager;

    iget-object p2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, p2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    iget-object p1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->attachedToWindowManager:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 170
    invoke-direct {p0}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->start()V

    return-void
.end method

.method public static attachToActivityCorner(Landroid/app/Activity;II)Lorg/telegram/messenger/utils/FrameMetricsOverlayView;
    .locals 1

    .line 88
    new-instance v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->attachInternal(Landroid/app/Activity;II)V

    return-object v0
.end method

.method private start()V
    .locals 3

    .line 174
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 176
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameMetrics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->metricsThread:Landroid/os/HandlerThread;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 178
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->metricsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->metricsHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->listener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    .line 198
    iget-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->hostWindow:Landroid/view/Window;

    iget-object v2, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->metricsHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 199
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->redraw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stop()V
    .locals 2

    .line 203
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->running:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 204
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->uiHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->redraw:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 205
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->hostWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->listener:Landroid/view/Window$OnFrameMetricsAvailableListener;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->metricsThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->stop()V

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->attachedToWindowManager:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->wm:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->wm:Landroid/view/WindowManager;

    .line 99
    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 100
    iput-object v0, p0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->hostWindow:Landroid/view/Window;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37

    move-object/from16 v0, p0

    const/high16 v1, 0x41000000    # 8.0f

    .line 219
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v9, v1

    const/high16 v1, 0x41600000    # 14.0f

    .line 220
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v10, v1

    .line 223
    invoke-static {}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->values()[Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x6

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    :goto_1
    int-to-float v1, v1

    goto :goto_2

    :cond_1
    const/high16 v1, 0x43820000    # 260.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_1

    :goto_2
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v9

    int-to-float v3, v4

    mul-float/2addr v3, v10

    add-float v5, v2, v3

    const/high16 v2, 0x41200000    # 10.0f

    .line 230
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v6, v3

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v7, v2

    iget-object v8, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->bgPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    add-float v2, v9, v10

    .line 247
    invoke-static {}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->values()[Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;

    move-result-object v3

    array-length v4, v3

    const-wide/16 v5, 0x0

    move-object/from16 v27, v3

    move-wide/from16 v16, v5

    move-wide/from16 v20, v16

    move-wide/from16 v23, v20

    move-wide/from16 v25, v23

    move v15, v9

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v18, 0x0

    const/16 v22, 0x0

    :goto_3
    const/16 v28, 0x2

    const-wide v29, 0x412e848000000000L    # 1000000.0

    const/16 v31, 0x1

    const-string v3, "%-16s : %5.2f / %5.2f ms"

    if-ge v7, v4, :cond_5

    move/from16 v32, v4

    aget-object v4, v27, v7

    .line 249
    invoke-virtual {v4}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->isAvailable()Z

    move-result v33

    if-eqz v33, :cond_4

    move-wide/from16 v33, v13

    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    cmp-long v35, v13, v18

    if-gez v35, :cond_2

    :goto_4
    move/from16 v35, v7

    move/from16 v36, v10

    goto/16 :goto_8

    :cond_2
    move/from16 v35, v7

    .line 251
    iget-boolean v7, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->isDuration:Z

    if-eqz v7, :cond_3

    .line 252
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    move/from16 v36, v10

    iget-object v10, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->label:Ljava/lang/String;

    long-to-double v13, v13

    div-double v13, v13, v29

    .line 256
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    move-object/from16 v29, v13

    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    .line 257
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v10, v14, v22

    aput-object v29, v14, v31

    aput-object v13, v14, v28

    .line 252
    invoke-static {v7, v3, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    move-object v7, v3

    :goto_5
    move-wide/from16 v13, v33

    goto :goto_6

    .line 278
    :pswitch_0
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    add-long/2addr v5, v13

    .line 279
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    add-double v13, v25, v13

    move-object v7, v3

    move-wide/from16 v25, v13

    goto :goto_5

    .line 274
    :pswitch_1
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    add-long/2addr v8, v13

    .line 275
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    add-double v13, v20, v13

    move-object v7, v3

    move-wide/from16 v20, v13

    goto :goto_5

    .line 268
    :pswitch_2
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    add-long/2addr v11, v13

    move-object v7, v3

    .line 269
    iget-wide v3, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    add-double v23, v23, v3

    add-long/2addr v8, v13

    add-double v3, v20, v3

    move-wide/from16 v20, v3

    goto :goto_5

    :pswitch_3
    move-object v7, v3

    .line 264
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    add-long/2addr v11, v13

    .line 265
    iget-wide v3, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    add-double v3, v23, v3

    move-wide/from16 v23, v3

    goto :goto_5

    :pswitch_4
    move-object v7, v3

    .line 283
    iget-wide v13, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->last:J

    add-long v13, v33, v13

    .line 284
    iget-wide v3, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->avgMs:D

    add-double v16, v16, v3

    :goto_6
    move-object v3, v7

    goto :goto_9

    :cond_3
    move/from16 v36, v10

    .line 288
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->label:Ljava/lang/String;

    .line 292
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move/from16 v10, v28

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v22

    aput-object v7, v10, v31

    .line 288
    const-string v4, "%-16s : %d"

    invoke-static {v3, v4, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_7
    move-wide/from16 v13, v33

    goto :goto_9

    :cond_4
    move-wide/from16 v33, v13

    goto/16 :goto_4

    .line 250
    :goto_8
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v4, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->label:Ljava/lang/String;

    move/from16 v7, v31

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v22

    const-string v4, "%-16s : n/a"

    invoke-static {v3, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 295
    :goto_9
    iget-object v4, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v15, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v36

    add-int/lit8 v7, v35, 0x1

    move/from16 v4, v32

    move/from16 v10, v36

    goto/16 :goto_3

    :cond_5
    move/from16 v36, v10

    move-wide/from16 v33, v13

    .line 298
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    move-wide/from16 v18, v13

    move-wide/from16 v13, v20

    move-wide/from16 v20, v5

    move-wide/from16 v4, v25

    .line 299
    invoke-static {v13, v14, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide/from16 v4, v23

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    add-float v2, v2, v36

    .line 302
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-double v11, v11

    div-double v11, v11, v29

    .line 303
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x3

    new-array v12, v5, [Ljava/lang/Object;

    const-string v5, "ui"

    aput-object v5, v12, v22

    const/16 v31, 0x1

    aput-object v11, v12, v31

    const/16 v28, 0x2

    aput-object v4, v12, v28

    .line 302
    invoke-static {v10, v3, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v36

    long-to-double v4, v8

    div-double v4, v4, v29

    .line 306
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/Object;

    const-string v9, "rt"

    aput-object v9, v8, v22

    const/16 v31, 0x1

    aput-object v4, v8, v31

    const/16 v28, 0x2

    aput-object v5, v8, v28

    .line 305
    invoke-static {v10, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v36

    move-wide/from16 v4, v20

    long-to-double v4, v4

    div-double v4, v4, v29

    .line 309
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/Object;

    const-string v9, "gpu"

    aput-object v9, v8, v22

    const/16 v31, 0x1

    aput-object v4, v8, v31

    const/16 v28, 0x2

    aput-object v5, v8, v28

    .line 308
    invoke-static {v10, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v36

    move-wide/from16 v13, v33

    long-to-double v4, v13

    div-double v4, v4, v29

    .line 312
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/Object;

    const-string v9, "other"

    aput-object v9, v8, v22

    const/16 v31, 0x1

    aput-object v4, v8, v31

    const/16 v28, 0x2

    aput-object v5, v8, v28

    .line 311
    invoke-static {v10, v3, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-float v2, v2, v36

    move-wide/from16 v4, v18

    long-to-double v4, v4

    div-double v4, v4, v29

    .line 315
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v14, 0x3

    new-array v6, v14, [Ljava/lang/Object;

    const-string v7, "frame"

    aput-object v7, v6, v22

    const/16 v31, 0x1

    aput-object v4, v6, v31

    const/16 v28, 0x2

    aput-object v5, v6, v28

    .line 314
    invoke-static {v10, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lorg/telegram/messenger/utils/FrameMetricsOverlayView;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v15, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2

    const/high16 p1, 0x43820000    # 260.0f

    .line 331
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    const/high16 p2, 0x41000000    # 8.0f

    .line 332
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {}, Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;->values()[Lorg/telegram/messenger/utils/FrameMetricsOverlayView$Metric;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x6

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 333
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method
