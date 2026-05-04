.class final Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAccelerateInterpolator"
.end annotation


# instance fields
.field private final BASE:I

.field private final LOGS_SCALE:F

.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 1

    .line 1320
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 1321
    iput p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->BASE:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1322
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V

    return-void
.end method

.method private computeLog(FI)F
    .locals 2

    int-to-double v0, p2

    neg-float p1, p1

    float-to-double p1, p1

    .line 1325
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    const/16 v1, 0x64

    .line 1330
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->computeLog(FI)F

    move-result p1

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$LogAccelerateInterpolator;->LOGS_SCALE:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method
