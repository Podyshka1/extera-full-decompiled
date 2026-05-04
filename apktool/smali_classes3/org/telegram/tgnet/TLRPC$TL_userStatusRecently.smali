.class public Lorg/telegram/tgnet/TLRPC$TL_userStatusRecently;
.super Lorg/telegram/tgnet/TLRPC$UserStatus;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_userStatusRecently"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31913
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$UserStatus;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 0

    .line 31918
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->flags:I

    const/4 p2, 0x1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 31919
    :goto_0
    iput-boolean p2, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x7b197dc8

    .line 31923
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31924
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->by_me:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$UserStatus;->flags:I

    .line 31925
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
