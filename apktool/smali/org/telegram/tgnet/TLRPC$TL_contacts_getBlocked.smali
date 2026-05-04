.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_getBlocked"
.end annotation


# instance fields
.field public flags:I

.field public limit:I

.field public my_stories_from:Z

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55552
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeResponse(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;
    .locals 0

    .line 55561
    invoke-static {p1, p2, p3}, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$contacts_Blocked;

    move-result-object p1

    return-object p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, -0x65797080

    .line 55565
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55566
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->my_stories_from:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->flags:I

    .line 55567
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55568
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 55569
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_getBlocked;->limit:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
