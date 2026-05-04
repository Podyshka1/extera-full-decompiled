.class public Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_auth_loggedOut"
.end annotation


# instance fields
.field public flags:I

.field public future_auth_token:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35375
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;
    .locals 2

    const v0, -0x3c5d7ca1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 35382
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;-><init>()V

    .line 35383
    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 35387
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35389
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    :cond_0
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x3c5d7ca1

    .line 35394
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35395
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35396
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 35397
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_auth_loggedOut;->future_auth_token:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    :cond_0
    return-void
.end method
