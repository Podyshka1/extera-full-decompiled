.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/messenger/MessageObject;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$6:I

.field public final synthetic f$7:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;IILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$0:Lorg/telegram/ui/ChatActivity;

    iput p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$1:I

    iput p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$3:Lorg/telegram/messenger/MessageObject;

    iput-object p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$5:Lorg/telegram/tgnet/TLRPC$Chat;

    iput p7, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$6:I

    iput-object p8, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$7:Lorg/telegram/messenger/MessageObject;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$0:Lorg/telegram/ui/ChatActivity;

    iget v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$1:I

    iget v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$3:Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$5:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$6:I

    iget-object v7, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda453;->f$7:Lorg/telegram/messenger/MessageObject;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$MSyFYuNmzCVrHBjtea6dRUW00eg(Lorg/telegram/ui/ChatActivity;IILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
