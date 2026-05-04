.class Lorg/telegram/ui/TopicsFragment$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->updateChatInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field final synthetic val$bottomPannelVisibleLocal:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 2655
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$21;->this$0:Lorg/telegram/ui/TopicsFragment;

    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment$21;->val$bottomPannelVisibleLocal:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2658
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$21;->val$bottomPannelVisibleLocal:Z

    if-nez p1, :cond_0

    .line 2659
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$21;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetbottomOverlayContainer(Lorg/telegram/ui/TopicsFragment;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
