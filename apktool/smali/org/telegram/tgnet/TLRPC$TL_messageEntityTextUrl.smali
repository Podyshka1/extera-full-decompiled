.class public Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_messageEntityTextUrl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35710
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    .locals 2

    .line 35735
    const-string/jumbo v0, "offset"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 35736
    const-string/jumbo v0, "length"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readInt32(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 35737
    const-string/jumbo v0, "url"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonParser;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 35715
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 35716
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 35717
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    return-void
.end method

.method public serializeToJson(Lorg/telegram/tgnet/json/TLJsonBuilder;)V
    .locals 2

    .line 35728
    const-string v0, "_"

    const-string/jumbo v1, "messageEntityTextUrl"

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35729
    const-string/jumbo v0, "offset"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    .line 35730
    const-string/jumbo v0, "length"

    iget v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeInt32(Ljava/lang/String;I)V

    .line 35731
    const-string/jumbo v0, "url"

    iget-object v1, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/json/TLJsonBuilder;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x76a6d327

    .line 35721
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35722
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35723
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35724
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
