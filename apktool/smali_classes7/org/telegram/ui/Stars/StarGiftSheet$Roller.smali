.class Lorg/telegram/ui/Stars/StarGiftSheet$Roller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Roller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;,
        Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;,
        Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;,
        Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;,
        Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;
    }
.end annotation


# instance fields
.field private backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

.field private backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

.field backdropText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

.field private final backgrounds:Ljava/util/ArrayList;

.field private drawing:Z

.field private durationT:F

.field private lastFrameTime:J

.field private modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

.field modelText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

.field private final models:Ljava/util/ArrayList;

.field patternText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

.field private posted:Z

.field private realTime:F

.field private rolling:Z

.field private rollingGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

.field private sentDone:Z

.field private sentDone2:Z

.field private symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

.field private final symbols:Ljava/util/ArrayList;

.field public final topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

.field private whenDone:Ljava/lang/Runnable;

.field private whenDone2:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$N4awmFhHBJ_NlQdWi9VSEhpZ8cA(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->lambda$update$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$us0U7Q-tGiJzIKEDvaatDCH0gKc(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->lambda$update$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmodelRoller(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmodels(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrollingGift(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rollingGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)V
    .locals 1

    .line 3442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    .line 3304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    .line 3305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbols:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3518
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->realTime:F

    const/4 v0, 0x0

    .line 3519
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    .line 3520
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone:Z

    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone2:Z

    .line 3443
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    .line 3444
    invoke-static {p1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object p1

    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private synthetic lambda$update$0()V
    .locals 1

    const/4 v0, 0x0

    .line 3659
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    .line 3660
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->resetDrawing()V

    .line 3661
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->whenDone:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3662
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$update$1()V
    .locals 1

    .line 3669
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->whenDone2:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3670
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    const/4 v0, 0x0

    .line 3499
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    .line 3500
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->resetDrawing()V

    .line 3501
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v0, :cond_0

    .line 3502
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3504
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v0, :cond_1

    .line 3505
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3507
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v0, :cond_2

    .line 3508
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3510
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v0, :cond_3

    .line 3511
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3513
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->stopPreload()V

    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 3629
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3630
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->posted:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 3631
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->posted:Z

    .line 3632
    new-instance v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public isRolling()Z
    .locals 1

    .line 3623
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    return v0
.end method

.method public preload(Ljava/util/ArrayList;)V
    .locals 7

    .line 3462
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 3463
    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->detach()V

    goto :goto_0

    .line 3465
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3466
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3467
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3469
    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 3471
    new-instance v5, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v6}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 3472
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->attach()V

    .line 3473
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3476
    :cond_2
    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3477
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    .line 3478
    iget-object v5, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    invoke-direct {v6, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3481
    :cond_3
    const-class v0, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {p1, v0}, Lorg/telegram/ui/Stars/StarsController;->findAttributes(Ljava/util/ArrayList;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 3482
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 3483
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbols:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;

    invoke-direct {v4, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    return-void
.end method

.method public set(Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;ZLjava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    .line 3531
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rollingGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 3532
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    return v1

    :cond_1
    if-nez v3, :cond_2

    return v2

    .line 3537
    :cond_2
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    .line 3539
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v4}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeImageViewAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    move-result-object v4

    .line 3540
    iget-object v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v5}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradePatternAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    move-result-object v5

    .line 3541
    iget-object v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-virtual {v6}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->getUpgradeBackdropAttribute()Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    move-result-object v6

    .line 3543
    iget-object v7, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    invoke-static {v7, v8}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;

    .line 3544
    iget-object v8, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-static {v8, v9}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    .line 3545
    iget-object v9, v1, Lorg/telegram/tgnet/tl/TL_stars$StarGift;->attributes:Ljava/util/ArrayList;

    const-class v10, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    invoke-static {v9, v10}, Lorg/telegram/ui/Stars/StarsController;->findAttribute(Ljava/util/ArrayList;Ljava/lang/Class;)Lorg/telegram/tgnet/tl/TL_stars$StarGiftAttribute;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;

    const/4 v10, 0x1

    .line 3547
    iput-boolean v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    .line 3548
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rollingGift:Lorg/telegram/tgnet/tl/TL_stars$TL_starGiftUnique;

    move-object/from16 v1, p3

    .line 3549
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->whenDone:Ljava/lang/Runnable;

    move-object/from16 v1, p4

    .line 3550
    iput-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->whenDone2:Ljava/lang/Runnable;

    .line 3552
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v1, v11

    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    .line 3554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->lastFrameTime:J

    const/4 v1, 0x0

    .line 3555
    iput v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->realTime:F

    .line 3557
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone:Z

    .line 3558
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone2:Z

    .line 3559
    iput-boolean v10, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    .line 3561
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v1, :cond_3

    .line 3562
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3564
    :cond_3
    new-instance v15, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v1

    invoke-direct {v15, v1, v7}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;-><init>(Landroid/view/View;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 3565
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v15}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->attach()V

    .line 3566
    :cond_4
    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    invoke-direct {v14, v3, v4}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;-><init>(Lorg/telegram/ui/Components/BackupImageView;Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeModel;)V

    .line 3572
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v1, v1, v2

    const/4 v3, 0x2

    if-lez v1, :cond_5

    const/4 v1, 0x3

    move/from16 v17, v1

    goto :goto_1

    :cond_5
    move/from16 v17, v3

    :goto_1
    const v16, 0x3f666666    # 0.9f

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;-><init>(Ljava/lang/Runnable;Ljava/util/ArrayList;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FI)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    .line 3575
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v1, :cond_6

    .line 3576
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3578
    :cond_6
    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbols:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;

    invoke-direct {v14, v5}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    new-instance v15, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;

    invoke-direct {v15, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;)V

    .line 3584
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    move/from16 v17, v3

    goto :goto_2

    :cond_7
    move/from16 v17, v10

    :goto_2
    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;-><init>(Ljava/lang/Runnable;Ljava/util/ArrayList;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FI)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    .line 3587
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v1, :cond_8

    .line 3588
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3590
    :cond_8
    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    new-instance v15, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    invoke-direct {v15, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 3596
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    move/from16 v17, v3

    goto :goto_3

    :cond_9
    move/from16 v17, v10

    :goto_3
    const/high16 v16, 0x3f000000    # 0.5f

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;-><init>(Ljava/lang/Runnable;Ljava/util/ArrayList;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FI)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    .line 3599
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    if-eqz v1, :cond_a

    .line 3600
    invoke-virtual {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->detach()V

    .line 3602
    :cond_a
    new-instance v11, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    new-instance v12, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;

    invoke-direct {v12, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    iget-object v13, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    new-instance v14, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    invoke-direct {v14, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    new-instance v15, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    invoke-direct {v15, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;-><init>(Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributeBackdrop;)V

    .line 3608
    iget v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_b

    move/from16 v17, v3

    goto :goto_4

    :cond_b
    move/from16 v17, v10

    :goto_4
    const/high16 v16, 0x3fa00000    # 1.25f

    invoke-direct/range {v11 .. v17}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;-><init>(Ljava/lang/Runnable;Ljava/util/ArrayList;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FI)V

    iput-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    .line 3611
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->invalidate()V

    return v10
.end method

.method public skip()V
    .locals 1

    .line 3616
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->skip()V

    .line 3617
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->skip()V

    .line 3618
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->skip()V

    .line 3619
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->skip()V

    return-void
.end method

.method public stopPreload()V
    .locals 4

    .line 3488
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    if-eqz v0, :cond_0

    return-void

    .line 3490
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    .line 3491
    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;->detach()V

    goto :goto_0

    .line 3493
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->models:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3494
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backgrounds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3495
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public update()V
    .locals 41

    move-object/from16 v0, p0

    .line 3637
    iget-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->drawing:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3638
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->posted:Z

    .line 3639
    iget-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->rolling:Z

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    .line 3641
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->drawing:Z

    .line 3643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 3644
    iget-wide v5, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->lastFrameTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    .line 3645
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 3647
    iget v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->realTime:F

    add-float/2addr v6, v5

    iput v6, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->realTime:F

    .line 3649
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10, v8}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    invoke-virtual {v7, v5, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->step(FZ)F

    move-result v6

    .line 3650
    iget-object v7, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->realTime:F

    iget v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->durationT:F

    invoke-static {v9, v10, v11}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v1

    :goto_2
    invoke-virtual {v7, v5, v8}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->step(FZ)F

    move-result v7

    .line 3651
    iget-object v8, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-virtual {v9, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isAlmostFinished(F)Z

    move-result v9

    invoke-virtual {v8, v5, v9}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->step(FZ)F

    move-result v8

    .line 3652
    iget-object v9, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isAlmostFinished(F)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v12, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isAlmostFinished(F)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v2

    goto :goto_3

    :cond_4
    move v11, v1

    :goto_3
    invoke-virtual {v9, v5, v11}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->step(FZ)F

    move-result v5

    .line 3654
    iput-wide v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->lastFrameTime:J

    .line 3656
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone:Z

    if-nez v3, :cond_5

    .line 3657
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone:Z

    .line 3658
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3666
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    invoke-virtual {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->isAlmostFinished()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone2:Z

    if-nez v3, :cond_6

    .line 3667
    iput-boolean v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->sentDone2:Z

    .line 3668
    new-instance v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$Roller;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3675
    :cond_6
    iget-object v11, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

    if-eqz v11, :cond_a

    .line 3676
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v12, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget v4, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v9, v4

    sub-float/2addr v9, v5

    sub-float v13, v9, v10

    iget-object v9, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v12, v9, :cond_7

    move v14, v2

    goto :goto_4

    :cond_7
    move v14, v1

    :goto_4
    iget-object v15, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move/from16 v21, v10

    int-to-float v10, v4

    sub-float v16, v10, v5

    if-ne v15, v9, :cond_8

    move/from16 v17, v2

    goto :goto_5

    :cond_8
    move/from16 v17, v1

    :goto_5
    iget-object v3, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    int-to-float v4, v4

    sub-float/2addr v4, v5

    add-float v19, v4, v21

    if-ne v3, v9, :cond_9

    move/from16 v20, v2

    :goto_6
    move-object/from16 v18, v3

    goto :goto_7

    :cond_9
    move/from16 v20, v1

    goto :goto_6

    :goto_7
    invoke-virtual/range {v11 .. v20}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->update(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZ)V

    goto :goto_8

    :cond_a
    move/from16 v21, v10

    .line 3683
    :goto_8
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->patternText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

    if-eqz v3, :cond_e

    .line 3684
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v9, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget v10, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v11, v10

    sub-float/2addr v11, v8

    sub-float v24, v11, v21

    iget-object v11, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v9, v11, :cond_b

    move/from16 v25, v2

    goto :goto_9

    :cond_b
    move/from16 v25, v1

    :goto_9
    iget-object v12, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    int-to-float v13, v10

    sub-float v27, v13, v8

    if-ne v12, v11, :cond_c

    move/from16 v28, v2

    goto :goto_a

    :cond_c
    move/from16 v28, v1

    :goto_a
    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    int-to-float v10, v10

    sub-float/2addr v10, v8

    add-float v30, v10, v21

    if-ne v4, v11, :cond_d

    move/from16 v31, v2

    :goto_b
    move-object/from16 v22, v3

    move-object/from16 v29, v4

    move-object/from16 v23, v9

    move-object/from16 v26, v12

    goto :goto_c

    :cond_d
    move/from16 v31, v1

    goto :goto_b

    :goto_c
    invoke-virtual/range {v22 .. v31}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->update(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZ)V

    .line 3691
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropText:Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;

    if-eqz v3, :cond_12

    .line 3692
    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller2:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v8, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    iget v9, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v10, v9

    sub-float/2addr v10, v7

    sub-float v33, v10, v21

    iget-object v10, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v8, v10, :cond_f

    move/from16 v34, v2

    goto :goto_d

    :cond_f
    move/from16 v34, v1

    :goto_d
    iget-object v11, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    int-to-float v12, v9

    sub-float v36, v12, v7

    if-ne v11, v10, :cond_10

    move/from16 v37, v2

    goto :goto_e

    :cond_10
    move/from16 v37, v1

    :goto_e
    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    int-to-float v9, v9

    sub-float/2addr v9, v7

    add-float v39, v9, v21

    if-ne v4, v10, :cond_11

    move/from16 v40, v2

    :goto_f
    move-object/from16 v31, v3

    move-object/from16 v38, v4

    move-object/from16 v32, v8

    move-object/from16 v35, v11

    goto :goto_10

    :cond_11
    move/from16 v40, v1

    goto :goto_f

    :goto_10
    invoke-virtual/range {v31 .. v40}, Lorg/telegram/ui/Stars/StarGiftSheet$TextViewRoll;->update(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;FZ)V

    .line 3699
    :cond_12
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    iget-object v4, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->symbolRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    check-cast v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;

    iget-object v4, v4, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Symbol;->attr:Lorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;

    invoke-virtual {v3, v1, v4, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->setPattern(ILorg/telegram/tgnet/tl/TL_stars$starGiftAttributePattern;Z)V

    .line 3701
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->topView:Lorg/telegram/ui/Stars/StarGiftSheet$TopView;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$TopView;->-$$Nest$fgetimagesRollView(Lorg/telegram/ui/Stars/StarGiftSheet$TopView;)Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;

    move-result-object v22

    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->modelRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v4, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v23, v4

    check-cast v23, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    iget v7, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v8, v7

    sub-float/2addr v8, v5

    sub-float v24, v8, v21

    iget-object v8, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v4, v8, :cond_13

    move/from16 v25, v2

    goto :goto_11

    :cond_13
    move/from16 v25, v1

    :goto_11
    iget-object v4, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v26, v4

    check-cast v26, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    int-to-float v9, v7

    sub-float v27, v9, v5

    if-ne v4, v8, :cond_14

    move/from16 v28, v2

    goto :goto_12

    :cond_14
    move/from16 v28, v1

    :goto_12
    iget-object v3, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v29, v3

    check-cast v29, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;

    int-to-float v4, v7

    sub-float/2addr v4, v5

    add-float v30, v4, v21

    if-ne v3, v8, :cond_15

    move/from16 v31, v2

    goto :goto_13

    :cond_15
    move/from16 v31, v1

    :goto_13
    iget-object v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->backdropRoller:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;

    iget-object v4, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->prev:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v32, v4

    check-cast v32, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    iget v5, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->currentT:I

    int-to-float v7, v5

    sub-float/2addr v7, v6

    sub-float v33, v7, v21

    iget-object v7, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->finish:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    if-ne v4, v7, :cond_16

    move/from16 v34, v2

    goto :goto_14

    :cond_16
    move/from16 v34, v1

    :goto_14
    iget-object v4, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->current:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v35, v4

    check-cast v35, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    int-to-float v8, v5

    sub-float v36, v8, v6

    if-ne v4, v7, :cond_17

    move/from16 v37, v2

    goto :goto_15

    :cond_17
    move/from16 v37, v1

    :goto_15
    iget-object v3, v3, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$AttrRoller;->next:Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Attr;

    move-object/from16 v38, v3

    check-cast v38, Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;

    int-to-float v4, v5

    sub-float/2addr v4, v6

    add-float v39, v4, v21

    if-ne v3, v7, :cond_18

    move/from16 v40, v2

    goto :goto_16

    :cond_18
    move/from16 v40, v1

    :goto_16
    invoke-virtual/range {v22 .. v40}, Lorg/telegram/ui/Stars/StarGiftSheet$StickersRollView;->setDrawing(Lorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Sticker;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZLorg/telegram/ui/Stars/StarGiftSheet$Roller$Background;FZ)V

    .line 3711
    iput-boolean v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->drawing:Z

    .line 3712
    invoke-virtual {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$Roller;->invalidate()V

    return-void
.end method
