.class public Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/json/TLJsonBuilder$Serializable;
.implements Lorg/telegram/tgnet/json/TLJsonParser$Deserializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageEntityFormattedDate"
.end annotation


# instance fields
.field public date:I

.field public day_of_week:Z

.field public long_date:Z

.field public long_time:Z

.field public relative:Z

.field public short_date:Z

.field public short_time:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public applyFlags()V
    .locals 2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->relative:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_time:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_time:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_date:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_date:Z

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lorg/telegram/tgnet/TLObject;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->day_of_week:Z

    return-void
.end method

.method public deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    .locals 2

    const-string/jumbo v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    const-string/jumbo v0, "length"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    const-string/jumbo v0, "relative"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->relative:Z

    const-string/jumbo v0, "short_time"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_time:Z

    const-string/jumbo v0, "long_time"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_time:Z

    const-string/jumbo v0, "short_date"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_date:Z

    const-string/jumbo v0, "long_date"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_date:Z

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->date:I

    invoke-virtual {p0}, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->applyFlags()V

    return-void
.end method

.method public serializeToJson(Lorg/telegram/tgnet/json/TLJsonBuilder;)V
    .locals 2

    const-string v0, "_"

    const-string/jumbo v1, "messageEntityFormattedDate"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "offset"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    const-string/jumbo v0, "length"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    const-string/jumbo v0, "relative"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->relative:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "short_time"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_time:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "long_time"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_time:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "short_date"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_date:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "long_date"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_date:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0x6fb53839    # -3.999138E-29f

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->relative:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x2

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_time:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x4

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_time:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x8

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->short_date:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x10

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->long_date:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/16 v1, 0x20

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->day_of_week:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityFormattedDate;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
