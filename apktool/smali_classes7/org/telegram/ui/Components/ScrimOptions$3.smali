.class Lorg/telegram/ui/Components/ScrimOptions$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ScrimOptions;->animateOpenTo(ZFLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ScrimOptions;

.field final synthetic val$after:Ljava/lang/Runnable;

.field final synthetic val$open:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ScrimOptions;ZLjava/lang/Runnable;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->val$open:Z

    iput-object p3, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->val$after:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->val$open:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fputopenProgress(Lorg/telegram/ui/Components/ScrimOptions;F)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetoptionsView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 245
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetoptionsView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    invoke-static {v2, v1, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 246
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetoptionsView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {v0}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetopenProgress(Lorg/telegram/ui/Components/ScrimOptions;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 257
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 258
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->this$0:Lorg/telegram/ui/Components/ScrimOptions;

    invoke-static {p1}, Lorg/telegram/ui/Components/ScrimOptions;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/Components/ScrimOptions;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 259
    iget-object p1, p0, Lorg/telegram/ui/Components/ScrimOptions$3;->val$after:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 260
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
