.class public final synthetic Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/PollVotesAlert;

.field public final synthetic f$1:[Ljava/lang/Integer;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iput-object p2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Integer;

    iput p3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ChatActivity;

    iput-object p5, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/PollVotesAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$1:[Ljava/lang/Integer;

    iget v2, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/Components/PollVotesAlert$$ExternalSyntheticLambda1;->f$5:Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/PollVotesAlert;->$r8$lambda$2hNydy3ezgpZQqVNj3yz4ixFSeE(Lorg/telegram/ui/Components/PollVotesAlert;[Ljava/lang/Integer;ILorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_pollAnswerVoters;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
