.class public Lorg/telegram/tgnet/TLRPC$TL_inputPaymentCredentials;
.super Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputPaymentCredentials"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28254
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 28258
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 28259
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    .line 28260
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x3417d728

    .line 28264
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28265
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->save:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->flags:I

    .line 28266
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28267
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$InputPaymentCredentials;->data:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
