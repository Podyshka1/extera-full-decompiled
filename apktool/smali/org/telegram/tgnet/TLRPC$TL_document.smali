.class public Lorg/telegram/tgnet/TLRPC$TL_document;
.super Lorg/telegram/tgnet/TLRPC$Document;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_document"
.end annotation


# static fields
.field public static final constructor:I = -0x702b3b28


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29364
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Document;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/InputSerializedData;Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 29368
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    .line 29369
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 29370
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 29371
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readByteArray(Z)[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    .line 29372
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 29373
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 29374
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt64(Z)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    .line 29375
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    const/4 v10, 0x1

    and-int/2addr v1, v10

    const/4 v11, 0x0

    const-string/jumbo v12, "wrong Vector magic, got %x"

    const v13, 0x1cb5c415

    if-eqz v1, :cond_3

    .line 29376
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v13, :cond_1

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 29379
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29383
    :cond_1
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v14

    move v15, v11

    :goto_0
    if-ge v15, v14, :cond_3

    .line 29385
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const-wide/16 v5, 0x0

    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v8

    const-wide/16 v1, 0x0

    move-object/from16 v7, p1

    move/from16 v9, p2

    invoke-static/range {v1 .. v9}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(JJJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 29389
    :cond_2
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 29392
    :cond_3
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 29393
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    if-eq v1, v13, :cond_5

    if-nez p2, :cond_4

    goto :goto_2

    .line 29396
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-static {v12, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29400
    :cond_5
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v8

    :goto_1
    if-ge v11, v8, :cond_7

    .line 29402
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v6

    const-wide/16 v1, 0x0

    move-object/from16 v5, p1

    move/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lorg/telegram/tgnet/TLRPC$VideoSize;->TLdeserialize(JJLorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$VideoSize;

    move-result-object v1

    if-nez v1, :cond_6

    :goto_2
    return-void

    .line 29406
    :cond_6
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    move/from16 v7, p2

    .line 29409
    invoke-interface/range {p1 .. p2}, Lorg/telegram/tgnet/InputSerializedData;->readInt32(Z)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 29410
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument$$ExternalSyntheticLambda0;-><init>()V

    move-object/from16 v5, p1

    invoke-static {v5, v1, v7}, Lorg/telegram/tgnet/Vector;->deserialize(Lorg/telegram/tgnet/InputSerializedData;Lorg/telegram/tgnet/Vector$TLDeserializer;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/OutputSerializedData;)V
    .locals 2

    const v0, -0x702b3b28

    .line 29414
    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29415
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29416
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 29417
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 29418
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->file_reference:[B

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeByteArray([B)V

    .line 29419
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29420
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeString(Ljava/lang/String;)V

    .line 29421
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-interface {p1, v0, v1}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt64(J)V

    .line 29422
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 29423
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 29425
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 29426
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->video_thumbs:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    .line 29428
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-interface {p1, v0}, Lorg/telegram/tgnet/OutputSerializedData;->writeInt32(I)V

    .line 29429
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lorg/telegram/tgnet/Vector;->serialize(Lorg/telegram/tgnet/OutputSerializedData;Ljava/util/ArrayList;)V

    return-void
.end method
