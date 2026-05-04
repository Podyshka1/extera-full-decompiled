.class Lorg/telegram/ui/Components/PasscodeView$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PasscodeView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PasscodeView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PasscodeView;Landroid/content/Context;)V
    .locals 0

    .line 709
    iput-object p1, p0, Lorg/telegram/ui/Components/PasscodeView$4;->this$0:Lorg/telegram/ui/Components/PasscodeView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 712
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 714
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/view/View;

    if-eqz p2, :cond_1

    .line 715
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    .line 716
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    .line 717
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 719
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p3, p4

    invoke-virtual {p0, p3}, Landroid/view/View;->setPivotX(F)V

    .line 720
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    iget p3, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 p5, 0x11

    if-ne p3, p5, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Landroid/view/View;->setPivotY(F)V

    .line 721
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    .line 722
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    :cond_1
    return-void
.end method
