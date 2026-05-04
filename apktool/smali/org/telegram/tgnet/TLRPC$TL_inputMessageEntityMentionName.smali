.class public Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;
.super Lorg/telegram/tgnet/TLRPC$MessageEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMessageEntityMentionName"
.end annotation


# instance fields
.field public user_id:Lorg/telegram/tgnet/TLRPC$InputUser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35979
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$MessageEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public deserializeFromJson(Lorg/telegram/tgnet/json/TLJsonParser;)V
    .locals 1

    .line 36005
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NotImplementedError"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 1

    .line 35986
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    .line 35987
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    .line 35988
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$InputUser;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    return-void
.end method

.method public serializeToJson(Lorg/telegram/tgnet/json/TLJsonBuilder;)V
    .locals 1

    .line 36000
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NotImplementedError"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 1

    const v0, 0x208e68c9

    .line 35992
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35993
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35994
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 35995
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMessageEntityMentionName;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    return-void
.end method
