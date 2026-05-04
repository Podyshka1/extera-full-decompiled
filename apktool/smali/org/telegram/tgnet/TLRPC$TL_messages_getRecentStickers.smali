.class public Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messages_getRecentStickers"
.end annotation


# instance fields
.field public attached:Z

.field public flags:I

.field public hash:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58069
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 58077
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$messages_RecentStickers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x6256bfc5

    .line 58081
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58082
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->attached:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->flags:I

    .line 58083
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 58084
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messages_getRecentStickers;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
