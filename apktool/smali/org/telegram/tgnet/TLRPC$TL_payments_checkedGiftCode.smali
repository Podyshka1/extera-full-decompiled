.class public Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;
.super Lorg/telegram/tgnet/TLObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_payments_checkedGiftCode"
.end annotation


# instance fields
.field public boost:Lorg/telegram/tgnet/tl/TL_stories$Boost;

.field public chats:Ljava/util/ArrayList;

.field public date:I

.field public days:I

.field public flags:I

.field public from_id:Lorg/telegram/tgnet/TLRPC$Peer;

.field public giveaway_msg_id:I

.field public months:I

.field public to_id:J

.field public used_date:I

.field public users:Ljava/util/ArrayList;

.field public via_giveaway:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->chats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;
    .locals 2

    const v0, -0x1467c071

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;-><init>()V

    :goto_0
    const-class v1, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    invoke-static {v1, v0, p0, p1, p2}, Lorg/telegram/tgnet/TLObject;->TLdeserialize(Ljava/lang/Class;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object p0

    check-cast p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    return-object p0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->giveaway_msg_id:I

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    :cond_3
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->days:I

    int-to-float v0, v0

    const/high16 v1, 0x41f00000    # 30.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->months:I

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    :cond_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channels_adminLogResults$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->chats:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_attachMenuBots$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x1467c071

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->via_giveaway:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, -0x5

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->giveaway_msg_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->to_id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->days:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->chats:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->users:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
