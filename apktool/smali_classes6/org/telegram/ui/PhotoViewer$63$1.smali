.class Lorg/telegram/ui/PhotoViewer$63$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$63;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$63;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$63;)V
    .locals 0

    .line 12893
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 12901
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetphotoFilterView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/PhotoFilterView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/PhotoFilterView;->init()V

    .line 12902
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputimageMoveAnimation(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)V

    .line 12903
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object v0, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    iget p1, p1, Lorg/telegram/ui/PhotoViewer$63;->val$mode:I

    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputcurrentEditMode(Lorg/telegram/ui/PhotoViewer;I)V

    .line 12904
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mgetCaptionView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 12905
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    const/4 v0, 0x3

    if-eqz p1, :cond_2

    .line 12906
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetpaintKeyboardNotifier(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object v3, v3, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result v3

    if-eq v3, v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 12908
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcurrentEditMode(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    .line 12909
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputtranslateY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12911
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputswitchingToMode(Lorg/telegram/ui/PhotoViewer;I)V

    .line 12912
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToScale(Lorg/telegram/ui/PhotoViewer;F)V

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputscale(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12913
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToX(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12914
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputanimateToY(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12915
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetscale(Lorg/telegram/ui/PhotoViewer;)F

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$mupdateMinMax(Lorg/telegram/ui/PhotoViewer;F)V

    .line 12916
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1, v2}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fputpadImageForHorizontalInsets(Lorg/telegram/ui/PhotoViewer;Z)V

    .line 12917
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$63$1;->this$1:Lorg/telegram/ui/PhotoViewer$63;

    iget-object p1, p1, Lorg/telegram/ui/PhotoViewer$63;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->-$$Nest$fgetcontainerView(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
