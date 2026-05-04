.class Lorg/telegram/ui/Cells/DialogsEmptyCell$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/DialogsEmptyCell;->startUtyanCollapseAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/DialogsEmptyCell;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->-$$Nest$fgetonUtyanAnimationEndListener(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->-$$Nest$fgetonUtyanAnimationEndListener(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->-$$Nest$fgetutyanAnimator(Lorg/telegram/ui/Cells/DialogsEmptyCell;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 251
    iget-object p1, p0, Lorg/telegram/ui/Cells/DialogsEmptyCell$2;->this$0:Lorg/telegram/ui/Cells/DialogsEmptyCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/DialogsEmptyCell;->-$$Nest$fpututyanAnimator(Lorg/telegram/ui/Cells/DialogsEmptyCell;Landroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method
