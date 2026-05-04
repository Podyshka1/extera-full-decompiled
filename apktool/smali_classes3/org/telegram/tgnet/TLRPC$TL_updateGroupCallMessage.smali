.class public Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateGroupCallMessage"
.end annotation


# instance fields
.field public call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field public message:Lorg/telegram/tgnet/TLRPC$GroupCallMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Update;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCallMessage;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$GroupCallMessage;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x27cd90f3

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->message:Lorg/telegram/tgnet/TLRPC$GroupCallMessage;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$GroupCallMessage;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
