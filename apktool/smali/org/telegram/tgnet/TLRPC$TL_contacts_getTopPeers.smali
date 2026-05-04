.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_getTopPeers"
.end annotation


# instance fields
.field public bots_app:Z

.field public bots_inline:Z

.field public bots_pm:Z

.field public channels:Z

.field public correspondents:Z

.field public flags:I

.field public forward_chats:Z

.field public forward_users:Z

.field public groups:Z

.field public hash:J

.field public limit:I

.field public offset:I

.field public phone_calls:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57397
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 57415
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_TopPeers;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x68cb874a

    .line 57419
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57420
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->correspondents:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57421
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_pm:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57422
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_inline:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57423
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->phone_calls:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x9

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57424
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->forward_users:Z

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x10

    goto :goto_4

    :cond_4
    and-int/lit8 v0, v0, -0x11

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57425
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->forward_chats:Z

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    goto :goto_5

    :cond_5
    and-int/lit8 v0, v0, -0x21

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57426
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->groups:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x400

    goto :goto_6

    :cond_6
    and-int/lit16 v0, v0, -0x401

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57427
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->channels:Z

    if-eqz v1, :cond_7

    const v1, 0x8000

    or-int/2addr v0, v1

    goto :goto_7

    :cond_7
    const v1, -0x8001

    and-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57428
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->bots_app:Z

    if-eqz v1, :cond_8

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    goto :goto_8

    :cond_8
    const v1, -0x10001

    and-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->flags:I

    .line 57429
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57430
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57431
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 57432
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getTopPeers;->hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    return-void
.end method
