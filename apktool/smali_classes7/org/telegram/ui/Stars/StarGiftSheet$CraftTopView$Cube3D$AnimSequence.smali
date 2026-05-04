.class public Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimSequence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;,
        Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final commands:Ljava/util/ArrayList;

.field private final cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

.field private currentIndex:I

.field private framesRemaining:I

.field private onComplete:Ljava/lang/Runnable;

.field private startMatrix:[F

.field private startVx:F

.field private startVy:F

.field private targetMatrix:[F

.field private totalFrames:I

.field private waitingForPull:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetwaitingForPull(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)V
    .locals 3

    .line 9818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9805
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 9806
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    .line 9808
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    const/16 v1, 0x10

    .line 9812
    new-array v2, v1, [F

    iput-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startMatrix:[F

    .line 9813
    new-array v1, v1, [F

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->targetMatrix:[F

    .line 9816
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    .line 9819
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    return-void
.end method

.method private easeOutCubic(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    .line 9987
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private executeNext()V
    .locals 5

    .line 9890
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    if-nez v0, :cond_9

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_1

    .line 9898
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    .line 9899
    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    .line 9901
    iget-object v1, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->type:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    goto/16 :goto_2

    .line 9916
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->x:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-static {v1, v2}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputfrictionEnabled(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;Z)V

    .line 9917
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    return-void

    .line 9935
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    .line 9936
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget-object v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->view:Landroid/view/View;

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->face:I

    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->frames:I

    invoke-static {v1, v2, v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mdoPull(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;Landroid/view/View;II)V

    return-void

    .line 9926
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetrotationMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[F

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9927
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget v2, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->face:I

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->rotation:F

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mcreateFaceMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;IF)[F

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->targetMatrix:[F

    .line 9928
    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->frames:I

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->totalFrames:I

    .line 9929
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    .line 9930
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetvx(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVx:F

    .line 9931
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetvy(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVy:F

    return-void

    .line 9921
    :cond_5
    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->frames:I

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    .line 9922
    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->totalFrames:I

    return-void

    .line 9910
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget v3, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->x:F

    iget v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->y:F

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->fling(FF)V

    .line 9911
    iput v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    .line 9912
    iput v2, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->totalFrames:I

    return-void

    .line 9903
    :cond_7
    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->runnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 9904
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 9906
    :cond_8
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    return-void

    .line 9891
    :cond_9
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputsequence(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;)V

    .line 9892
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 9893
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 9877
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    const/4 v0, 0x0

    .line 9878
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    .line 9879
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputsequence(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;)V

    return-void
.end method

.method public delay(I)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9833
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->DELAY:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v5, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fling(FF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9828
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->FLING:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public friction(Z)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9856
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->FRICTION:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    move v3, p1

    goto :goto_1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method onPullComplete()V
    .locals 1

    .line 9883
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 9884
    iput-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    .line 9885
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    :cond_0
    return-void
.end method

.method public put(Landroid/view/View;II)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 1

    const/4 v0, 0x0

    .line 9847
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->put(Landroid/view/View;IIF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/view/View;IIF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9851
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->PUT:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object v8, p1

    move v6, p2

    move v5, p3

    move v7, p4

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public run(Ljava/lang/Runnable;)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9823
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->RUN:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v9, p1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public start(Ljava/lang/Runnable;)V
    .locals 5

    .line 9861
    iput-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->onComplete:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 9862
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    .line 9863
    iput p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    .line 9864
    iput-boolean p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    .line 9866
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    :goto_0
    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 p1, p1, 0x1

    check-cast v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    .line 9867
    iget v3, v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->face:I

    if-ltz v3, :cond_0

    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    iget v3, v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->rotation:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    .line 9868
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetfaceRotations(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[F

    move-result-object v3

    iget v4, v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->face:I

    iget v2, v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->rotation:F

    aput v2, v3, v4

    goto :goto_0

    .line 9872
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {p1, p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputsequence(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;)V

    .line 9873
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    return-void
.end method

.method public steerTo(IIF)Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;
    .locals 10

    .line 9842
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    sget-object v2, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;->STEER:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v6, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;-><init>(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;FFIIFLandroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method tick()V
    .locals 12

    .line 9942
    iget-boolean v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cancelled:Z

    if-nez v0, :cond_6

    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->currentIndex:I

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 9944
    :cond_0
    iget-boolean v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->waitingForPull:Z

    if-eqz v1, :cond_1

    .line 9945
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mapplyPhysics(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)V

    return-void

    .line 9949
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->commands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;

    .line 9951
    iget-object v0, v0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$Cmd;->type:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence$CmdType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    .line 9962
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->totalFrames:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->easeOutCubic(F)F

    move-result v0

    sub-float/2addr v1, v0

    .line 9965
    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVx:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    cmpl-float v3, v3, v4

    const/16 v5, 0x10

    if-gtz v3, :cond_3

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVy:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 9966
    :cond_3
    new-array v11, v5, [F

    .line 9967
    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVx:F

    mul-float/2addr v3, v1

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x3f75c28f    # 0.96f

    mul-float v10, v3, v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$maxisAngleToMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;FFFF[F)V

    .line 9968
    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startMatrix:[F

    invoke-static {v3, v11, v6, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mmultiplyMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;[F[F[F)V

    .line 9969
    iget-object v6, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startVy:F

    mul-float/2addr v3, v1

    invoke-static {v6}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    mul-float v10, v3, v4

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v6 .. v11}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$maxisAngleToMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;FFFF[F)V

    .line 9970
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startMatrix:[F

    invoke-static {v1, v11, v3, v3}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mmultiplyMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;[F[F[F)V

    .line 9973
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    iget-object v3, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->startMatrix:[F

    iget-object v4, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->targetMatrix:[F

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetrotationMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[F

    move-result-object v6

    invoke-static {v1, v3, v4, v0, v6}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mlerpMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;[F[FF[F)V

    .line 9975
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    if-gtz v0, :cond_6

    .line 9977
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->targetMatrix:[F

    iget-object v1, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fgetrotationMatrix(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9978
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputvx(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;F)V

    .line 9979
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$fputvy(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;F)V

    .line 9980
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    return-void

    .line 9954
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->cube:Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;

    invoke-static {v0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;->-$$Nest$mapplyPhysics(Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D;)V

    .line 9955
    iget v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->framesRemaining:I

    if-gtz v0, :cond_6

    .line 9957
    invoke-direct {p0}, Lorg/telegram/ui/Stars/StarGiftSheet$CraftTopView$Cube3D$AnimSequence;->executeNext()V

    :cond_6
    :goto_0
    return-void
.end method
