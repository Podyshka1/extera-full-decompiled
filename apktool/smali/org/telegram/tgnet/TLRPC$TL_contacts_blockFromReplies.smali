.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_blockFromReplies"
.end annotation


# instance fields
.field public delete_history:Z

.field public delete_message:Z

.field public flags:I

.field public msg_id:I

.field public report_spam:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55659
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55669
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$Updates;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Updates;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x29a8962c

    .line 55673
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55674
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->delete_message:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->flags:I

    .line 55675
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->delete_history:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->flags:I

    .line 55676
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->report_spam:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->flags:I

    .line 55677
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55678
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockFromReplies;->msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
