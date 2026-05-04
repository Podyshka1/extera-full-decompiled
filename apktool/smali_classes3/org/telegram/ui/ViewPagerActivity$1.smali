.class Lorg/telegram/ui/ViewPagerActivity$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ViewPagerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ViewPagerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ViewPagerActivity;Landroid/content/Context;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canScrollBackward(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ViewPagerActivity;->canScrollBackward(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected canScrollForward(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ViewPagerActivity;->canScrollForward(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getAvailableTranslationX()F
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected getManualScrollDuration()J
    .locals 2

    const-wide/16 v0, 0x140

    return-wide v0
.end method

.method protected onItemSelected(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ViewPagerFixed;->onItemSelected(Landroid/view/View;Landroid/view/View;II)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p1}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$mcheckFragmentsVisibility(Lorg/telegram/ui/ViewPagerActivity;)V

    return-void
.end method

.method protected onScrollEnd()V
    .locals 1

    .line 71
    invoke-super {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->onScrollEnd()V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ViewPagerActivity;->onViewPagerScrollEnd()V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {v0}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$mcheckFragmentsVisibility(Lorg/telegram/ui/ViewPagerActivity;)V

    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ViewPagerActivity;->onViewPagerTabAnimationUpdate(Z)V

    .line 91
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p1}, Lorg/telegram/ui/ViewPagerActivity;->-$$Nest$mcheckFragmentsVisibility(Lorg/telegram/ui/ViewPagerActivity;)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/ViewPagerActivity$1;->this$0:Lorg/telegram/ui/ViewPagerActivity;

    invoke-static {p1}, Lorg/telegram/ui/ViewPagerActivity;->access$000(Lorg/telegram/ui/ViewPagerActivity;)V

    return-void
.end method
