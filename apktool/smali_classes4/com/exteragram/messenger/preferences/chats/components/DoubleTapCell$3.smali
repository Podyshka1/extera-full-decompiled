.class Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->updateIcons(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

.field final synthetic val$finalI:I

.field final synthetic val$icons:[I


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;I[I)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    iput p2, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    iput-object p3, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$icons:[I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 174
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 175
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->-$$Nest$fgetactionIcon(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[I

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    iget-object v1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$icons:[I

    if-nez v0, :cond_0

    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapAction:I

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    sget v2, Lcom/exteragram/messenger/ExteraConfig;->doubleTapActionOutOwner:I

    aget v1, v1, v2

    :goto_0
    aput v1, p1, v0

    .line 176
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->-$$Nest$fgetanimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    aget-object p1, p1, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 177
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->-$$Nest$fgetanimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 178
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->-$$Nest$fgetanimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    aget-object p1, p1, v0

    new-instance v0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3$1;

    invoke-direct {v0, p0}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3$1;-><init>(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    iget-object p1, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->this$0:Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;

    invoke-static {p1}, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;->-$$Nest$fgetanimator(Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell;)[Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/exteragram/messenger/preferences/chats/components/DoubleTapCell$3;->val$finalI:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
