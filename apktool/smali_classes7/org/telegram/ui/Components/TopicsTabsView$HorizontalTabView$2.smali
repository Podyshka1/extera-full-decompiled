.class Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->setSelected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

.field final synthetic val$selected:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;Z)V
    .locals 0

    .line 1807
    iput-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;->val$selected:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1810
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;->val$selected:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$fputselectT(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;F)V

    .line 1811
    iget-object p1, p0, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView$2;->this$0:Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;

    invoke-static {p1}, Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;->-$$Nest$mupdateTextColor(Lorg/telegram/ui/Components/TopicsTabsView$HorizontalTabView;)V

    return-void
.end method
