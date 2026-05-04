.class public Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateGroupCallChainBlocks"
.end annotation


# instance fields
.field public blocks:Ljava/util/ArrayList;

.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public next_offset:I

.field public sub_chain_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->sub_chain_id:I

    invoke-static {p1, p2}, Lorg/telegram/tgnet/Vector;->deserializeByteArray(Lorg/telegram/tgnet/InputSerializedData;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->next_offset:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5b88d771

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->sub_chain_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->blocks:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Lorg/telegram/messenger/Utilities$Callback;Ljava/util/ArrayList;)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;->next_offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
