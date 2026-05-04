.class public Lorg/telegram/tgnet/TLRPC$TL_userStatusOffline;
.super Lorg/telegram/tgnet/TLRPC$UserStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userStatusOffline"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31821
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$UserStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    .line 31825
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x8c703f

    .line 31829
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31830
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->expires:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
