.class public Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;
.super Lorg/telegram/tgnet/TLMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_toggleNoForwards"
.end annotation


# instance fields
.field public enabled:Z

.field public flags:I

.field public peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field public request_msg_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59817
    invoke-direct {p0}, Lorg/telegram/tgnet/TLMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 59817
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public deserializeResponseT(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;
    .locals 0

    .line 59827
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4df7e5cb

    .line 59831
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59832
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 59833
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 59834
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->enabled:Z

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeBool(Z)V

    .line 59835
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59836
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_toggleNoForwards;->request_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_0
    return-void
.end method
