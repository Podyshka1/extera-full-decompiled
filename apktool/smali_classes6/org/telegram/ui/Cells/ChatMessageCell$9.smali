.class Lorg/telegram/ui/Cells/ChatMessageCell$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/ChatMessageCell;->createStatusDrawableAnimator(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

.field final synthetic val$fromParent:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V
    .locals 0

    .line 23433
    iput-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iput-boolean p2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->val$fromParent:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 23436
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object p1, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->createStatusDrawableParams()I

    move-result p1

    .line 23437
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetanimateToStatusDrawableParams(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 23438
    iget-object v0, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetanimateToStatusDrawableParams(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->val$fromParent:Z

    invoke-static {v0, v1, p1, v2}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$mcreateStatusDrawableAnimator(Lorg/telegram/ui/Cells/ChatMessageCell;IIZ)V

    return-void

    .line 23440
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fputstatusDrawableAnimationInProgress(Lorg/telegram/ui/Cells/ChatMessageCell;Z)V

    .line 23441
    iget-object p1, p0, Lorg/telegram/ui/Cells/ChatMessageCell$9;->this$0:Lorg/telegram/ui/Cells/ChatMessageCell;

    iget-object v0, p1, Lorg/telegram/ui/Cells/ChatMessageCell;->transitionParams:Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;

    invoke-static {p1}, Lorg/telegram/ui/Cells/ChatMessageCell;->-$$Nest$fgetanimateToStatusDrawableParams(Lorg/telegram/ui/Cells/ChatMessageCell;)I

    move-result p1

    iput p1, v0, Lorg/telegram/ui/Cells/ChatMessageCell$TransitionParams;->lastStatusDrawableParams:I

    return-void
.end method
