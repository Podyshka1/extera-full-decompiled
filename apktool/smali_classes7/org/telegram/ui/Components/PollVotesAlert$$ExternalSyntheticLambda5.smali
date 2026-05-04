.class public final synthetic Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PollVotesAlert;

.field public final synthetic f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iput-object p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/ui/Components/PollVotesAlert$VotesList;

    iget-object v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/PollVotesAlert;->$r8$lambda$ARK5jgciKsOMwFO1HS4TvjGBjxU(Lorg/telegram/ui/Components/PollVotesAlert;Lorg/telegram/ui/Components/PollVotesAlert$VotesList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
