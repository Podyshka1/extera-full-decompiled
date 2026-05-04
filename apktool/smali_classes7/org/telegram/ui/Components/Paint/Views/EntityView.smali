.class public abstract Lorg/telegram/ui/Components/Paint/Views/EntityView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;,
        Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    }
.end annotation


# static fields
.field private static final STICKY_ANGLES:Ljava/util/List;


# instance fields
.field private angle:F

.field private angleAnimator:Landroid/animation/ValueAnimator;

.field private announcedDrag:Z

.field private announcedMultitouchDrag:Z

.field private announcedSelection:Z

.field private announcedTrash:Z

.field private bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private currentStickyAngle:I

.field private final cxy:[F

.field private delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

.field private fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

.field private fromStickyAnimatedAngle:F

.field private fromStickyToAngle:F

.field private hadMultitouch:Z

.field public hasPanned:Z

.field public hasReleased:Z

.field private hasStickyAngle:Z

.field private hasTransformed:Z

.field private lastIsMultitouch:Z

.field private lastSelectionContainer:Landroid/view/ViewGroup;

.field private final longPressRunnable:Ljava/lang/Runnable;

.field private position:Lorg/telegram/ui/Components/Point;

.field private previousLocationCX:F

.field private previousLocationCY:F

.field private previousLocationX:F

.field private previousLocationX2:F

.field private previousLocationY:F

.field private previousLocationY2:F

.field private recognizedLongPress:Z

.field private scale:F

.field private selectAnimator:Landroid/animation/ValueAnimator;

.field private selectT:F

.field private selecting:Z

.field public selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

.field private setStickyAngleRunnable:Ljava/lang/Runnable;

.field private setStickyXRunnable:Ljava/lang/Runnable;

.field private setStickyYRunnable:Ljava/lang/Runnable;

.field private stickyAngleRunnableValue:I

.field private stickyAnimatedAngle:F

.field private stickyX:I

.field private stickyXAnimator:Landroid/animation/ValueAnimator;

.field private stickyXRunnableValue:I

.field private stickyY:I

.field private stickyYAnimator:Landroid/animation/ValueAnimator;

.field private stickyYRunnableValue:I

.field private trashAnimator:Landroid/animation/ValueAnimator;

.field private trashScale:F

.field private uuid:Ljava/util/UUID;

.field private final xy:[F

.field private final xy2:[F


# direct methods
.method public static synthetic $r8$lambda$1cp5lFRyXYkvy5aXyfAzcuDzOvo(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyY()V

    return-void
.end method

.method public static synthetic $r8$lambda$1shj3mYw7BO-mAFO-kd8u8MQTUE(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$rotate$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2gzyS6m825f2_uoH1pfU6prjLA8(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyX()V

    return-void
.end method

.method public static synthetic $r8$lambda$B0Zq2HQi06Y23cP9_iwBhLTpTeA(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$runStickyXAnimator$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GYegdnw5j7dydNN4H-FnNsQideU(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MFduqLyG3Dxf0XZlp2xmMGkbJr4(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$updateTrash$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R_vFuqVNXNEdXiP1K-Wa50PILT8(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$runStickyYAnimator$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$exya5FK8lLJisf8HPnnYk9yV9cE(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$rotate$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uob5a4MhD9ixuOInKZG0z09-Agw(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$updateSelect$6(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yp16Pe_vx6bLZDCUSkZGvXPhHxA(Lorg/telegram/ui/Components/Paint/Views/EntityView;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lambda$rotate$4(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetangleAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetfromStickyAngleAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethasTransformed(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastIsMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlongPressRunnable(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Ljava/lang/Runnable;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;)F
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetselecting(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstickyXAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstickyYAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetxy(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetxy2(Lorg/telegram/ui/Components/Paint/Views/EntityView;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputangleAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfromStickyAngleAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhadMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputhasTransformed(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastIsMultitouch(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationCX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationCY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationX(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationX2(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX2:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationY(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousLocationY2(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY2:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstickyAnimatedAngle(Lorg/telegram/ui/Components/Paint/Views/EntityView;F)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstickyXAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputstickyYAnimator(Lorg/telegram/ui/Components/Paint/Views/EntityView;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$monTouchMove(Lorg/telegram/ui/Components/Paint/Views/EntityView;FFZFF)Z
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FFZFF)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monTouchUp(Lorg/telegram/ui/Components/Paint/Views/EntityView;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/16 v0, -0x5a

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x5a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0xb4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v2, v5, v0

    const/4 v0, 0x2

    aput-object v3, v5, v0

    const/4 v0, 0x3

    aput-object v4, v5, v0

    .line 38
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->STICKY_ANGLES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V
    .locals 2

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 78
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 79
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 81
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    .line 82
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 83
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    .line 84
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 91
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    .line 104
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAngleRunnableValue:I

    .line 120
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    .line 121
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyXRunnable:Ljava/lang/Runnable;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyYRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x2

    .line 324
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    .line 325
    new-array v1, v0, [F

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    .line 326
    new-array v0, v0, [F

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 598
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale:F

    .line 745
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    .line 988
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    .line 128
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    .line 129
    iput-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    return-void
.end method

.method private height()F
    .locals 8

    .line 545
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityLongClicked(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$rotate$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 655
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angle:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    .line 656
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void
.end method

.method private synthetic lambda$rotate$4(I)V
    .locals 2

    .line 640
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    const/4 p1, 0x1

    .line 641
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    const/4 p1, 0x3

    const/4 v0, 0x2

    .line 643
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :catch_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    .line 647
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 649
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 650
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 652
    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    .line 653
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 654
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 658
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 667
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$rotate$5(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 690
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float p1, p1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angle:F

    iget-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void
.end method

.method private synthetic lambda$runStickyXAnimator$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 420
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$runStickyYAnimator$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 438
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method private synthetic lambda$updateSelect$6(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 768
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    .line 769
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 770
    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p1

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 771
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    mul-float/2addr v1, v4

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 772
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const v2, 0x3f4ccccd    # 0.8f

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTrash$7(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 998
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    .line 999
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1000
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz p1, :cond_0

    .line 1001
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    const v1, 0x3f666666    # 0.9f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const/high16 v4, 0x3fa00000    # 1.25f

    mul-float/2addr v3, v4

    const/4 v5, 0x0

    invoke-static {v3, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1002
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    mul-float/2addr v1, v4

    invoke-static {v1, v2, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1003
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    const v2, 0x3f4ccccd    # 0.8f

    sub-float/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1005
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private onTouchMove(FFZFF)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 175
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return v6

    .line 178
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz p3, :cond_1

    add-float v8, v1, v3

    div-float/2addr v8, v7

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    if-eqz p3, :cond_2

    add-float v9, v2, v4

    div-float/2addr v9, v7

    goto :goto_1

    :cond_2
    move v9, v2

    .line 181
    :goto_1
    iget v10, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCX:F

    sub-float v10, v8, v10

    div-float/2addr v10, v5

    .line 182
    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCY:F

    sub-float v11, v9, v11

    div-float/2addr v11, v5

    float-to-double v12, v10

    float-to-double v14, v11

    .line 183
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 184
    iget-boolean v13, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz v13, :cond_3

    const/high16 v13, 0x40c00000    # 6.0f

    goto :goto_2

    :cond_3
    const/high16 v13, 0x41800000    # 16.0f

    :goto_2
    cmpl-float v12, v12, v13

    if-gtz v12, :cond_5

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    return v6

    .line 186
    :cond_5
    :goto_3
    iget-object v12, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0, v10, v11}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->pan(FF)V

    if-eqz p3, :cond_7

    .line 190
    invoke-static {v1, v2, v3, v4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v10

    .line 191
    iget v11, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    iget v12, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    iget v13, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX2:F

    iget v14, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY2:F

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-lez v12, :cond_6

    div-float/2addr v10, v11

    .line 193
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale(F)V

    :cond_6
    sub-float v10, v2, v4

    float-to-double v10, v10

    sub-float v12, v1, v3

    float-to-double v12, v12

    .line 195
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    iget v12, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    iget v13, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY2:F

    sub-float/2addr v12, v13

    float-to-double v12, v12

    iget v14, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    iget v15, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX2:F

    sub-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    .line 196
    iget v12, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angle:F

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v10, v10

    add-float/2addr v12, v10

    invoke-virtual {v0, v12}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotate(F)V

    .line 199
    :cond_7
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 200
    iput v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 201
    iput v8, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCX:F

    .line 202
    iput v9, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCY:F

    if-eqz p3, :cond_8

    .line 204
    iput v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX2:F

    .line 205
    iput v4, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY2:F

    :cond_8
    const/4 v1, 0x1

    .line 207
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 209
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v2, :cond_a

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    if-nez v2, :cond_9

    iget v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    if-eqz v2, :cond_a

    .line 210
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 213
    :cond_a
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    if-nez v2, :cond_b

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_b

    .line 214
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 215
    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragStart()V

    .line 217
    :cond_b
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    if-nez v2, :cond_c

    if-eqz p3, :cond_c

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_c

    .line 218
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    .line 219
    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragMultitouchStart()V

    .line 221
    :cond_c
    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    if-eqz v2, :cond_d

    if-nez p3, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_d

    .line 222
    iput-boolean v6, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    .line 223
    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragMultitouchEnd()V

    .line 225
    :cond_d
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelected()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez v2, :cond_e

    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_e

    .line 226
    invoke-interface {v2, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 227
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 230
    :cond_e
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_11

    .line 231
    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x42840000    # 66.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    move v3, v1

    goto :goto_4

    :cond_f
    move v3, v6

    :goto_4
    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedTop(Z)V

    .line 232
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v7

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    const/high16 v5, 0x42e40000    # 114.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    move v3, v1

    goto :goto_5

    :cond_10
    move v3, v6

    :goto_5
    invoke-interface {v2, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedBottom(Z)V

    .line 235
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v2, :cond_12

    .line 236
    invoke-interface {v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->isEntityDeletable()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    if-nez p3, :cond_13

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v7

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    const/high16 v4, 0x42980000    # 76.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v8, v9, v2, v3}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_13

    move v2, v1

    goto :goto_6

    :cond_13
    move v2, v6

    .line 235
    :goto_6
    invoke-direct {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateTrash(Z)V

    .line 241
    iget-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v2, v6}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return v1
.end method

.method private onTouchUp(Z)V
    .locals 3

    .line 249
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    invoke-interface {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragEnd(Z)V

    .line 251
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedDrag:Z

    .line 253
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedMultitouchDrag:Z

    if-nez p1, :cond_1

    .line 254
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz p1, :cond_1

    .line 255
    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntitySelected(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    .line 257
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz p1, :cond_2

    .line 258
    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedTop(Z)V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDraggedBottom(Z)V

    .line 261
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 262
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->recognizedLongPress:Z

    .line 263
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    .line 264
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasTransformed:Z

    const/4 p1, 0x1

    .line 265
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 266
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedSelection:Z

    .line 268
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAngleRunnableValue:I

    .line 269
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    .line 270
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    .line 273
    :cond_3
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    .line 274
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyXRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 275
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    .line 276
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyYRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 277
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz p1, :cond_4

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_4
    return-void
.end method

.method private rotateInternal(F)V
    .locals 0

    .line 718
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 719
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    if-nez p1, :cond_0

    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    if-eqz p1, :cond_1

    .line 720
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    .line 722
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method private varargs runStickyXAnimator([F)V
    .locals 2

    .line 415
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 416
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 418
    :cond_0
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    .line 419
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$1;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 429
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private varargs runStickyYAnimator([F)V
    .locals 2

    .line 433
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 436
    :cond_0
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    .line 437
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 438
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$2;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 447
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateSelect(Landroid/view/ViewGroup;Z)V
    .locals 3

    .line 747
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    if-eq v0, p2, :cond_4

    .line 748
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    .line 750
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 755
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-nez p1, :cond_1

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    .line 760
    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    .line 761
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 762
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    .line 764
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    .line 766
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    if-eqz p2, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_3
    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p1, p2, v0

    const/4 p1, 0x1

    aput v1, p2, p1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    .line 767
    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 775
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$5;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 784
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x118

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 785
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 786
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateStickyX()V
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyXRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 452
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 455
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    .line 456
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_1

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 459
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 460
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 462
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 463
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 466
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :catch_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyXAnimator([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateStickyY()V
    .locals 2

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyYRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 474
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    if-ne v0, v1, :cond_0

    return-void

    .line 477
    :cond_0
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    .line 478
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 481
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 484
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    const/4 v1, 0x2

    if-nez v0, :cond_3

    .line 485
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    return-void

    :cond_3
    const/4 v0, 0x3

    .line 488
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :catch_0
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->runStickyYAnimator([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateTrash(Z)V
    .locals 4

    .line 991
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    if-eq v0, p1, :cond_2

    .line 992
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    .line 996
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    .line 997
    new-instance v1, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x118

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1009
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1011
    iput-boolean p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->announcedTrash:Z

    .line 1012
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    if-eqz v0, :cond_2

    .line 1013
    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->onEntityDragTrash(Z)V

    :cond_2
    return-void
.end method

.method private width()F
    .locals 8

    .line 541
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-double v6, v0

    mul-double/2addr v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    div-float/2addr v0, v1

    float-to-double v0, v0

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    double-to-float v0, v2

    return v0
.end method


# virtual methods
.method protected allowHaptic()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public allowLongPressOnSelected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
.end method

.method public deselect()V
    .locals 2

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastSelectionContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelect(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1028
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getBounceScale()F

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1030
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1031
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1033
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashCenter()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 1037
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    .line 1038
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->trashScale:F

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1041
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1042
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected getBounceScale()F
    .locals 1

    const v0, 0x3d23d70a    # 0.04f

    return v0
.end method

.method protected getMaxScale()F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method protected getMinScale()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPosition()Lorg/telegram/ui/Components/Point;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    return-object v0
.end method

.method protected getPositionX()F
    .locals 6

    .line 549
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 551
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 553
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    const/4 v3, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    .line 554
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->width()F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingLeft()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 556
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 558
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->width()F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingRight()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 560
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 561
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    return v0

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method protected getPositionY()F
    .locals 6

    .line 570
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 571
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 572
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 574
    iget v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    const/4 v3, 0x1

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v2, v3, :cond_0

    .line 575
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->height()F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingTop()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 577
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 579
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->height()F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingBottom()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_2
    move v1, v0

    .line 581
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 582
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    return v0

    :cond_3
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getScale()F
    .locals 1

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 2

    .line 726
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v0
.end method

.method protected getStickyPaddingBottom()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getStickyPaddingLeft()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getStickyPaddingRight()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getStickyPaddingTop()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getStickyX()I
    .locals 1

    .line 291
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    return v0
.end method

.method public final getStickyY()I
    .locals 1

    .line 299
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    return v0
.end method

.method public getUUID()Ljava/util/UUID;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hadMultitouch()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch:Z

    return v0
.end method

.method public hasPanned()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasPanned:Z

    return v0
.end method

.method public final hasTouchDown()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selecting:Z

    return v0
.end method

.method public isSelectedProgress()Z
    .locals 2

    .line 791
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectT:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 171
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {p1, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-interface {v0, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->allowInteraction(Lorg/telegram/ui/Components/Paint/Views/EntityView;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 334
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    invoke-interface {v0, v2, v3, v4}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 337
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_2

    .line 338
    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    invoke-interface {v3, v4, v5, v6}, Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;->getTransformedTouch(FF[F)V

    goto :goto_1

    :cond_2
    move v10, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v0

    :goto_2
    if-eqz v10, :cond_4

    .line 345
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    aget v4, v3, v1

    iget-object v5, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    aget v6, v5, v1

    add-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    aput v4, v0, v1

    .line 346
    aget v3, v3, v2

    aget v4, v5, v2

    add-float/2addr v3, v4

    div-float/2addr v3, v6

    aput v3, v0, v2

    goto :goto_3

    .line 348
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    aget v4, v3, v1

    aput v4, v0, v1

    .line 349
    aget v3, v3, v2

    aput v3, v0, v2

    .line 351
    :goto_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    if-eq v0, v10, :cond_5

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    aget v3, v0, v1

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 353
    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 354
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    aget v3, v0, v1

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX2:F

    .line 355
    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY2:F

    .line 356
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    aget v3, v0, v1

    iput v3, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCX:F

    .line 357
    aget v0, v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCY:F

    .line 358
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {v0, v10}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    .line 362
    :cond_5
    iput-boolean v10, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    .line 363
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->cxy:[F

    aget v3, v0, v1

    .line 364
    aget v0, v0, v2

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x3

    if-eq v4, v2, :cond_6

    const/4 v3, 0x2

    if-eq v4, v3, :cond_7

    if-eq v4, v0, :cond_6

    move-object v7, p0

    move v0, v1

    goto/16 :goto_7

    :cond_6
    move-object v7, p0

    goto :goto_4

    .line 392
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    aget v8, v0, v1

    aget v9, v0, v2

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy2:[F

    aget v11, v0, v1

    aget v12, v0, v2

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchMove(FFZFF)Z

    move-result v0

    goto :goto_7

    :goto_4
    if-ne v4, v0, :cond_8

    move v0, v2

    goto :goto_5

    :cond_8
    move v0, v1

    .line 399
    :goto_5
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->onTouchUp(Z)V

    .line 400
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 402
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_9

    .line 403
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->hide(Z)V

    :cond_9
    :goto_6
    move v0, v2

    goto :goto_7

    :cond_a
    move-object v7, p0

    .line 371
    iput-boolean v1, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch:Z

    .line 372
    iget-object v4, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->xy:[F

    aget v5, v4, v1

    iput v5, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationX:F

    .line 373
    aget v4, v4, v2

    iput v4, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationY:F

    .line 374
    iput v3, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCX:F

    .line 375
    iput v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->previousLocationCY:F

    .line 377
    iput-boolean v1, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasReleased:Z

    .line 379
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    if-eqz v0, :cond_c

    iget v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    if-nez v0, :cond_b

    iget v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    if-eqz v0, :cond_c

    .line 380
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Paint/Views/EntitiesContainerView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 382
    :cond_c
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    .line 384
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    if-nez v10, :cond_9

    .line 386
    iget-object v0, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->longPressRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v0, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_6

    .line 409
    :goto_7
    iput-boolean v10, v7, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hadMultitouch:Z

    .line 411
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    return v1

    :cond_e
    :goto_8
    return v2
.end method

.method public pan(FF)V
    .locals 9

    .line 495
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lorg/telegram/ui/Components/Point;->x:F

    .line 496
    iget p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    add-float/2addr p1, p2

    iput p1, v0, Lorg/telegram/ui/Components/Point;->y:F

    .line 498
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_9

    .line 501
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-nez p2, :cond_2

    .line 502
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float p2, p2, v6

    if-gtz p2, :cond_0

    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v7, 0x42e00000    # 112.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpg-float p2, p2, v6

    if-gez p2, :cond_0

    move p2, v2

    goto :goto_0

    .line 504
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->width()F

    move-result v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingLeft()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr p2, v6

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr p2, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    int-to-float v7, v7

    cmpg-float p2, p2, v7

    if-gtz p2, :cond_1

    move p2, v1

    goto :goto_0

    .line 506
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->x:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->width()F

    move-result v7

    div-float/2addr v7, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingRight()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr p2, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    sub-int/2addr v7, v6

    int-to-float v6, v7

    sub-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float p2, p2, v6

    if-gtz p2, :cond_2

    move p2, v0

    goto :goto_0

    :cond_2
    move p2, v3

    .line 510
    :goto_0
    iget v6, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    const-wide/16 v7, 0xfa

    if-eq v6, p2, :cond_4

    .line 511
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    if-nez p2, :cond_3

    .line 512
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyX()V

    goto :goto_1

    .line 514
    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyXRunnable:Ljava/lang/Runnable;

    invoke-static {p2, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 519
    :cond_4
    :goto_1
    iget-boolean p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    if-nez p2, :cond_7

    .line 520
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float p2, p2, v6

    if-gtz p2, :cond_5

    move v0, v2

    goto :goto_2

    .line 522
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->height()F

    move-result v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingTop()F

    move-result v6

    add-float/2addr v2, v6

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v6

    mul-float/2addr v2, v6

    sub-float/2addr p2, v2

    const/high16 v2, 0x42800000    # 64.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr p2, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    int-to-float v6, v6

    cmpg-float p2, p2, v6

    if-gtz p2, :cond_6

    move v0, v1

    goto :goto_2

    .line 524
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    iget p2, p2, Lorg/telegram/ui/Components/Point;->y:F

    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->height()F

    move-result v1

    div-float/2addr v1, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getStickyPaddingBottom()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v1, v5

    add-float/2addr p2, v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v3

    .line 528
    :goto_2
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    if-eq p1, v0, :cond_9

    .line 529
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    if-nez v0, :cond_8

    .line 530
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyY()V

    goto :goto_3

    .line 532
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyYRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v7, v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 537
    :cond_9
    :goto_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public rotate(F)V
    .locals 4

    .line 621
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 622
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    .line 623
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyX()V

    .line 625
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    if-eqz v0, :cond_1

    .line 626
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    .line 627
    invoke-direct {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateStickyY()V

    .line 630
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angle:F

    .line 631
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    if-nez v0, :cond_4

    iget-boolean v2, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    if-nez v2, :cond_4

    .line 632
    sget-object v0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->STICKY_ANGLES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v2, v1

    sub-float/2addr v2, p1

    .line 633
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 634
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAngleRunnableValue:I

    if-eq v0, v1, :cond_b

    .line 635
    iput v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAngleRunnableValue:I

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 637
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 639
    :cond_3
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_b

    .line 675
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x41400000    # 12.0f

    cmpl-float v0, v0, v2

    if-gez v0, :cond_7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastIsMultitouch:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 703
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_6

    .line 704
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAnimatedAngle:F

    goto :goto_1

    .line 706
    :cond_6
    iget p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->currentStickyAngle:I

    int-to-float p1, p1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, -0x1

    .line 676
    iput v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyAngleRunnableValue:I

    .line 677
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_8

    .line 678
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setStickyAngleRunnable:Ljava/lang/Runnable;

    .line 681
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->angleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_9

    .line 682
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 684
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 685
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    const/4 v0, 0x2

    .line 688
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    .line 689
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 690
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 691
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$4;-><init>(Lorg/telegram/ui/Components/Paint/Views/EntityView;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 701
    iput-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->hasStickyAngle:Z

    .line 710
    :cond_b
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAngleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_c

    .line 711
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyToAngle:F

    .line 712
    iget v1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->fromStickyAnimatedAngle:F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-static {v1, p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerpAngle(FFF)F

    move-result p1

    .line 714
    :cond_c
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->rotateInternal(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public scale(F)V
    .locals 5

    .line 601
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale:F

    mul-float/2addr p1, v0

    .line 602
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale:F

    const v1, 0x3dcccccd    # 0.1f

    .line 603
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 604
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMaxScale()F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMinScale()F

    move-result v2

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result p1

    .line 605
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->allowHaptic()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMaxScale()F

    move-result v1

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gez v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMinScale()F

    move-result v1

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMaxScale()F

    move-result v4

    cmpl-float v4, v0, v4

    if-gez v4, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getMinScale()F

    move-result v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    if-eq v1, v2, :cond_4

    const/4 v0, 0x3

    .line 607
    :try_start_0
    invoke-virtual {p0, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    :catch_0
    :cond_4
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 611
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public select(Landroid/view/ViewGroup;)V
    .locals 1

    .line 796
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->lastSelectionContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelect(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->delegate:Lorg/telegram/ui/Components/Paint/Views/EntityView$EntityViewDelegate;

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    return-void
.end method

.method public setPosition(Lorg/telegram/ui/Components/Point;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->position:Lorg/telegram/ui/Components/Point;

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updatePosition()V

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 160
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->scale:F

    .line 161
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setSelectionVisibility(Z)V
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 807
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStickyX(I)V
    .locals 0

    .line 287
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyXRunnableValue:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyX:I

    return-void
.end method

.method public setStickyY(I)V
    .locals 0

    .line 295
    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyYRunnableValue:I

    iput p1, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->stickyY:I

    return-void
.end method

.method public trashCenter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updatePosition()V
    .locals 3

    .line 591
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 592
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 593
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    .line 594
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-virtual {p0, v0}, Landroid/view/View;->setY(F)V

    .line 595
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method

.method public updateSelectionView()V
    .locals 1

    .line 738
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/EntityView;->selectionView:Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;->updatePosition()V

    :cond_0
    return-void
.end method
