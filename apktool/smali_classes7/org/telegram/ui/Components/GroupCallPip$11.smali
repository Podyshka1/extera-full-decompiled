.class Lorg/telegram/ui/Components/GroupCallPip$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallPip;->showRemoveTooltip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallPip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$11;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 877
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$11;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object p1, p1, Lorg/telegram/ui/Components/GroupCallPip;->windowRemoveTooltipView:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$11;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/telegram/ui/Components/GroupCallPip;->animateToPrepareRemove:Z

    const/4 v0, 0x0

    .line 879
    iput v0, p1, Lorg/telegram/ui/Components/GroupCallPip;->prepareToRemoveProgress:F

    return-void
.end method
