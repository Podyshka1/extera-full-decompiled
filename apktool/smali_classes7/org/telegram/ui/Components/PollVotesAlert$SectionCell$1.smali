.class Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;
.super Lorg/telegram/ui/Components/AnimatedTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

.field final synthetic val$this$0:Lorg/telegram/ui/Components/PollVotesAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;Landroid/content/Context;Lorg/telegram/ui/Components/PollVotesAlert;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    iput-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->val$this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    .line 190
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 191
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/RecyclerListView;->getPinnedHeader()Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 192
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$000(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;

    iget-object v0, v0, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->access$100(Lorg/telegram/ui/Components/PollVotesAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method
