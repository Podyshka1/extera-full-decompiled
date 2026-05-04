.class public Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;
    }
.end annotation


# instance fields
.field private amplitude:F

.field private amplitude2:F

.field private animateAmplitudeDiff:F

.field private animateAmplitudeDiff2:F

.field private animateToAmplitude:F

.field currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field private lastUpdateTime:J

.field lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

.field lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

.field paint:Landroid/graphics/Paint;

.field parents:Ljava/util/ArrayList;

.field path:Landroid/graphics/Path;

.field pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

.field progressToState:F

.field rect:Landroid/graphics/RectF;

.field private final selectedPaint:Landroid/graphics/Paint;

.field states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 32
    new-array v1, v0, [Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 43
    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x5

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 50
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 51
    new-instance v1, Lorg/telegram/ui/Components/LineBlobDrawable;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lorg/telegram/ui/Components/LineBlobDrawable;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->rect:Landroid/graphics/RectF;

    .line 54
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    .line 55
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->selectedPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 59
    iget-object v2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    new-instance v3, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-direct {v3, v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkColors()V
    .locals 3

    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 198
    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->checkColor()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setState(IZ)V
    .locals 1

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v0, :cond_1

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 209
    iget-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->states:[Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    aget-object p1, v0, p1

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    .line 212
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    return-void

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 214
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    return-void
.end method


# virtual methods
.method public addParent(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public draw(FFFFLandroid/graphics/Canvas;Lorg/telegram/ui/Components/FragmentContextView;F)V
    .locals 25

    move-object/from16 v0, p0

    .line 65
    invoke-direct {v0}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->checkColors()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p6, :cond_1

    :cond_0
    move v3, v1

    goto :goto_0

    .line 69
    :cond_1
    iget-object v3, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v2

    :goto_0
    cmpl-float v4, p2, p4

    if-lez v4, :cond_2

    goto/16 :goto_b

    .line 75
    :cond_2
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v5, :cond_5

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-ne v4, v2, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v4, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    invoke-static {v4}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->-$$Nest$fgetcurrentState(Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;)I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v4, v2

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    if-eqz v3, :cond_8

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 79
    iget-wide v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    sub-long v7, v5, v7

    .line 80
    iput-wide v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lastUpdateTime:J

    const-wide/16 v5, 0x14

    cmp-long v5, v7, v5

    if-lez v5, :cond_6

    const-wide/16 v7, 0x11

    :cond_6
    const-wide/16 v5, 0x3

    cmp-long v5, v7, v5

    if-gez v5, :cond_7

    move v3, v1

    :cond_7
    :goto_2
    move-wide v8, v7

    goto :goto_3

    :cond_8
    const-wide/16 v7, 0x0

    goto :goto_2

    :goto_3
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-eqz v3, :cond_10

    .line 89
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_b

    .line 90
    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    long-to-float v10, v8

    mul-float/2addr v10, v7

    add-float/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    cmpl-float v7, v7, v12

    if-lez v7, :cond_9

    cmpl-float v6, v6, v5

    if-lez v6, :cond_a

    .line 93
    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    goto :goto_4

    :cond_9
    cmpg-float v6, v6, v5

    if-gez v6, :cond_a

    .line 97
    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    .line 100
    :cond_a
    :goto_4
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 103
    :cond_b
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v7, v5, v6

    if-eqz v7, :cond_e

    .line 104
    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    long-to-float v10, v8

    mul-float/2addr v10, v7

    add-float/2addr v6, v10

    iput v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    cmpl-float v7, v7, v12

    if-lez v7, :cond_c

    cmpl-float v6, v6, v5

    if-lez v6, :cond_d

    .line 107
    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    goto :goto_5

    :cond_c
    cmpg-float v6, v6, v5

    if-gez v6, :cond_d

    .line 111
    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    .line 114
    :cond_d
    :goto_5
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    .line 117
    :cond_e
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v5, :cond_10

    .line 118
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    long-to-float v6, v8

    const/high16 v7, 0x437a0000    # 250.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    cmpl-float v5, v5, v11

    if-lez v5, :cond_f

    .line 120
    iput v11, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    const/4 v5, 0x0

    .line 121
    iput-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 123
    :cond_f
    invoke-virtual/range {p6 .. p6}, Lorg/telegram/ui/Components/FragmentContextView;->invalidate()V

    :cond_10
    :goto_6
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1b

    if-nez v1, :cond_11

    .line 128
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v5, :cond_11

    goto/16 :goto_a

    :cond_11
    if-nez v1, :cond_12

    .line 133
    iget v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    sub-float v5, v11, v5

    .line 134
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    goto :goto_8

    .line 136
    :cond_12
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-nez v5, :cond_13

    goto/16 :goto_b

    .line 139
    :cond_13
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    if-eqz v6, :cond_14

    iget v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->progressToState:F

    move v13, v6

    goto :goto_7

    :cond_14
    move v13, v11

    :goto_7
    if-eqz v3, :cond_15

    sub-float v6, p4, p2

    float-to-int v6, v6

    sub-float v7, p3, p1

    float-to-int v7, v7

    .line 141
    iget v10, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    invoke-virtual/range {v5 .. v10}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->update(IIJF)V

    .line 143
    :cond_15
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;->setToPaint(Landroid/graphics/Paint;)V

    move v5, v13

    .line 146
    :goto_8
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iput v12, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    .line 147
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float/2addr v13, v14

    add-float/2addr v10, v13

    iput v10, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 149
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iput v10, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 150
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    const/high16 v10, 0x40400000    # 3.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x41100000    # 9.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    move/from16 p6, v7

    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float/2addr v15, v7

    add-float/2addr v13, v15

    iput v13, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    .line 152
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->minRadius:F

    .line 153
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    iget v13, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    mul-float/2addr v10, v13

    add-float/2addr v7, v10

    iput v7, v6, Lorg/telegram/ui/Components/LineBlobDrawable;->maxRadius:F

    if-ne v1, v2, :cond_16

    if-eqz v3, :cond_16

    .line 156
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    const v7, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v13, v7}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 157
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    const v10, 0x3f333333    # 0.7f

    invoke-virtual {v6, v7, v10}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    .line 158
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    invoke-virtual {v6, v7, v10}, Lorg/telegram/ui/Components/LineBlobDrawable;->update(FF)V

    :cond_16
    const/16 v6, 0x200

    .line 161
    invoke-static {v6}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 162
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x42980000    # 76.0f

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v6, 0x40c00000    # 6.0f

    .line 163
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    iget v10, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float/2addr v7, v10

    .line 164
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    iget v10, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude2:F

    mul-float/2addr v6, v10

    .line 165
    iget-object v13, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable1:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v15, p2, v7

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v14, p1

    move/from16 v20, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move-object/from16 v18, p5

    move/from16 v21, p7

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v21}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 166
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable2:Lorg/telegram/ui/Components/LineBlobDrawable;

    sub-float v18, p2, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v17, p1

    move/from16 v23, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v24, p7

    move-object/from16 v22, v6

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v24}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    :cond_17
    const/16 v6, 0xff

    if-ne v1, v2, :cond_18

    if-eqz v4, :cond_18

    .line 170
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    :cond_18
    if-ne v1, v2, :cond_19

    .line 172
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v5

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_9

    .line 174
    :cond_19
    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    :goto_9
    if-ne v1, v2, :cond_1a

    if-eqz v4, :cond_1a

    .line 177
    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    const/high16 v6, 0x41900000    # 18.0f

    .line 178
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float v6, p3, v6

    sub-float v7, p4, p2

    div-float v7, v7, p6

    add-float v7, p2, v7

    sub-float v10, p3, p1

    const v13, 0x3f8ccccd    # 1.1f

    mul-float/2addr v10, v13

    mul-float/2addr v10, v5

    .line 181
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v10, v13}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 182
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->path:Landroid/graphics/Path;

    move-object/from16 v6, p5

    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 185
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v7, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v23, p2

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move/from16 v24, p7

    move-object/from16 v16, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-virtual/range {v16 .. v24}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 186
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Canvas;->restore()V

    goto :goto_a

    .line 188
    :cond_1a
    iget-object v5, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->lineBlobDrawable:Lorg/telegram/ui/Components/LineBlobDrawable;

    iget-object v6, v0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->paint:Landroid/graphics/Paint;

    move/from16 v23, p2

    move/from16 v17, p1

    move/from16 v18, p2

    move/from16 v19, p3

    move/from16 v20, p4

    move-object/from16 v21, p5

    move/from16 v24, p7

    move-object/from16 v16, v5

    move-object/from16 v22, v6

    invoke-virtual/range {v16 .. v24}, Lorg/telegram/ui/Components/LineBlobDrawable;->draw(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_1b
    :goto_b
    return-void
.end method

.method public removeParent(Landroid/view/View;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->parents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    iget-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->pausedState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    const/4 p1, 0x0

    .line 234
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->currentState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    .line 235
    iput-object p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->previousState:Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable$WeavingState;

    :cond_0
    return-void
.end method

.method public setAmplitude(F)V
    .locals 3

    .line 220
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateToAmplitude:F

    .line 221
    iget v0, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->amplitude:F

    sub-float v1, p1, v0

    const/high16 v2, 0x437a0000    # 250.0f

    div-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff:F

    sub-float/2addr p1, v0

    const/high16 v0, 0x42f00000    # 120.0f

    div-float/2addr p1, v0

    .line 222
    iput p1, p0, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->animateAmplitudeDiff2:F

    return-void
.end method

.method public updateState(Z)V
    .locals 6

    .line 240
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v1

    .line 243
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isSwitchingStream()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    const/4 v4, 0x6

    if-eq v1, v4, :cond_0

    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    .line 244
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    return-void

    .line 246
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_5

    .line 247
    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v1, :cond_2

    .line 248
    iget-boolean v2, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v2, :cond_2

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getChat()Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v1, v1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v3, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    const/4 v0, 0x3

    .line 250
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    return-void

    .line 252
    :cond_4
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 253
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    return-void

    .line 256
    :cond_5
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v0

    .line 257
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/FragmentContextViewWavesDrawable;->setState(IZ)V

    :cond_6
    return-void
.end method
