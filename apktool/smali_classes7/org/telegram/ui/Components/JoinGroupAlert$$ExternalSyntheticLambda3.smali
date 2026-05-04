.class public final synthetic Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iput p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$1:I

    iput-object p3, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iget v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$1:I

    iget-object v2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda3;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/Components/JoinGroupAlert;->$r8$lambda$MmcQQbcg6QgEZcsrXtEhyl7fvc4(Lorg/telegram/ui/Components/JoinGroupAlert;ILorg/telegram/tgnet/TLRPC$TL_messages_importChatInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
