.class Lorg/telegram/ui/GradientHeaderActivity$7;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GradientHeaderActivity;->createParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GradientHeaderActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GradientHeaderActivity;Landroid/content/Context;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lorg/telegram/ui/GradientHeaderActivity$7;->this$0:Lorg/telegram/ui/GradientHeaderActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected configure()V
    .locals 3

    .line 455
    new-instance v0, Lorg/telegram/ui/GradientHeaderActivity$7$1;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/GradientHeaderActivity$7$1;-><init>(Lorg/telegram/ui/GradientHeaderActivity$7;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/16 v1, 0x64

    .line 461
    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->type:I

    const/4 v1, 0x0

    .line 462
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->roundEffect:Z

    .line 463
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useRotate:Z

    const/4 v2, 0x1

    .line 464
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    .line 465
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 466
    iput-boolean v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->isCircle:Z

    const/4 v1, 0x4

    .line 467
    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->size1:I

    const v1, 0x3f7ae148    # 0.98f

    .line 468
    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k3:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k2:F

    iput v1, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->k1:F

    .line 469
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-void
.end method

.method protected getStarsRectWidth()I
    .locals 1

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method
