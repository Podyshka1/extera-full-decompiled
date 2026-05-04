.class Lorg/telegram/ui/Components/PollVotesAlert$VotesList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/PollVotesAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VotesList"
.end annotation


# instance fields
.field public collapsed:Z

.field public collapsedCount:I

.field public count:I

.field public next_offset:Ljava/lang/String;

.field public option:[B

.field public users:Ljava/util/ArrayList;

.field public votes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;[B)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 125
    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    .line 128
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->count:I

    iput v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->count:I

    .line 129
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->votes:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    .line 130
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->users:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->users:Ljava/util/ArrayList;

    .line 131
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_votesList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->next_offset:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->option:[B

    return-void
.end method


# virtual methods
.method public getCollapsed()I
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 145
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getCount()I
    .locals 2

    .line 136
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsed:Z

    if-eqz v0, :cond_0

    .line 137
    iget v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->collapsedCount:I

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$VotesList;->votes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
