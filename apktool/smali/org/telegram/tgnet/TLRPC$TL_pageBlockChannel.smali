.class public Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_pageBlockChannel"
.end annotation


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$Chat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30255
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 30261
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Chat;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x10e8ae4b

    .line 30265
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 30266
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
