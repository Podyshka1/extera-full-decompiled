.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$left:F

.field final synthetic val$right:F

.field final synthetic val$startWidth:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;IIFF)V
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$targetWidth:I

    iput p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$startWidth:I

    iput p4, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$left:F

    iput p5, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$right:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 657
    iget p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$targetWidth:I

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$startWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 658
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$startWidth:I

    add-int/2addr v1, p1

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$msetWidth(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/view/View;I)V

    .line 659
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$misInRTLMode(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 660
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$left:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 661
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmMainPanel(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 662
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowPanel(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    return-void

    .line 664
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$right:F

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 665
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmMainPanel(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$startWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    .line 666
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowPanel(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmContentContainer(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    iget v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$6;->val$targetWidth:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    return-void
.end method
