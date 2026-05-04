.class public Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;
.super Lorg/telegram/tgnet/TLRPC$Update;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_updateNewQuickReply"
.end annotation


# instance fields
.field public quick_reply:Lorg/telegram/tgnet/TLRPC$TL_quickReply;


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

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;->quick_reply:Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0xac258e9

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_updateNewQuickReply;->quick_reply:Lorg/telegram/tgnet/TLRPC$TL_quickReply;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_quickReply;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
