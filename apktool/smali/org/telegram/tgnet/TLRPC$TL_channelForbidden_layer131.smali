.class public Lorg/telegram/tgnet/TLRPC$TL_channelForbidden_layer131;
.super Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelForbidden_layer131"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43187
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channelForbidden;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 43191
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 43192
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    move v2, v3

    .line 43193
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    .line 43194
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    .line 43195
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    .line 43196
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    .line 43197
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 43198
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result p1

    iput p1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->until_date:I

    :cond_2
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, 0x289da732

    .line 43203
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43204
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->broadcast:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    or-int/lit8 v0, v0, 0x20

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    and-int/lit8 v0, v0, -0x21

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43205
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_1
    and-int/lit16 v0, v0, -0x101

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    .line 43206
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43207
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 43208
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 43209
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 43210
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 43211
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Chat;->until_date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    :cond_2
    return-void
.end method
