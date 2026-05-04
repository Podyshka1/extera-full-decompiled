.class Lorg/telegram/ui/TopicsFragment$20;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/TopicsFragment;->animateToSearchView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/TopicsFragment;

.field final synthetic val$showSearch:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/TopicsFragment;Z)V
    .locals 0

    .line 2172
    iput-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iput-boolean p2, p0, Lorg/telegram/ui/TopicsFragment$20;->val$showSearch:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2176
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2177
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    iget-boolean v0, p0, Lorg/telegram/ui/TopicsFragment$20;->val$showSearch:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mupdateSearchProgress(Lorg/telegram/ui/TopicsFragment;F)V

    .line 2178
    iget-boolean p1, p0, Lorg/telegram/ui/TopicsFragment$20;->val$showSearch:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_1

    .line 2179
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetother(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 2181
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {v1}, Lorg/telegram/ui/TopicsFragment;->access$1400(Lorg/telegram/ui/TopicsFragment;)I

    move-result v1

    invoke-static {p1, v1}, Lorg/telegram/messenger/AndroidUtilities;->setAdjustResizeToNothing(Landroid/app/Activity;I)V

    .line 2182
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    invoke-static {p1}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$fgetsearchContainer(Lorg/telegram/ui/TopicsFragment;)Lorg/telegram/ui/TopicsFragment$MessagesSearchContainer;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2183
    iget-object p1, p0, Lorg/telegram/ui/TopicsFragment$20;->this$0:Lorg/telegram/ui/TopicsFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/TopicsFragment;->-$$Nest$mupdateCreateTopicButton(Lorg/telegram/ui/TopicsFragment;Z)V

    return-void
.end method
