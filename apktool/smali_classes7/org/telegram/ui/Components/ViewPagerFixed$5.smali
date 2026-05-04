.class Lorg/telegram/ui/Components/ViewPagerFixed$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ViewPagerFixed;->translateAnimator(Landroid/view/View;F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ViewPagerFixed;Landroid/view/View;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iput-object p2, p0, Lorg/telegram/ui/Components/ViewPagerFixed$5;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed$5;->this$0:Lorg/telegram/ui/Components/ViewPagerFixed;

    iget-object v1, p0, Lorg/telegram/ui/Components/ViewPagerFixed$5;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->setTranslationX(Landroid/view/View;F)V

    return-void
.end method
