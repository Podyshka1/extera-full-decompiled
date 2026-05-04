.class Lorg/telegram/ui/Components/PollVotesAlert$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert;->updateLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$9;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1104
    iget-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$9;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fputactionBarAnimation(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
