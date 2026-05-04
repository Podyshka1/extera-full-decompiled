.class public final synthetic Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PollVotesAlert;

.field public final synthetic f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$3:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iput-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/tgnet/TLObject;

    iput-object p4, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$2:Lorg/telegram/tgnet/TLObject;

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda6;->f$3:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PollVotesAlert;->$r8$lambda$G6nqOhmU8HpVDSZZ0b8fh0-j0WQ(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/tgnet/TLObject;Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
