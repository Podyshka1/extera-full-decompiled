.class Lorg/telegram/ui/ActionBar/ActionBar$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/ActionBar;->updateCenterTitleLayoutAnimation(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lorg/telegram/ui/ActionBar/ActionBar;

.field final synthetic val$targetAvailableWidth:I

.field final synthetic val$targetCenterTitleX:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/ActionBar;II)V
    .locals 0

    .line 1405
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iput p2, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->val$targetCenterTitleX:I

    iput p3, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->val$targetAvailableWidth:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 1410
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1415
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fgetcenterTitleLayoutAnimator(Lorg/telegram/ui/ActionBar/ActionBar;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 1416
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputcenterTitleLayoutAnimator(Lorg/telegram/ui/ActionBar/ActionBar;Landroid/animation/ValueAnimator;)V

    .line 1418
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->cancelled:Z

    if-nez p1, :cond_1

    .line 1419
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->val$targetCenterTitleX:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputanimatedCenterTitleX(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    .line 1420
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    iget v0, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->val$targetAvailableWidth:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputanimatedCenterTitleAvailableWidth(Lorg/telegram/ui/ActionBar/ActionBar;F)V

    .line 1422
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputcenterTitleAnimationTargetX(Lorg/telegram/ui/ActionBar/ActionBar;I)V

    .line 1423
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBar$5;->this$0:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/ActionBar;->-$$Nest$fputcenterTitleAnimationTargetWidth(Lorg/telegram/ui/ActionBar/ActionBar;I)V

    return-void
.end method
