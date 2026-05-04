.class public Lorg/telegram/messenger/MessageObject$GroupedMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;,
        Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field public cachedWidthForCaption:I

.field public captionAbove:Z

.field public captionMessage:Lorg/telegram/messenger/MessageObject;

.field public groupId:J

.field public hasCaption:Z

.field public hasSibling:Z

.field public isDocuments:Z

.field private maxSizeWidth:I

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field public posArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public positions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;",
            ">;"
        }
    .end annotation
.end field

.field public positionsArray:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray;"
        }
    .end annotation
.end field

.field public reversed:Z

.field public final transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    .line 1216
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    .line 1217
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    const/4 v0, -0x1

    .line 1222
    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->cachedWidthForCaption:I

    const/16 v0, 0x320

    .line 1235
    iput v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1237
    new-instance v0, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    invoke-direct {v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->transitionParams:Lorg/telegram/messenger/MessageObject$GroupedMessages$TransitionParams;

    return-void
.end method

.method private multiHeight([FII)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 1263
    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1265
    :cond_0
    iget p1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 41

    move-object/from16 v0, p0

    .line 1271
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1272
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1273
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    const/4 v1, 0x0

    .line 1274
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/16 v2, 0x320

    .line 1276
    iput v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    .line 1279
    iget-object v2, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1281
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    return-void

    :cond_0
    if-ge v2, v4, :cond_1

    goto/16 :goto_39

    .line 1288
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    .line 1296
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    .line 1299
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionAbove:Z

    .line 1300
    iget-boolean v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v6, :cond_2

    add-int/lit8 v6, v2, -0x1

    goto :goto_0

    :cond_2
    move v6, v3

    :goto_0
    move v8, v3

    move v10, v8

    move v11, v10

    move v12, v4

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_1
    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v13, :cond_4

    if-ltz v6, :cond_3

    goto :goto_2

    :cond_3
    const v17, 0x3f99999a    # 1.2f

    goto/16 :goto_c

    :cond_4
    if-ge v6, v2, :cond_3

    .line 1301
    :goto_2
    iget-object v13, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject;

    .line 1302
    iget-boolean v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v15, :cond_5

    add-int/lit8 v15, v2, -0x1

    goto :goto_3

    :cond_5
    move v15, v3

    :goto_3
    if-ne v6, v15, :cond_a

    .line 1303
    iput-object v1, v13, Lorg/telegram/messenger/MessageObject;->isOutOwnerCached:Ljava/lang/Boolean;

    .line 1304
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1305
    iget-object v8, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v15, :cond_6

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->saved_from_peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-nez v15, :cond_7

    :cond_6
    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v15, v15, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    if-eqz v15, :cond_8

    iget-object v15, v8, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v17, v8

    iget-wide v7, v15, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:J

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-nez v7, :cond_7

    iget-wide v7, v15, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:J

    cmp-long v7, v7, v18

    if-nez v7, :cond_7

    .line 1308
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v7, :cond_7

    iget-object v7, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    instance-of v7, v7, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v7, :cond_8

    :cond_7
    move v8, v4

    goto :goto_4

    :cond_8
    move v8, v3

    .line 1310
    :goto_4
    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1311
    :cond_9
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    .line 1314
    :cond_a
    iget-object v7, v13, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v7, :cond_b

    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->invert_media:Z

    if-eqz v7, :cond_b

    .line 1315
    iput-boolean v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionAbove:Z

    .line 1317
    :cond_b
    iget-object v7, v13, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v15

    invoke-static {v7, v15}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 1318
    new-instance v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v15}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    const v17, 0x3f99999a    # 1.2f

    .line 1319
    iget-boolean v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v14, :cond_d

    if-nez v6, :cond_c

    :goto_5
    move v14, v4

    goto :goto_6

    :cond_c
    move v14, v3

    goto :goto_6

    :cond_d
    add-int/lit8 v14, v2, -0x1

    if-ne v6, v14, :cond_c

    goto :goto_5

    :goto_6
    iput-boolean v14, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    if-nez v7, :cond_e

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_7

    .line 1320
    :cond_e
    iget v14, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v14, v14

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v7, v7

    div-float v7, v14, v7

    :goto_7
    iput v7, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v14, v7, v17

    if-lez v14, :cond_f

    .line 1323
    const-string/jumbo v7, "w"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_f
    const v14, 0x3f4ccccd    # 0.8f

    cmpg-float v7, v7, v14

    if-gez v7, :cond_10

    .line 1325
    const-string/jumbo v7, "n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1327
    :cond_10
    const-string/jumbo v7, "q"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1330
    :goto_8
    iget v7, v15, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v9, v7

    const/high16 v14, 0x40000000    # 2.0f

    cmpl-float v7, v7, v14

    if-lez v7, :cond_11

    move v10, v4

    .line 1336
    :cond_11
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v7, v13, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1337
    iget-object v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {v13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v14

    int-to-long v3, v14

    invoke-virtual {v7, v3, v4, v15}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1338
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    iget-object v3, v13, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    if-eqz v3, :cond_14

    if-eqz v12, :cond_13

    .line 1341
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    if-nez v3, :cond_13

    .line 1342
    iput-object v13, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x0

    :cond_12
    :goto_9
    const/4 v3, 0x1

    goto :goto_a

    .line 1344
    :cond_13
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    if-nez v3, :cond_12

    .line 1345
    iput-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->captionMessage:Lorg/telegram/messenger/MessageObject;

    goto :goto_9

    .line 1347
    :goto_a
    iput-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasCaption:Z

    .line 1350
    :cond_14
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v3, :cond_15

    add-int/lit8 v6, v6, -0x1

    goto :goto_b

    :cond_15
    add-int/lit8 v6, v6, 0x1

    :goto_b
    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1356
    :goto_c
    iget-boolean v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->isDocuments:Z

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v6, 0x3e8

    const/4 v7, 0x4

    const/4 v12, 0x3

    if-eqz v3, :cond_18

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_57

    .line 1358
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1359
    iput v12, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    if-nez v1, :cond_16

    or-int/lit8 v5, v12, 0x4

    .line 1361
    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v5, 0x0

    .line 1362
    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    const/4 v8, 0x1

    goto :goto_e

    :cond_16
    const/4 v5, 0x0

    add-int/lit8 v8, v2, -0x1

    if-ne v1, v8, :cond_17

    or-int/lit8 v8, v12, 0x8

    .line 1364
    iput v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v8, 0x1

    .line 1365
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    goto :goto_e

    :cond_17
    const/4 v8, 0x1

    .line 1367
    iput-boolean v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    .line 1369
    :goto_e
    iput-boolean v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/high16 v8, 0x3f800000    # 1.0f

    .line 1370
    iput v8, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    .line 1371
    iput-byte v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    .line 1372
    iput-byte v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    int-to-byte v5, v1

    .line 1373
    iput-byte v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    .line 1374
    iput-byte v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    .line 1375
    iput v6, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1376
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v5, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1377
    iput v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    if-eqz v8, :cond_19

    .line 1383
    iget v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v3, v3, -0x32

    iput v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v3, 0xfa

    goto :goto_f

    :cond_19
    const/16 v3, 0xc8

    :goto_f
    const/high16 v8, 0x42f00000    # 120.0f

    .line 1387
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v13

    .line 1388
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    sget-object v14, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v15, v14, Landroid/graphics/Point;->x:I

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    div-float/2addr v8, v14

    float-to-int v8, v8

    const/high16 v14, 0x42200000    # 40.0f

    .line 1389
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    sget-object v15, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v15, Landroid/graphics/Point;->x:I

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v15, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    move/from16 v20, v4

    int-to-float v4, v15

    div-float/2addr v1, v4

    div-float/2addr v14, v1

    float-to-int v1, v14

    int-to-float v4, v15

    const v14, 0x444b8000    # 814.0f

    div-float/2addr v4, v14

    int-to-float v15, v2

    div-float/2addr v9, v15

    .line 1394
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v14

    const v6, 0x43cb8000    # 407.0f

    move/from16 v21, v14

    const/4 v14, 0x2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1a

    .line 1397
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1398
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v4

    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v7

    int-to-float v4, v4

    div-float/2addr v4, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    div-float v28, v4, v21

    .line 1399
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v29, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v4

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v25, v3

    const/4 v3, 0x0

    :goto_10
    const/16 v19, 0x0

    goto/16 :goto_35

    :cond_1a
    if-nez v10, :cond_1b

    if-eq v2, v14, :cond_1c

    if-eq v2, v12, :cond_1c

    const/4 v7, 0x4

    if-ne v2, v7, :cond_1b

    goto :goto_11

    :cond_1b
    move v7, v8

    goto/16 :goto_1c

    :cond_1c
    :goto_11
    if-ne v2, v14, :cond_22

    .line 1402
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1403
    iget-object v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1404
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1405
    const-string/jumbo v12, "ww"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    move/from16 v30, v14

    float-to-double v14, v9

    const-wide v22, 0x3ff6666666666666L    # 1.4

    move/from16 v24, v8

    const v17, 0x3ecccccd    # 0.4f

    float-to-double v7, v4

    mul-double v7, v7, v22

    cmpl-double v4, v14, v7

    if-lez v4, :cond_1e

    iget v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v8, v4, v7

    float-to-double v8, v8

    const-wide v13, 0x3fc999999999999aL    # 0.2

    cmpg-double v8, v8, v13

    if-gez v8, :cond_1e

    .line 1406
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v8, v5

    div-float/2addr v8, v4

    int-to-float v4, v5

    div-float/2addr v4, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    div-float v28, v4, v21

    .line 1407
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v29, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v4

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1408
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v29, 0xb

    const/16 v25, 0x1

    const/16 v26, 0x1

    move/from16 v27, v1

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x0

    goto/16 :goto_15

    :cond_1d
    move/from16 v24, v8

    move/from16 v30, v14

    const v17, 0x3ecccccd    # 0.4f

    .line 1409
    :cond_1e
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    const-string/jumbo v4, "qq"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_14

    .line 1416
    :cond_1f
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v4

    mul-float v5, v5, v17

    int-to-float v4, v4

    iget v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v7, v16, v6

    iget v6, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v6, v16, v6

    add-float/2addr v7, v6

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1417
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v5, v4

    move/from16 v7, v24

    if-ge v5, v7, :cond_20

    sub-int v8, v7, v5

    sub-int/2addr v4, v8

    move v8, v7

    goto :goto_12

    :cond_20
    move v8, v5

    :goto_12
    int-to-float v5, v8

    .line 1424
    iget v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v6

    int-to-float v6, v4

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    move/from16 v6, v21

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    div-float v28, v5, v6

    const/16 v26, 0x0

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v8

    .line 1425
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xe

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v27, v4

    move-object/from16 v22, v10

    .line 1426
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_13
    const/4 v1, 0x1

    goto :goto_15

    .line 1410
    :cond_21
    :goto_14
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v5, v4

    .line 1411
    iget v6, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v6, v5, v6

    iget v7, v10, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v7

    const v7, 0x444b8000    # 814.0f

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    div-float v28, v5, v7

    const/16 v26, 0x0

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v22, v1

    move/from16 v27, v4

    .line 1412
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xe

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v10

    .line 1413
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto :goto_13

    :goto_15
    move/from16 v25, v3

    const/16 v19, 0x0

    move v3, v1

    goto/16 :goto_35

    :cond_22
    move v7, v8

    move/from16 v30, v14

    const v17, 0x3ecccccd    # 0.4f

    const v4, 0x44064f5d

    if-ne v2, v12, :cond_26

    .line 1430
    iget-object v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1431
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1432
    iget-object v12, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    move/from16 v13, v30

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1433
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v10, 0x6e

    if-ne v5, v10, :cond_24

    .line 1434
    iget v4, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    iget v10, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v10, v4

    div-float/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    const v21, 0x444b8000    # 814.0f

    sub-float v14, v21, v4

    int-to-float v5, v7

    .line 1436
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    iget v7, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v7, v4

    iget v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v10, v14

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1438
    iget v6, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const v21, 0x444b8000    # 814.0f

    mul-float v6, v6, v21

    int-to-float v1, v1

    add-float/2addr v6, v1

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v27

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v22, v8

    .line 1439
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v1, v27

    const v21, 0x444b8000    # 814.0f

    div-float v28, v14, v21

    const/16 v29, 0x6

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x0

    move/from16 v27, v5

    move-object/from16 v22, v9

    .line 1441
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v14, v28

    div-float v28, v4, v21

    const/16 v29, 0xa

    const/16 v23, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v22, v12

    .line 1443
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1444
    iget v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v4, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/4 v13, 0x2

    .line 1446
    new-array v5, v13, [F

    const/16 v19, 0x0

    aput v28, v5, v19

    const/4 v7, 0x1

    aput v14, v5, v7

    iput-object v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    if-eqz v11, :cond_23

    sub-int v4, v4, v27

    .line 1449
    iput v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_16

    :cond_23
    sub-int/2addr v4, v1

    .line 1451
    iput v4, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1452
    iput v1, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1454
    :goto_16
    iput-boolean v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto :goto_18

    .line 1457
    :cond_24
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v21, 0x444b8000    # 814.0f

    div-float v28, v1, v21

    .line 1458
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v29, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v1

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1460
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v30, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-float v14, v21, v28

    int-to-float v4, v1

    .line 1461
    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v4, v5

    iget v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v14, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    div-float v4, v4, v21

    cmpg-float v5, v4, v15

    if-gez v5, :cond_25

    move/from16 v28, v15

    goto :goto_17

    :cond_25
    move/from16 v28, v4

    :goto_17
    const/16 v26, 0x1

    const/16 v29, 0x9

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move/from16 v27, v1

    move-object/from16 v22, v9

    .line 1465
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xa

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v22, v12

    .line 1466
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    :goto_18
    move/from16 v25, v3

    const/4 v3, 0x1

    goto/16 :goto_10

    .line 1470
    :cond_26
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1471
    iget-object v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1472
    iget-object v9, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v14, 0x2

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1473
    iget-object v14, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1474
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v10, 0x77

    const v12, 0x3ea8f5c3    # 0.33f

    if-ne v5, v10, :cond_29

    .line 1475
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const v21, 0x444b8000    # 814.0f

    div-float v28, v1, v21

    .line 1476
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v29, 0x7

    const/16 v23, 0x0

    const/16 v24, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v1

    move-object/from16 v22, v6

    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1478
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v1, v1

    iget v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v4, v5

    iget v5, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v4, v5

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v4, v7

    .line 1479
    iget v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v5, v5

    mul-float v5, v5, v17

    iget v6, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v6, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1480
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v12

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v6, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    float-to-int v4, v4

    .line 1481
    iget v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v5

    sub-int/2addr v6, v4

    const/high16 v7, 0x42680000    # 58.0f

    .line 1482
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    if-ge v6, v10, :cond_27

    .line 1483
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v10, v6

    .line 1484
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1485
    div-int/lit8 v7, v10, 0x2

    sub-int/2addr v5, v7

    sub-int/2addr v10, v7

    sub-int/2addr v4, v10

    :cond_27
    move/from16 v27, v5

    const v21, 0x444b8000    # 814.0f

    sub-float v5, v21, v28

    .line 1488
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    div-float v1, v1, v21

    cmpg-float v5, v1, v15

    if-gez v5, :cond_28

    move/from16 v28, v15

    goto :goto_19

    :cond_28
    move/from16 v28, v1

    :goto_19
    const/16 v26, 0x1

    const/16 v29, 0x9

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v22, v8

    .line 1493
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0x8

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v27, v6

    move-object/from16 v22, v9

    .line 1494
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v29, 0xa

    const/16 v23, 0x2

    const/16 v24, 0x2

    move/from16 v27, v4

    move-object/from16 v22, v14

    .line 1495
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/4 v1, 0x2

    goto/16 :goto_15

    .line 1498
    :cond_29
    iget v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v16, 0x3f800000    # 1.0f

    div-float v4, v16, v4

    iget v5, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v16, v5

    add-float/2addr v4, v5

    iget v5, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v16, v5

    add-float/2addr v4, v5

    const v21, 0x444b8000    # 814.0f

    div-float v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v5, v13

    int-to-float v7, v4

    .line 1499
    iget v10, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v7, v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    div-float v10, v10, v21

    invoke-static {v12, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1500
    iget v13, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v7, v13

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v5

    div-float v5, v5, v21

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v7, v16, v10

    sub-float/2addr v7, v5

    .line 1502
    iget v12, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float v12, v12, v21

    int-to-float v1, v1

    add-float/2addr v12, v1

    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    invoke-static {v12, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v27

    add-float v1, v10, v5

    add-float v28, v1, v7

    const/16 v29, 0xd

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x2

    move-object/from16 v22, v6

    .line 1504
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v1, v27

    const/16 v26, 0x0

    const/16 v29, 0x6

    const/16 v23, 0x1

    const/16 v24, 0x1

    move/from16 v27, v4

    move-object/from16 v22, v8

    move/from16 v28, v10

    .line 1506
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v4, v28

    const/16 v26, 0x1

    const/16 v29, 0x2

    const/16 v23, 0x0

    const/16 v25, 0x1

    move/from16 v28, v5

    move-object/from16 v22, v9

    .line 1508
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1509
    iget v10, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v10, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v26, 0x2

    const/16 v29, 0xa

    const/16 v25, 0x2

    move/from16 v28, v7

    move-object/from16 v22, v14

    .line 1511
    invoke-virtual/range {v22 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1512
    iget v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    iput v7, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eqz v11, :cond_2a

    sub-int v7, v7, v27

    .line 1515
    iput v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    :goto_1a
    const/4 v1, 0x3

    goto :goto_1b

    :cond_2a
    sub-int/2addr v7, v1

    .line 1517
    iput v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1518
    iput v1, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1519
    iput v1, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_1a

    .line 1521
    :goto_1b
    new-array v1, v1, [F

    const/16 v19, 0x0

    aput v4, v1, v19

    const/4 v7, 0x1

    aput v5, v1, v7

    const/16 v30, 0x2

    aput v28, v1, v30

    iput-object v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    .line 1522
    iput-boolean v7, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->hasSibling:Z

    goto/16 :goto_13

    .line 1527
    :goto_1c
    iget-object v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v2, :cond_2c

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v9, v6

    if-lez v6, :cond_2b

    .line 1530
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    goto :goto_1e

    :cond_2b
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1532
    iget-object v6, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v4, v5

    :goto_1e
    const v6, 0x3fd9999a    # 1.7f

    .line 1534
    aget v10, v4, v5

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v10, 0x3f2aaae3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1541
    :cond_2c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x1

    :goto_1f
    if-ge v6, v1, :cond_2f

    sub-int v8, v1, v6

    const/4 v10, 0x3

    if-gt v6, v10, :cond_2e

    if-le v8, v10, :cond_2d

    goto :goto_20

    .line 1547
    :cond_2d
    new-instance v10, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v12, 0x0

    invoke-direct {v0, v4, v12, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v13

    invoke-direct {v0, v4, v6, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v12

    invoke-direct {v10, v6, v8, v13, v12}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_2f
    const/4 v6, 0x1

    :goto_21
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_34

    const/4 v8, 0x1

    :goto_22
    sub-int v10, v1, v6

    if-ge v8, v10, :cond_33

    sub-int/2addr v10, v8

    const/4 v12, 0x3

    if-gt v6, v12, :cond_31

    const v13, 0x3f59999a    # 0.85f

    cmpg-float v13, v9, v13

    if-gez v13, :cond_30

    const/4 v13, 0x4

    goto :goto_23

    :cond_30
    move v13, v12

    :goto_23
    if-gt v8, v13, :cond_31

    if-le v10, v12, :cond_32

    :cond_31
    move/from16 v24, v6

    move/from16 v25, v8

    goto :goto_24

    .line 1556
    :cond_32
    new-instance v23, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v12, 0x0

    invoke-direct {v0, v4, v12, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v27

    add-int v12, v6, v8

    invoke-direct {v0, v4, v6, v12}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v28

    invoke-direct {v0, v4, v12, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v29

    move/from16 v24, v6

    move/from16 v25, v8

    move/from16 v26, v10

    invoke-direct/range {v23 .. v29}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    move-object/from16 v6, v23

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_24
    add-int/lit8 v8, v25, 0x1

    move/from16 v6, v24

    goto :goto_22

    :cond_33
    move/from16 v24, v6

    add-int/lit8 v6, v24, 0x1

    goto :goto_21

    :cond_34
    const/4 v6, 0x1

    :goto_25
    add-int/lit8 v8, v1, -0x2

    if-ge v6, v8, :cond_39

    const/4 v8, 0x1

    :goto_26
    sub-int v9, v1, v6

    if-ge v8, v9, :cond_38

    const/4 v10, 0x1

    :goto_27
    sub-int v12, v9, v8

    if-ge v10, v12, :cond_37

    sub-int/2addr v12, v10

    const/4 v13, 0x3

    if-gt v6, v13, :cond_35

    if-gt v8, v13, :cond_35

    if-gt v10, v13, :cond_35

    if-le v12, v13, :cond_36

    :cond_35
    move/from16 v33, v6

    move/from16 v34, v8

    move/from16 v35, v10

    goto :goto_28

    .line 1567
    :cond_36
    new-instance v32, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v13, 0x0

    invoke-direct {v0, v4, v13, v6}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v37

    add-int v13, v6, v8

    invoke-direct {v0, v4, v6, v13}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v38

    add-int v14, v13, v10

    invoke-direct {v0, v4, v13, v14}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v39

    invoke-direct {v0, v4, v14, v1}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->multiHeight([FII)F

    move-result v40

    move/from16 v33, v6

    move/from16 v34, v8

    move/from16 v35, v10

    move/from16 v36, v12

    invoke-direct/range {v32 .. v40}, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    move-object/from16 v6, v32

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v10, v35, 0x1

    move/from16 v6, v33

    move/from16 v8, v34

    goto :goto_27

    :cond_37
    move/from16 v33, v6

    move/from16 v34, v8

    add-int/lit8 v8, v34, 0x1

    goto :goto_26

    :cond_38
    move/from16 v33, v6

    add-int/lit8 v6, v33, 0x1

    goto :goto_25

    .line 1574
    :cond_39
    iget v1, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    const/16 v31, 0x3

    div-int/lit8 v1, v1, 0x3

    const/16 v22, 0x4

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1575
    :goto_29
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_44

    .line 1576
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;

    const v13, 0x7f7fffff    # Float.MAX_VALUE

    move v14, v13

    const/4 v13, 0x0

    const/16 v16, 0x0

    .line 1579
    :goto_2a
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    move/from16 v24, v1

    array-length v1, v6

    if-ge v13, v1, :cond_3b

    .line 1580
    aget v1, v6, v13

    add-float v16, v16, v1

    cmpg-float v6, v1, v14

    if-gez v6, :cond_3a

    move v14, v1

    :cond_3a
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v24

    goto :goto_2a

    :cond_3b
    sub-float v16, v16, v24

    .line 1586
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1587
    iget-object v6, v12, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v13, v6

    move/from16 v16, v1

    const/4 v1, 0x1

    if-le v13, v1, :cond_3f

    const/16 v19, 0x0

    .line 1588
    aget v13, v6, v19

    move/from16 v18, v1

    aget v1, v6, v18

    if-gt v13, v1, :cond_3e

    array-length v13, v6

    move/from16 v25, v3

    const/4 v3, 0x2

    if-le v13, v3, :cond_3d

    aget v13, v6, v3

    if-gt v1, v13, :cond_3c

    goto :goto_2c

    :cond_3c
    :goto_2b
    const/4 v13, 0x3

    goto :goto_2d

    :cond_3d
    :goto_2c
    array-length v1, v6

    const/4 v13, 0x3

    if-le v1, v13, :cond_40

    aget v1, v6, v3

    aget v3, v6, v13

    if-le v1, v3, :cond_40

    goto :goto_2d

    :cond_3e
    move/from16 v25, v3

    goto :goto_2b

    :goto_2d
    mul-float v1, v16, v17

    goto :goto_2e

    :cond_3f
    move/from16 v25, v3

    const/4 v13, 0x3

    const/16 v19, 0x0

    :cond_40
    move/from16 v1, v16

    :goto_2e
    int-to-float v3, v7

    cmpg-float v3, v14, v3

    if-gez v3, :cond_41

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v3

    :cond_41
    if-eqz v9, :cond_42

    cmpg-float v3, v1, v10

    if-gez v3, :cond_43

    :cond_42
    move v10, v1

    move-object v9, v12

    :cond_43
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v24

    move/from16 v3, v25

    goto :goto_29

    :cond_44
    move/from16 v25, v3

    const/16 v19, 0x0

    if-nez v9, :cond_45

    goto/16 :goto_39

    :cond_45
    move/from16 v1, v19

    move v3, v1

    move v5, v3

    .line 1608
    :goto_2f
    iget-object v6, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v7, v6

    if-ge v5, v7, :cond_4b

    .line 1609
    aget v6, v6, v5

    .line 1610
    iget-object v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v7, v7, v5

    .line 1611
    iget v8, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->maxSizeWidth:I

    add-int/lit8 v10, v6, -0x1

    .line 1613
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v12, v8

    move/from16 v8, v19

    const/4 v13, 0x0

    :goto_30
    if-ge v8, v6, :cond_4a

    .line 1615
    aget v14, v4, v1

    mul-float/2addr v14, v7

    float-to-int v14, v14

    sub-int/2addr v12, v14

    move/from16 v16, v3

    .line 1618
    iget-object v3, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v31, v3

    check-cast v31, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v5, :cond_46

    move/from16 v3, v22

    :goto_31
    move/from16 v17, v1

    goto :goto_32

    :cond_46
    move/from16 v3, v19

    goto :goto_31

    .line 1623
    :goto_32
    iget-object v1, v9, Lorg/telegram/messenger/MessageObject$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v1, v1

    const/16 v18, 0x1

    add-int/lit8 v1, v1, -0x1

    if-ne v5, v1, :cond_47

    or-int/lit8 v3, v3, 0x8

    :cond_47
    if-nez v8, :cond_48

    or-int/lit8 v3, v3, 0x1

    if-eqz v11, :cond_48

    move-object/from16 v13, v31

    :cond_48
    if-ne v8, v10, :cond_49

    or-int/lit8 v3, v3, 0x2

    if-nez v11, :cond_49

    move/from16 v38, v3

    move-object/from16 v13, v31

    :goto_33
    const v21, 0x444b8000    # 814.0f

    goto :goto_34

    :cond_49
    move/from16 v38, v3

    goto :goto_33

    :goto_34
    div-float v1, v7, v21

    .line 1638
    invoke-static {v15, v1}, Ljava/lang/Math;->max(FF)F

    move-result v37

    move/from16 v33, v8

    move/from16 v35, v5

    move/from16 v34, v5

    move/from16 v32, v8

    move/from16 v36, v14

    invoke-virtual/range {v31 .. v38}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/lit8 v1, v17, 0x1

    add-int/lit8 v8, v32, 0x1

    move/from16 v3, v16

    goto :goto_30

    :cond_4a
    move/from16 v17, v1

    move/from16 v16, v3

    move/from16 v34, v5

    const v21, 0x444b8000    # 814.0f

    .line 1641
    iget v1, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v1, v12

    iput v1, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1642
    iget v1, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v1, v12

    iput v1, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit8 v5, v34, 0x1

    move/from16 v1, v17

    goto/16 :goto_2f

    :cond_4b
    :goto_35
    move/from16 v1, v19

    :goto_36
    if-ge v1, v2, :cond_57

    .line 1647
    iget-object v4, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v11, :cond_4d

    .line 1649
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v5, :cond_4c

    .line 1650
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int v5, v5, v25

    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1652
    :cond_4c
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v30, 0x2

    and-int/lit8 v5, v5, 0x2

    const/4 v7, 0x1

    if-eqz v5, :cond_50

    .line 1653
    iput-boolean v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    goto :goto_37

    :cond_4d
    const/16 v30, 0x2

    .line 1656
    iget-byte v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-eq v5, v3, :cond_4e

    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4f

    .line 1657
    :cond_4e
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int v5, v5, v25

    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1659
    :cond_4f
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v7, 0x1

    and-int/2addr v5, v7

    if-eqz v5, :cond_50

    .line 1660
    iput-boolean v7, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1663
    :cond_50
    :goto_37
    iget-object v5, v0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    if-nez v11, :cond_52

    .line 1664
    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->-$$Nest$mneedDrawAvatarInternal(Lorg/telegram/messenger/MessageObject;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 1665
    iget-boolean v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    if-eqz v5, :cond_53

    .line 1666
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_51

    add-int/lit8 v5, v5, 0x6c

    .line 1667
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1669
    :cond_51
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v5, v5, 0x6c

    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    :cond_52
    const/16 v6, 0x3e8

    const/16 v30, 0x2

    goto :goto_38

    .line 1670
    :cond_53
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v30, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_55

    .line 1671
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_54

    add-int/lit8 v5, v5, -0x6c

    .line 1672
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_38

    .line 1673
    :cond_54
    iget v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v5, :cond_56

    add-int/lit8 v5, v5, 0x6c

    .line 1674
    iput v5, v4, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    goto :goto_38

    :cond_55
    const/16 v6, 0x3e8

    :cond_56
    :goto_38
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_36

    :cond_57
    :goto_39
    return-void
.end method

.method public contains(I)Z
    .locals 3

    .line 1751
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 1754
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1755
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1

    .line 1756
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public findCaptionMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 5

    .line 1686
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1687
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 1691
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1692
    iget-object v3, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 1693
    iget-object v4, v3, Lorg/telegram/messenger/MessageObject;->caption:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    move-object v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;
    .locals 3

    .line 1705
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1706
    invoke-virtual {p0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->calculate()V

    :cond_0
    const/4 v0, 0x0

    .line 1708
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1709
    iget-object v1, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1710
    iget-object v2, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eqz v2, :cond_1

    .line 1711
    iget v2, v2, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v2, p1

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public findPrimaryMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .line 1682
    iget-boolean v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->reversed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MessageObject$GroupedMessages;->findMessageWithFlags(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    return-object v0
.end method

.method public getPosition(Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1228
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v0, :cond_1

    .line 1230
    iget-object v0, p0, Lorg/telegram/messenger/MessageObject$GroupedMessages;->positionsArray:Landroidx/collection/LongSparseArray;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-object p1

    :cond_1
    return-object v0
.end method
