.class public Lorg/telegram/tgnet/TLRPC$TL_photo;
.super Lorg/telegram/tgnet/TLRPC$Photo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photo"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36598
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 36602
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 36603
    :goto_0
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    .line 36604
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 36605
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    .line 36606
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    .line 36607
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 36608
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    .line 36609
    const-string/jumbo v4, "wrong Vector magic, got %x"

    const v5, 0x1cb5c415

    if-eq v1, v5, :cond_2

    if-nez p2, :cond_1

    goto/16 :goto_3

    .line 36611
    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36615
    :cond_2
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_4

    .line 36617
    iget-wide v7, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const-wide/16 v11, 0x0

    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v14

    const-wide/16 v9, 0x0

    move-object/from16 v13, p1

    move/from16 v15, p2

    invoke-static/range {v7 .. v15}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_3

    .line 36621
    :cond_3
    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 36623
    :cond_4
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_8

    .line 36624
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v5, :cond_6

    if-nez p2, :cond_5

    goto :goto_3

    .line 36627
    :cond_5
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 36631
    :cond_6
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_8

    .line 36633
    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    const-wide/16 v10, 0x0

    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v13

    move-object/from16 v12, p1

    move/from16 v14, p2

    invoke-static/range {v8 .. v14}, Lorg/telegram/tgnet/TLRPC$VideoSize;->TLdeserialize(JJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v2

    if-nez v2, :cond_7

    :goto_3
    return-void

    .line 36637
    :cond_7
    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 36640
    :cond_8
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x4e6859b

    .line 36644
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36645
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->has_stickers:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    or-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v0, v0, -0x2

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    .line 36646
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36647
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 36648
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 36649
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->file_reference:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 36650
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 36651
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 36652
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 36653
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->video_sizes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 36655
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Photo;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    return-void
.end method
