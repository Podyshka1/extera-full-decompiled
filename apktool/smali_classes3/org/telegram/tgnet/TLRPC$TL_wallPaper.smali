.class public Lorg/telegram/tgnet/TLRPC$TL_wallPaper;
.super Lorg/telegram/tgnet/TLRPC$WallPaper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_wallPaper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53321
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WallPaper;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 4

    .line 53325
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    .line 53326
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 53327
    :goto_0
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 53328
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 53329
    :goto_2
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    move v2, v3

    .line 53330
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    .line 53331
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    .line 53332
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    .line 53333
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 53334
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 53335
    invoke-interface {p1, p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$WallPaperSettings;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    :cond_4
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x5bc83c13

    .line 53340
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53341
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53342
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->creator:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 53343
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->isDefault:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, -0x3

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 53344
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->pattern:Z

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    and-int/lit8 v0, v0, -0x9

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 53345
    iget-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->dark:Z

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_3
    and-int/lit8 v0, v0, -0x11

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    .line 53346
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 53347
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 53348
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->slug:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 53349
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    .line 53350
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    .line 53351
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$WallPaper;->settings:Lorg/telegram/tgnet/TLRPC$WallPaperSettings;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLObject;->serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V

    :cond_4
    return-void
.end method
