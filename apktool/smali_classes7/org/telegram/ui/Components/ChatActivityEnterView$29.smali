.class Lorg/telegram/ui/Components/ChatActivityEnterView$29;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->setSuggestionButtonVisible(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V
    .locals 0

    .line 3755
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->val$visible:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3758
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetisLiveComment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3759
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetsuggestButton(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$29;->val$visible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method
