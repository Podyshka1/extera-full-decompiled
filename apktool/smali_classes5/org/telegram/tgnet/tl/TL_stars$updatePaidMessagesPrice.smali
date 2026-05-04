.class public Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/tl/TL_stars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "updatePaidMessagesPrice"
.end annotation


# static fields
.field public static final constructor:I = 0x4b12327b


# instance fields
.field public channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

.field public flags:I

.field public send_paid_messages_stars:J

.field public suggestions_allowed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5640
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 5650
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x4b12327b    # 9581179.0f

    .line 5655
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5656
    iget-boolean v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->suggestions_allowed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->flags:I

    .line 5657
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 5658
    iget-object v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 5659
    iget-wide v0, p0, Lorg/telegram/tgnet/tl/TL_stars$updatePaidMessagesPrice;->send_paid_messages_stars:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
