.class public Lorg/telegram/tgnet/TLRPC$TL_messageEntityBlockquote;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageEntityBlockquote"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36144
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    .locals 2

    .line 36171
    const-string/jumbo v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 36172
    const-string/jumbo v0, "length"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 36173
    const-string v0, "collapsed"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->collapsed:Z

    .line 36174
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 2

    .line 36149
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x1

    .line 36150
    invoke-static {v0, v1}, Lme/vkryl/core/BitwiseUtils;->hasFlag(II)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->collapsed:Z

    .line 36151
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 36152
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    return-void
.end method

.method public serializeToJson(Lorg/telegram/tgnet/json/TLJsonBuilder;)V
    .locals 2

    .line 36164
    const-string v0, "_"

    const-string/jumbo v1, "messageEntityBlockquote"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36165
    const-string/jumbo v0, "offset"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    .line 36166
    const-string/jumbo v0, "length"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    .line 36167
    const-string v0, "collapsed"

    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->collapsed:Z

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 3

    const v0, -0xe335554

    .line 36156
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36157
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->collapsed:Z

    invoke-static {v0, v1, v2}, Lme/vkryl/core/BitwiseUtils;->setFlag(IIZ)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->flags:I

    .line 36158
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36159
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36160
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
