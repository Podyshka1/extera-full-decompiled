.class public Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_editExportedChatInvite"
.end annotation


# instance fields
.field public expire_date:I

.field public flags:I

.field public link:Ljava/lang/String;

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public request_needed:Z

.field public revoked:Z

.field public title:Ljava/lang/String;

.field public usage_limit:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59652
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59665
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_ExportedChatInvite;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x4235d08b

    .line 59669
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59670
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->revoked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    .line 59671
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59672
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59673
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->link:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 59674
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 59675
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->expire_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59677
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 59678
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->usage_limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59680
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 59681
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->request_needed:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 59683
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 59684
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_editExportedChatInvite;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
