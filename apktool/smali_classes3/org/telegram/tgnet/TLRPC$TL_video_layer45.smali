.class public Lorg/telegram/tgnet/TLRPC$TL_video_layer45;
.super Lorg/telegram/tgnet/TLRPC$Video;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_video_layer45"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28079
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Video;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 10

    .line 28083
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    .line 28084
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    .line 28085
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    .line 28086
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    .line 28087
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    .line 28088
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    const-wide/16 v5, 0x0

    .line 28089
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v8

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v7, p1

    move v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 28090
    invoke-interface {v7, v9}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    .line 28091
    invoke-interface {v7, v9}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    .line 28092
    invoke-interface {v7, v9}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x8d7782d

    .line 28096
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28097
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 28098
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 28099
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28100
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->duration:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28101
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->mime_type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 28102
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->size:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28103
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 28104
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28105
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->w:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 28106
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Video;->h:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
