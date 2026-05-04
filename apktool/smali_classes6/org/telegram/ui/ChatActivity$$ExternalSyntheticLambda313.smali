.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/PollCreateActivity$PollCreateActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ZLorg/telegram/messenger/MessageObject;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$2:Lorg/telegram/messenger/MessageObject;

    iput p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$3:I

    return-void
.end method


# virtual methods
.method public final sendPoll(Lorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$2:Lorg/telegram/messenger/MessageObject;

    iget v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda313;->f$3:I

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$ophgNc0pmjfLCyK7sKpzBu0VJwk(Lorg/telegram/ui/ChatActivity;ZLorg/telegram/messenger/MessageObject;ILorg/telegram/tgnet/TLRPC$MessageMedia;Ljava/util/HashMap;ZI)V

    return-void
.end method
