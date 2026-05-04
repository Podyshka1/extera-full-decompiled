.class Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$Roller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttrRoller"
.end annotation


# instance fields
.field public final attributes:Ljava/util/ArrayList;

.field public current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

.field public currentT:I

.field private final fast:Lorg/telegram/ui/Components/AnimatedFloat;

.field public final finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

.field private final invalidate:Ljava/lang/Runnable;

.field private lastNextIndex:I

.field public next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

.field public prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

.field private slowing:I

.field private final speedMult:F

.field public final start:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

.field public time:F

.field private final totalSlowing:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/ArrayList;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FI)V
    .locals 1

    .line 3339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3321
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    const/4 v0, -0x1

    .line 3403
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->lastNextIndex:I

    .line 3340
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->invalidate:Ljava/lang/Runnable;

    .line 3341
    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    .line 3342
    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->start:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3343
    iput-object p4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3344
    iput p5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->speedMult:F

    .line 3345
    iput p6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->totalSlowing:I

    .line 3347
    new-instance p2, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 p4, 0x12c

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {p2, p1, p4, p5, v0}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Ljava/lang/Runnable;JLandroid/animation/TimeInterpolator;)V

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->fast:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, 0x1

    .line 3348
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/AnimatedFloat;->force(Z)V

    const/high16 p2, -0x41000000    # -0.5f

    .line 3349
    iput p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    .line 3351
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    .line 3352
    iput p6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->slowing:I

    .line 3354
    iput-object p3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    const/4 p1, 0x0

    .line 3355
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next(Z)Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3356
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next(Z)Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .line 3433
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->start:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-eqz v0, :cond_0

    .line 3434
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->detach()V

    .line 3436
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-eqz v0, :cond_1

    .line 3437
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->detach()V

    :cond_1
    return-void
.end method

.method public isAlmostFinished()Z
    .locals 1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 3372
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isAlmostFinished(F)Z

    move-result v0

    return v0
.end method

.method public isAlmostFinished(F)Z
    .locals 2

    .line 3376
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    add-float/2addr v0, p1

    iget p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFinished()Z
    .locals 3

    .line 3368
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next(Z)Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;
    .locals 3

    if-eqz p1, :cond_1

    .line 3405
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3406
    iget p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->slowing:I

    if-gtz p1, :cond_0

    .line 3407
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 3409
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->slowing:I

    .line 3412
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 3413
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3414
    iget v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->lastNextIndex:I

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    invoke-virtual {v2}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->isLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3415
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3418
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3419
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 3420
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3421
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3423
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3424
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->start:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    return-object p1

    .line 3427
    :cond_6
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->randomOf(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3428
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->lastNextIndex:I

    .line 3429
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    return-object p1
.end method

.method public skip()V
    .locals 2

    .line 3360
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3361
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    const/4 v0, 0x0

    .line 3362
    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3363
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    .line 3364
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    return-void
.end method

.method public step(FZ)F
    .locals 9

    .line 3380
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->fast:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->slowing:I

    iget v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->totalSlowing:I

    const/4 v3, 0x3

    if-lt v1, v2, :cond_0

    const-wide/16 v1, 0x1c2

    goto :goto_1

    :cond_0
    if-ne v2, v3, :cond_1

    const/16 v1, 0x1194

    goto :goto_0

    :cond_1
    const/16 v1, 0x9c4

    :goto_0
    int-to-long v1, v1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/AnimatedFloat;->setDuration(J)V

    .line 3381
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->fast:Lorg/telegram/ui/Components/AnimatedFloat;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->slowing:I

    iget v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->totalSlowing:I

    const/4 v4, 0x1

    if-lt v1, v2, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    .line 3382
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->totalSlowing:I

    if-ne v1, v3, :cond_3

    const/high16 v1, 0x3f400000    # 0.75f

    goto :goto_3

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    :goto_3
    const/high16 v2, 0x40f00000    # 7.5f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->speedMult:F

    mul-float/2addr v0, v1

    .line 3384
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    mul-float/2addr p1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->time:F

    const/4 p1, 0x0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_5

    float-to-double v2, v1

    .line 3388
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    iget p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-double v7, p1

    cmpl-double p1, v5, v7

    if-lez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-eq p1, v0, :cond_5

    .line 3389
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3390
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    .line 3391
    :cond_4
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next(Z)Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-result-object p1

    :goto_4
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    .line 3392
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v4

    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    .line 3395
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget-object p2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne p1, p2, :cond_6

    .line 3396
    iget p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float p1, p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    .line 3397
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_6
    return v1
.end method
