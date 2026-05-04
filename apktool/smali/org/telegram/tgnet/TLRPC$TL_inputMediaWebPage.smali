.class public Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;
.super Lorg/telegram/tgnet/TLRPC$InputMedia;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_inputMediaWebPage"
.end annotation


# instance fields
.field public force_large_media:Z

.field public force_small_media:Z

.field public optional:Z

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31209
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$InputMedia;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 31218
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 31219
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_large_media:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 31220
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_small_media:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v2, v3

    .line 31221
    :cond_2
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->optional:Z

    .line 31222
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->url:Ljava/lang/String;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x3de477b7

    .line 31226
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31227
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_large_media:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 31228
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->force_small_media:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 31229
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->optional:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x5

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 31230
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 31231
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaWebPage;->url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    return-void
.end method
