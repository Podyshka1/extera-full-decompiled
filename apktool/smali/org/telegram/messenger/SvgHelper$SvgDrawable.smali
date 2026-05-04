.class public Lorg/telegram/messenger/SvgHelper$SvgDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/SvgHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SvgDrawable"
.end annotation


# static fields
.field private static gradientWidth:F

.field private static lastUpdateTime:J

.field private static lite:Z

.field private static final parentPosition:[I

.field private static shiftDrawable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static shiftRunnable:Ljava/lang/Runnable;

.field private static totalTranslation:F


# instance fields
.field private aspectCenter:Z

.field private aspectFill:Z

.field private final backgroundBitmap:[Landroid/graphics/Bitmap;

.field private final backgroundCanvas:[Landroid/graphics/Canvas;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private colorAlpha:F

.field protected commands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private crossfadeAlpha:F

.field private final currentColor:[I

.field private currentColorKey:I

.field private currentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field protected height:I

.field private overrideColor:Ljava/lang/Integer;

.field private overridePaint:Landroid/graphics/Paint;

.field overridePaintByPosition:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field protected paints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private parentImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field private final placeholderGradient:[Landroid/graphics/LinearGradient;

.field private final placeholderMatrix:[Landroid/graphics/Matrix;

.field protected width:I


# direct methods
.method public static synthetic $r8$lambda$ENqkX9olOH39O3HcX1qVldguLSQ()V
    .locals 1

    const/4 v0, 0x0

    .line 210
    sput-object v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->addCommand(Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddCommand(Lorg/telegram/messenger/SvgHelper$SvgDrawable;Ljava/lang/Object;Landroid/graphics/Paint;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->addCommand(Ljava/lang/Object;Landroid/graphics/Paint;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    .line 117
    new-array v0, v0, [I

    sput-object v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->parentPosition:[I

    const/16 v0, 0x20

    .line 137
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lite:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 109
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 119
    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    .line 120
    new-array v1, v0, [Landroid/graphics/Canvas;

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundCanvas:[Landroid/graphics/Canvas;

    .line 121
    new-array v1, v0, [Landroid/graphics/LinearGradient;

    iput-object v1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    .line 122
    new-array v0, v0, [Landroid/graphics/Matrix;

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColor:[I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 134
    iput v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->crossfadeAlpha:F

    .line 135
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overridePaintByPosition:Landroid/util/SparseArray;

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectFill:Z

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectCenter:Z

    return-void
.end method

.method private addCommand(Ljava/lang/Object;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCommand(Ljava/lang/Object;Landroid/graphics/Paint;)V
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateLiteValues()V
    .locals 1

    const/16 v0, 0x20

    .line 139
    invoke-static {v0}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lite:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->clone()Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/telegram/messenger/SvgHelper$SvgDrawable;
    .locals 5

    .line 419
    new-instance v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;

    invoke-direct {v0}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;-><init>()V

    const/4 v1, 0x0

    .line 420
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 421
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v2, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Paint;

    if-eqz v2, :cond_0

    .line 424
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 425
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 426
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 427
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 428
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 429
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    iget-object v4, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 433
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    iput v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    .line 434
    iget v1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    iput v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    return-object v0
.end method

.method public copyCommandFromPosition(I)V
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v9, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->drawInternal(Landroid/graphics/Canvas;ZIJFFFF)V

    return-void
.end method

.method public drawInternal(Landroid/graphics/Canvas;ZIJFFFF)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p6

    move/from16 v4, p8

    move/from16 v5, p9

    .line 174
    iget v6, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColorKey:I

    if-ltz v6, :cond_0

    .line 175
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget v8, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->colorAlpha:F

    invoke-virtual {v0, v6, v7, v8, v2}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    :cond_0
    float-to-int v6, v4

    float-to-int v7, v5

    .line 178
    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->getScale(II)F

    move-result v6

    .line 179
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    aget-object v7, v7, p3

    const/4 v8, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v7, :cond_c

    sget v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    const/4 v10, 0x0

    cmpl-float v11, v7, v10

    if-lez v11, :cond_c

    sget-boolean v11, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lite:Z

    if-eqz v11, :cond_c

    const/high16 v11, 0x44e10000    # 1800.0f

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x40

    if-eqz v2, :cond_2

    .line 181
    sget-wide v16, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lastUpdateTime:J

    sub-long v16, p4, v16

    cmp-long v18, v16, v14

    if-lez v18, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v14, v16

    :goto_0
    cmp-long v12, v14, v12

    if-lez v12, :cond_8

    .line 186
    sput-wide p4, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lastUpdateTime:J

    .line 187
    sget v12, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    long-to-float v13, v14

    mul-float/2addr v13, v7

    div-float/2addr v13, v11

    add-float/2addr v12, v13

    sput v12, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    .line 188
    :goto_1
    sget v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    sget v11, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    mul-float v12, v11, v9

    cmpl-float v12, v7, v12

    if-ltz v12, :cond_8

    mul-float/2addr v11, v9

    sub-float/2addr v7, v11

    .line 189
    sput v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    goto :goto_1

    .line 193
    :cond_2
    sget-object v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_3

    sget-object v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftDrawable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_8

    .line 194
    :cond_3
    sget-wide v16, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lastUpdateTime:J

    sub-long v16, p4, v16

    cmp-long v7, v16, v14

    if-lez v7, :cond_4

    goto :goto_2

    :cond_4
    move-wide/from16 v14, v16

    :goto_2
    cmp-long v7, v14, v12

    if-gez v7, :cond_5

    goto :goto_3

    :cond_5
    move-wide v12, v14

    .line 201
    :goto_3
    sput-wide p4, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lastUpdateTime:J

    .line 202
    sget v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    long-to-float v12, v12

    sget v13, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    mul-float/2addr v12, v13

    div-float/2addr v12, v11

    add-float/2addr v7, v12

    sput v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    .line 203
    :goto_4
    sget v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    sget v11, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    div-float v12, v11, v9

    cmpl-float v12, v7, v12

    if-ltz v12, :cond_6

    sub-float/2addr v7, v11

    .line 204
    sput v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    goto :goto_4

    .line 206
    :cond_6
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftDrawable:Ljava/lang/ref/WeakReference;

    .line 207
    sget-object v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_7

    .line 208
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 210
    :cond_7
    new-instance v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/telegram/messenger/SvgHelper$SvgDrawable$$ExternalSyntheticLambda0;-><init>()V

    sput-object v7, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->shiftRunnable:Ljava/lang/Runnable;

    const/high16 v11, 0x447a0000    # 1000.0f

    sget v12, Lorg/telegram/messenger/AndroidUtilities;->screenRefreshRate:F

    div-float/2addr v11, v12

    float-to-int v11, v11

    add-int/lit8 v11, v11, -0x1

    int-to-long v11, v11

    invoke-static {v7, v11, v12}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 214
    :cond_8
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->parentImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v7, :cond_9

    if-nez v2, :cond_9

    .line 215
    sget-object v11, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->parentPosition:[I

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/ImageReceiver;->getParentPosition([I)V

    .line 216
    aget v7, v11, v8

    goto :goto_5

    :cond_9
    move v7, v8

    :goto_5
    if-eqz v2, :cond_a

    add-int/lit8 v11, p3, 0x1

    goto :goto_6

    :cond_a
    move v11, v8

    .line 222
    :goto_6
    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v12, v12, v11

    if-eqz v12, :cond_c

    .line 223
    invoke-virtual {v12}, Landroid/graphics/Matrix;->reset()V

    if-eqz v2, :cond_b

    .line 225
    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v12, v12, v11

    neg-int v7, v7

    int-to-float v7, v7

    sget v13, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    add-float/2addr v7, v13

    sub-float/2addr v7, v3

    invoke-virtual {v12, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_7

    .line 227
    :cond_b
    iget-object v12, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v12, v12, v11

    neg-int v7, v7

    int-to-float v7, v7

    sget v13, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->totalTranslation:F

    add-float/2addr v7, v13

    sub-float/2addr v7, v3

    invoke-virtual {v12, v7, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 230
    :goto_7
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v7, v7, v11

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-virtual {v7, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 231
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    aget-object v7, v7, v11

    iget-object v10, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v10, v10, v11

    invoke-virtual {v7, v10}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 233
    iget-object v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->parentImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v7, :cond_c

    if-nez v2, :cond_c

    .line 234
    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->invalidate()V

    .line 239
    :cond_c
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move/from16 v7, p7

    .line 240
    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 241
    iget-boolean v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectFill:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectCenter:Z

    if-eqz v3, :cond_e

    .line 242
    :cond_d
    iget v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float v3, v4, v3

    div-float/2addr v3, v9

    iget v4, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, v5, v4

    div-float/2addr v4, v9

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 244
    :cond_e
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 245
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_8
    if-ge v8, v3, :cond_1b

    .line 246
    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 247
    instance-of v5, v4, Landroid/graphics/Matrix;

    if-eqz v5, :cond_f

    .line 248
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 249
    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto/16 :goto_b

    :cond_f
    if-nez v4, :cond_10

    .line 251
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_b

    .line 254
    :cond_10
    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overridePaintByPosition:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    if-nez v5, :cond_11

    .line 256
    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overridePaint:Landroid/graphics/Paint;

    :cond_11
    if-eqz v2, :cond_12

    .line 259
    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    goto :goto_9

    :cond_12
    if-eqz v5, :cond_13

    goto :goto_9

    .line 263
    :cond_13
    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Paint;

    .line 265
    :goto_9
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    .line 266
    iget v7, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->crossfadeAlpha:F

    int-to-float v9, v6

    mul-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 267
    instance-of v7, v4, Landroid/graphics/Path;

    if-eqz v7, :cond_14

    .line 268
    check-cast v4, Landroid/graphics/Path;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 269
    :cond_14
    instance-of v7, v4, Landroid/graphics/Rect;

    if-eqz v7, :cond_15

    .line 270
    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 271
    :cond_15
    instance-of v7, v4, Landroid/graphics/RectF;

    if-eqz v7, :cond_16

    .line 272
    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 273
    :cond_16
    instance-of v7, v4, Lorg/telegram/messenger/SvgHelper$Line;

    if-eqz v7, :cond_17

    .line 274
    check-cast v4, Lorg/telegram/messenger/SvgHelper$Line;

    .line 275
    iget v7, v4, Lorg/telegram/messenger/SvgHelper$Line;->x1:F

    iget v9, v4, Lorg/telegram/messenger/SvgHelper$Line;->y1:F

    iget v10, v4, Lorg/telegram/messenger/SvgHelper$Line;->x2:F

    iget v4, v4, Lorg/telegram/messenger/SvgHelper$Line;->y2:F

    move-object/from16 p3, v1

    move/from16 p7, v4

    move-object/from16 p8, v5

    move/from16 p4, v7

    move/from16 p5, v9

    move/from16 p6, v10

    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 276
    :cond_17
    instance-of v7, v4, Lorg/telegram/messenger/SvgHelper$Circle;

    if-eqz v7, :cond_18

    .line 277
    check-cast v4, Lorg/telegram/messenger/SvgHelper$Circle;

    .line 278
    iget v7, v4, Lorg/telegram/messenger/SvgHelper$Circle;->x1:F

    iget v9, v4, Lorg/telegram/messenger/SvgHelper$Circle;->y1:F

    iget v4, v4, Lorg/telegram/messenger/SvgHelper$Circle;->rad:F

    invoke-virtual {v1, v7, v9, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 279
    :cond_18
    instance-of v7, v4, Lorg/telegram/messenger/SvgHelper$Oval;

    if-eqz v7, :cond_19

    .line 280
    check-cast v4, Lorg/telegram/messenger/SvgHelper$Oval;

    .line 281
    iget-object v4, v4, Lorg/telegram/messenger/SvgHelper$Oval;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 282
    :cond_19
    instance-of v7, v4, Lorg/telegram/messenger/SvgHelper$RoundRect;

    if-eqz v7, :cond_1a

    .line 283
    check-cast v4, Lorg/telegram/messenger/SvgHelper$RoundRect;

    .line 284
    iget-object v7, v4, Lorg/telegram/messenger/SvgHelper$RoundRect;->rect:Landroid/graphics/RectF;

    iget v4, v4, Lorg/telegram/messenger/SvgHelper$RoundRect;->rx:F

    invoke-virtual {v1, v7, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 286
    :cond_1a
    :goto_a
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_8

    .line 289
    :cond_1b
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getScale(II)F
    .locals 1

    int-to-float p1, p1

    .line 293
    iget v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    .line 294
    iget v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 295
    iget-boolean v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectFill:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public overrideWidthAndHeight(II)V
    .locals 0

    .line 164
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->width:I

    .line 165
    iput p2, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->height:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 300
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->crossfadeAlpha:F

    return-void
.end method

.method public setAspectCenter(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectCenter:Z

    return-void
.end method

.method public setAspectFill(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->aspectFill:Z

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 403
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideColor:Ljava/lang/Integer;

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setColorKey(I)V
    .locals 0

    .line 394
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColorKey:I

    return-void
.end method

.method public setColorKey(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 398
    iput p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColorKey:I

    .line 399
    iput-object p2, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overridePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;I)V
    .locals 1

    .line 411
    iget-object v0, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overridePaintByPosition:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setParent(Lorg/telegram/messenger/ImageReceiver;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->parentImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    return-void
.end method

.method public setupGradient(IFZ)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V

    return-void
.end method

.method public setupGradient(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;FZ)V
    .locals 24

    move-object/from16 v0, p0

    .line 331
    iget-object v1, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->overrideColor:Ljava/lang/Integer;

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    :goto_0
    move-object/from16 v2, p2

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 333
    :goto_1
    iput-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentResourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 334
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColor:[I

    aget v3, v2, p4

    if-eq v3, v1, :cond_8

    move/from16 v3, p3

    .line 335
    iput v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->colorAlpha:F

    move/from16 v3, p1

    .line 336
    iput v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->currentColorKey:I

    .line 337
    aput v1, v2, p4

    .line 338
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sput v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    .line 339
    sget-boolean v2, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->lite:Z

    const/4 v4, 0x1

    if-nez v2, :cond_3

    const/16 v2, 0x46

    .line 340
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 342
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_1

    .line 343
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 345
    :cond_1
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 346
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 348
    :cond_2
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    .line 349
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 350
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_3
    const/high16 v2, 0x43340000    # 180.0f

    .line 355
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sget v5, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    div-float/2addr v2, v5

    .line 356
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    div-int/2addr v5, v3

    int-to-float v5, v5

    iget v6, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->colorAlpha:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v5, v6, v7, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 358
    iget-object v8, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    new-instance v9, Landroid/graphics/LinearGradient;

    sget v12, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    const/4 v10, 0x0

    filled-new-array {v10, v10, v1, v10, v10}, [I

    move-result-object v14

    div-float/2addr v2, v7

    sub-float v7, v6, v2

    add-float/2addr v2, v6

    const/4 v11, 0x5

    new-array v15, v11, [F

    const/4 v11, 0x0

    aput v11, v15, v10

    aput v7, v15, v4

    aput v6, v15, v3

    const/4 v3, 0x3

    aput v2, v15, v3

    const/4 v2, 0x4

    aput v5, v15, v2

    sget-object v16, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    aput-object v9, v8, p4

    .line 360
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_4

    move-object/from16 v23, v16

    .line 361
    new-instance v16, Landroid/graphics/LinearGradient;

    sget v19, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->gradientWidth:F

    filled-new-array {v1, v1}, [I

    move-result-object v21

    const/16 v22, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v16 .. v23}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v1, v16

    goto :goto_3

    :cond_4
    move-object/from16 v2, v16

    .line 363
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v3, p4

    if-nez v5, :cond_5

    .line 364
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v3, p4

    .line 365
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundCanvas:[Landroid/graphics/Canvas;

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    aget-object v6, v6, p4

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    aput-object v5, v3, p4

    .line 367
    :cond_5
    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundCanvas:[Landroid/graphics/Canvas;

    aget-object v3, v3, p4

    invoke-virtual {v3, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 368
    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundBitmap:[Landroid/graphics/Bitmap;

    aget-object v3, v3, p4

    invoke-direct {v1, v3, v2, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 370
    :goto_3
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, p4

    .line 371
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    aget-object v2, v2, p4

    iget-object v3, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderMatrix:[Landroid/graphics/Matrix;

    aget-object v3, v3, p4

    invoke-virtual {v2, v3}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    if-eqz p4, :cond_7

    .line 373
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_6

    .line 374
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 379
    :cond_6
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->backgroundPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ComposeShader;

    iget-object v4, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    aget-object v4, v4, p4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4, v1, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    .line 382
    :cond_7
    iget-object v2, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->paints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Paint;

    .line 386
    new-instance v4, Landroid/graphics/ComposeShader;

    iget-object v5, v0, Lorg/telegram/messenger/SvgHelper$SvgDrawable;->placeholderGradient:[Landroid/graphics/LinearGradient;

    aget-object v5, v5, p4

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v1, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_4

    :cond_8
    return-void
.end method
