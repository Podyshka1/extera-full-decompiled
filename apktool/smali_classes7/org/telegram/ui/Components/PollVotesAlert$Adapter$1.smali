.class Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;
.super Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->createSectionCell()Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert$Adapter;Landroid/content/Context;)V
    .locals 0

    .line 1178
    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    iget-object p1, p1, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/PollVotesAlert$SectionCell;-><init>(Lorg/telegram/ui/Components/PollVotesAlert;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onCollapseClick()V
    .locals 3

    .line 1181
    sget v0, Lorg/telegram/messenger/R$id;->object_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    .line 1182
    iget-object v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xf

    if-gt v1, v2, :cond_0

    return-void

    .line 1185
    :cond_0
    iget-boolean v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-nez v1, :cond_1

    const/16 v1, 0xa

    .line 1187
    iput v1, v0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    .line 1189
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/PollVotesAlert;->animateSectionUpdates(Landroid/view/View;)V

    .line 1190
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter$1;->this$1:Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/Components/PollVotesAlert$Adapter;->this$0:Lorg/telegram/ui/Components/PollVotesAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/PollVotesAlert;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/PollVotesAlert;)Lorg/telegram/ui/Components/PollVotesAlert$Adapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;->update(Z)V

    return-void
.end method
