.class public Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/GroupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupedMessages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;,
        Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;
    }
.end annotation


# instance fields
.field public hasSibling:Z

.field height:F

.field public maxSizeHeight:F

.field public maxSizeWidth:I

.field maxX:I

.field maxY:I

.field public medias:Ljava/util/ArrayList;

.field public posArray:Ljava/util/ArrayList;

.field public positions:Ljava/util/HashMap;

.field public final transitionParams:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 892
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    .line 898
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    const/16 v0, 0x320

    .line 910
    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const v0, 0x444b8000    # 814.0f

    .line 911
    iput v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    .line 913
    new-instance v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

    invoke-direct {v0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->transitionParams:Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$TransitionParams;

    return-void
.end method

.method private getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F
    .locals 11

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 1387
    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 1388
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1389
    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 1391
    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eq v6, p1, :cond_0

    .line 1392
    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-ge v7, p4, :cond_0

    .line 1393
    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    invoke-static {v7, p3}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v7, p2

    .line 1394
    iget-byte v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    sub-int/2addr v8, p2

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_1
    if-gt v8, v7, :cond_0

    .line 1395
    aget v9, v1, v8

    iget v10, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    .line 1401
    aget p1, v1, v4

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    move v2, p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private getTop(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;I)F
    .locals 10

    .line 1409
    iget v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 1410
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1411
    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 1413
    iget-object v6, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-eq v6, p1, :cond_0

    .line 1414
    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-ge v7, p2, :cond_0

    .line 1415
    iget-byte v7, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    :goto_1
    iget-byte v8, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-gt v7, v8, :cond_0

    .line 1416
    aget v8, v1, v7

    iget v9, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    add-float/2addr v8, v9

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v4, v0, :cond_3

    .line 1422
    aget p1, v1, v4

    cmpg-float p2, v2, p1

    if-gez p2, :cond_2

    move v2, p1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method private multiHeight([FII)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 939
    aget v1, p1, p2

    add-float/2addr v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 941
    :cond_0
    iget p1, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public calculate()V
    .locals 36

    move-object/from16 v0, p0

    .line 945
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    .line 948
    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    .line 949
    iget-object v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 951
    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    .line 952
    iput v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    .line 953
    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    return-void

    :cond_0
    const/16 v4, 0x320

    .line 956
    iput v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 964
    iput-boolean v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->hasSibling:Z

    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v1

    move v8, v6

    move v7, v5

    :goto_0
    const v10, 0x3f99999a    # 1.2f

    const/4 v12, 0x1

    if-ge v6, v2, :cond_f

    .line 967
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 969
    new-instance v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    invoke-direct {v14}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;-><init>()V

    add-int/lit8 v15, v2, -0x1

    if-ne v6, v15, :cond_1

    move v15, v12

    goto :goto_1

    :cond_1
    move v15, v1

    .line 970
    :goto_1
    iput-boolean v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->last:Z

    .line 971
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    if-eqz v15, :cond_2

    .line 972
    move-object v11, v13

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;

    .line 973
    iget v15, v11, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->w:I

    iput v15, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    .line 974
    iget v11, v11, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMediaPreview;->h:I

    iput v11, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    const/high16 v17, 0x40000000    # 2.0f

    goto :goto_6

    .line 975
    :cond_2
    instance-of v15, v13, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    const/16 v3, 0x64

    if-eqz v15, :cond_9

    .line 977
    move-object v15, v13

    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;

    .line 978
    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$TL_messageExtendedMedia;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const/high16 v17, 0x40000000    # 2.0f

    instance-of v9, v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v9, :cond_4

    .line 979
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    .line 980
    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v11

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    goto :goto_3

    .line 981
    :cond_4
    instance-of v9, v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v9, :cond_6

    .line 982
    check-cast v15, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    .line 983
    iget-object v9, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v11

    invoke-static {v9, v11}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v11

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_7

    move v9, v3

    goto :goto_4

    .line 987
    :cond_7
    iget v9, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    :goto_4
    iput v9, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    if-nez v11, :cond_8

    goto :goto_5

    .line 988
    :cond_8
    iget v3, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    :goto_5
    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    goto :goto_6

    :cond_9
    const/high16 v17, 0x40000000    # 2.0f

    .line 990
    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    .line 991
    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    .line 993
    :goto_6
    iget v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    if-lez v3, :cond_a

    iget v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    if-gtz v3, :cond_b

    :cond_a
    const/16 v3, 0x32

    .line 994
    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    .line 995
    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    .line 997
    :cond_b
    iget v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoWidth:I

    int-to-float v3, v3

    iget v9, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->photoHeight:I

    int-to-float v9, v9

    div-float/2addr v3, v9

    iput v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v9, v3, v10

    if-lez v9, :cond_c

    .line 1000
    const-string v3, "w"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_c
    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v3, v9

    if-gez v3, :cond_d

    .line 1002
    const-string v3, "n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1004
    :cond_d
    const-string v3, "q"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    :goto_7
    iget v3, v14, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v7, v3

    cmpl-float v3, v3, v17

    if-lez v3, :cond_e

    move v8, v12

    .line 1013
    :cond_e
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v3, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_f
    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v3, 0x42f00000    # 120.0f

    .line 1024
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .line 1025
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    sget-object v9, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v13, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    iget v13, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v13, v13

    div-float/2addr v9, v13

    div-float/2addr v3, v9

    float-to-int v3, v3

    const/high16 v9, 0x42200000    # 40.0f

    .line 1026
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    sget-object v13, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v14, v13, Landroid/graphics/Point;->x:I

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    int-to-float v13, v13

    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v15, v14

    div-float/2addr v13, v15

    div-float/2addr v9, v13

    float-to-int v9, v9

    int-to-float v13, v14

    .line 1028
    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v13, v14

    int-to-float v14, v2

    div-float/2addr v7, v14

    const/high16 v14, 0x42c80000    # 100.0f

    .line 1031
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    iget v15, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v14, v15

    const/4 v15, 0x2

    if-ne v2, v12, :cond_11

    .line 1034
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1036
    iget v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_10

    .line 1037
    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v5

    div-float v4, v6, v4

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1038
    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v4, v5

    goto :goto_8

    .line 1040
    :cond_10
    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v5

    .line 1041
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    move v4, v5

    :goto_8
    float-to-int v5, v6

    .line 1043
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v22, v4, v6

    const/16 v23, 0xf

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v3

    move/from16 v21, v5

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v26, v1

    goto/16 :goto_26

    :cond_11
    move/from16 v18, v10

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-nez v8, :cond_12

    if-eq v2, v15, :cond_13

    if-eq v2, v11, :cond_13

    if-ne v2, v10, :cond_12

    goto :goto_9

    :cond_12
    move/from16 v17, v5

    goto/16 :goto_10

    :cond_13
    :goto_9
    const v8, 0x3ecccccd    # 0.4f

    if-ne v2, v15, :cond_18

    .line 1046
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1047
    iget-object v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1048
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1049
    const-string v10, "ww"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v27, v2

    if-eqz v11, :cond_14

    float-to-double v1, v7

    const-wide v18, 0x3ff6666666666666L    # 1.4

    float-to-double v13, v13

    mul-double v13, v13, v18

    cmpl-double v1, v1, v13

    if-lez v1, :cond_14

    iget v1, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v2, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    sub-float v7, v1, v2

    float-to-double v13, v7

    const-wide v18, 0x3fc999999999999aL    # 0.2

    cmpg-double v7, v13, v18

    if-gez v7, :cond_14

    .line 1050
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v3

    div-float/2addr v4, v1

    int-to-float v1, v3

    div-float/2addr v1, v2

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v2, v2, v17

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v24, v1, v2

    .line 1051
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v25, 0x7

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v23, v1

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1052
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v25, 0xb

    const/16 v21, 0x1

    const/16 v22, 0x1

    move/from16 v23, v1

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    goto/16 :goto_c

    .line 1053
    :cond_14
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "qq"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_b

    .line 1060
    :cond_15
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v2, v1

    mul-float/2addr v2, v8

    int-to-float v1, v1

    iget v4, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v1, v4

    div-float v4, v5, v4

    iget v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    .line 1061
    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v2, v1

    if-ge v2, v3, :cond_16

    sub-int v2, v3, v2

    sub-int/2addr v1, v2

    goto :goto_a

    :cond_16
    move v3, v2

    .line 1068
    :goto_a
    iget v2, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    int-to-float v4, v3

    iget v5, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v5

    int-to-float v5, v1

    iget v7, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v24, v2, v4

    const/16 v22, 0x0

    const/16 v25, 0xd

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v23, v3

    move-object/from16 v18, v6

    .line 1069
    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v25, 0xe

    const/16 v19, 0x1

    const/16 v20, 0x1

    move/from16 v23, v1

    move-object/from16 v18, v9

    .line 1070
    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1071
    iput v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto :goto_c

    .line 1054
    :cond_17
    :goto_b
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    div-int/2addr v1, v15

    int-to-float v2, v1

    .line 1055
    iget v3, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v3, v2, v3

    iget v4, v9, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v24, v2, v3

    const/16 v22, 0x0

    const/16 v25, 0xd

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v23, v1

    move-object/from16 v18, v6

    .line 1056
    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v25, 0xe

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v18, v9

    .line 1057
    invoke-virtual/range {v18 .. v25}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1058
    iput v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    :goto_c
    move/from16 v2, v27

    :goto_d
    const/16 v26, 0x0

    goto/16 :goto_26

    :cond_18
    move/from16 v27, v2

    const v1, 0x3f28f5c3    # 0.66f

    if-ne v2, v11, :cond_1b

    .line 1074
    iget-object v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1075
    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1076
    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1077
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v6, 0x6e

    if-ne v4, v6, :cond_19

    .line 1078
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v1, v4

    iget v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    iget v11, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v11, v6

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1079
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float/2addr v6, v1

    int-to-float v3, v3

    .line 1080
    iget v10, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v10, v10

    mul-float/2addr v10, v4

    iget v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v4, v1

    iget v11, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v11, v6

    invoke-static {v4, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 1082
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v10, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v4, v10

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v9, v3

    int-to-float v9, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v21

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v16, v5

    .line 1083
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v4, v21

    .line 1085
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v22, v6, v9

    const/16 v23, 0x6

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x0

    move/from16 v21, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1087
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v22, v1, v3

    const/16 v23, 0xa

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1088
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iput v3, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1090
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v1, v9

    div-float/2addr v6, v9

    new-array v9, v15, [F

    const/16 v26, 0x0

    aput v1, v9, v26

    aput v6, v9, v12

    iput-object v9, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    sub-int/2addr v3, v4

    .line 1095
    iput v3, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1096
    iput v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1098
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->hasSibling:Z

    .line 1099
    iput v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_d

    .line 1101
    :cond_19
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v3, v3

    iget v4, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v3, v4

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v22, v1, v3

    .line 1102
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v23, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v1

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1104
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    div-int/2addr v1, v15

    .line 1105
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float v3, v3, v22

    int-to-float v4, v1

    iget v5, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v5, v4, v5

    iget v6, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v3, v4

    cmpg-float v4, v3, v14

    if-gez v4, :cond_1a

    move/from16 v22, v14

    goto :goto_e

    :cond_1a
    move/from16 v22, v3

    :goto_e
    const/16 v20, 0x1

    const/16 v23, 0x9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v21, v1

    move-object/from16 v16, v7

    .line 1109
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v23, 0xa

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v16, v8

    .line 1110
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1111
    iput v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_d

    .line 1114
    :cond_1b
    iget-object v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1115
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move/from16 v16, v1

    .line 1116
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    move/from16 v24, v8

    .line 1117
    iget-object v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1118
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v10, 0x77

    move/from16 v17, v5

    const v5, 0x3ea8f5c3    # 0.33f

    if-ne v4, v10, :cond_1e

    .line 1119
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v4, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    mul-float v6, v6, v16

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v22, v4, v6

    .line 1120
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    const/16 v23, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v4

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1122
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v4, v4

    iget v6, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    iget v7, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v6, v7

    iget v7, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    add-float/2addr v6, v7

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    int-to-float v3, v3

    .line 1123
    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v6, v6

    mul-float v6, v6, v24

    iget v7, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v7, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v6, v6

    .line 1124
    iget v7, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 1125
    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v3

    const/high16 v7, 0x42680000    # 58.0f

    .line 1126
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    if-ge v5, v9, :cond_1c

    .line 1127
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    sub-int/2addr v9, v5

    .line 1128
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    .line 1129
    div-int/lit8 v7, v9, 0x2

    sub-int/2addr v6, v7

    sub-int/2addr v9, v7

    sub-int/2addr v3, v9

    :cond_1c
    move/from16 v32, v3

    move/from16 v21, v6

    .line 1132
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    sub-float v3, v3, v22

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1133
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v3, v4

    cmpg-float v4, v3, v14

    if-gez v4, :cond_1d

    move/from16 v33, v14

    goto :goto_f

    :cond_1d
    move/from16 v33, v3

    :goto_f
    const/16 v20, 0x1

    const/16 v23, 0x9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v16, v13

    move/from16 v22, v33

    .line 1137
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v21, 0x1

    const/16 v24, 0x8

    const/16 v18, 0x1

    move-object/from16 v17, v1

    move/from16 v22, v5

    move/from16 v23, v33

    .line 1138
    invoke-virtual/range {v17 .. v24}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    const/16 v31, 0x1

    const/16 v34, 0xa

    const/16 v28, 0x2

    const/16 v29, 0x2

    const/16 v30, 0x1

    move-object/from16 v27, v8

    .line 1139
    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1140
    iput v15, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_d

    .line 1142
    :cond_1e
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v10, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v17, v10

    iget v14, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v17, v14

    add-float/2addr v10, v14

    iget v14, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v14, v17, v14

    add-float/2addr v10, v14

    div-float/2addr v4, v10

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v4, v6

    int-to-float v6, v3

    .line 1143
    iget v10, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float v10, v6, v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iget v14, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v10, v14

    invoke-static {v5, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 1144
    iget v14, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    div-float/2addr v6, v14

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sub-float v5, v17, v10

    sub-float v33, v5, v4

    .line 1146
    iget v5, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    iget v6, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    mul-float/2addr v5, v6

    int-to-float v6, v9

    add-float/2addr v5, v6

    iget v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    sub-int/2addr v6, v3

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v21

    add-float v5, v10, v4

    add-float v22, v5, v33

    const/16 v23, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object/from16 v16, v7

    .line 1148
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v5, v21

    const/16 v20, 0x0

    const/16 v23, 0x6

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v21, v3

    move/from16 v22, v10

    move-object/from16 v16, v13

    .line 1150
    invoke-virtual/range {v16 .. v23}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    move/from16 v32, v21

    move/from16 v3, v22

    const/16 v21, 0x1

    const/16 v24, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v17, v1

    move/from16 v23, v4

    move/from16 v22, v32

    .line 1152
    invoke-virtual/range {v17 .. v24}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1153
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iput v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    const/16 v31, 0x2

    const/16 v34, 0xa

    const/16 v28, 0x1

    const/16 v29, 0x1

    const/16 v30, 0x2

    move-object/from16 v27, v8

    .line 1155
    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    .line 1156
    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    iput v4, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    sub-int/2addr v4, v5

    .line 1161
    iput v4, v13, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1162
    iput v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1163
    iput v5, v8, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    .line 1165
    new-array v1, v11, [F

    const/16 v26, 0x0

    aput v3, v1, v26

    aput v23, v1, v12

    aput v33, v1, v15

    iput-object v1, v7, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->siblingHeights:[F

    .line 1166
    iput-boolean v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->hasSibling:Z

    .line 1167
    iput v12, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    goto/16 :goto_d

    .line 1171
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v2, :cond_20

    const v6, 0x3f8ccccd    # 1.1f

    cmpl-float v6, v7, v6

    if-lez v6, :cond_1f

    .line 1174
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    move/from16 v8, v17

    invoke-static {v8, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    goto :goto_12

    :cond_1f
    move/from16 v8, v17

    .line 1176
    iget-object v6, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v6, v6, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->aspectRatio:F

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v4, v5

    :goto_12
    const v6, 0x3fd9999a    # 1.7f

    .line 1178
    aget v9, v4, v5

    invoke-static {v6, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v9, 0x3f2aaae3

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v17, v8

    goto :goto_11

    .line 1185
    :cond_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v12

    :goto_13
    if-ge v6, v1, :cond_23

    sub-int v8, v1, v6

    if-gt v6, v11, :cond_21

    if-le v8, v11, :cond_22

    :cond_21
    move/from16 v17, v10

    goto :goto_14

    .line 1191
    :cond_22
    new-instance v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    move/from16 v17, v10

    const/4 v13, 0x0

    invoke-direct {v0, v4, v13, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v10

    invoke-direct {v0, v4, v6, v1}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v13

    invoke-direct {v9, v6, v8, v10, v13}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIFF)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    add-int/lit8 v6, v6, 0x1

    move/from16 v10, v17

    goto :goto_13

    :cond_23
    move/from16 v17, v10

    move v6, v12

    :goto_15
    add-int/lit8 v8, v1, -0x1

    if-ge v6, v8, :cond_28

    move v8, v12

    :goto_16
    sub-int v9, v1, v6

    if-ge v8, v9, :cond_27

    sub-int/2addr v9, v8

    if-gt v6, v11, :cond_25

    const v10, 0x3f59999a    # 0.85f

    cmpg-float v10, v7, v10

    if-gez v10, :cond_24

    move/from16 v10, v17

    goto :goto_17

    :cond_24
    move v10, v11

    :goto_17
    if-gt v8, v10, :cond_25

    if-le v9, v11, :cond_26

    :cond_25
    move/from16 v28, v6

    move/from16 v29, v8

    goto :goto_18

    .line 1200
    :cond_26
    new-instance v27, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v10, 0x0

    invoke-direct {v0, v4, v10, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v31

    add-int v10, v6, v8

    invoke-direct {v0, v4, v6, v10}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v32

    invoke-direct {v0, v4, v10, v1}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v33

    move/from16 v28, v6

    move/from16 v29, v8

    move/from16 v30, v9

    invoke-direct/range {v27 .. v33}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIFFF)V

    move-object/from16 v6, v27

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v8, v29, 0x1

    move/from16 v6, v28

    goto :goto_16

    :cond_27
    move/from16 v28, v6

    add-int/lit8 v6, v28, 0x1

    goto :goto_15

    :cond_28
    move v6, v12

    :goto_19
    add-int/lit8 v7, v1, -0x2

    if-ge v6, v7, :cond_2d

    move v7, v12

    :goto_1a
    sub-int v8, v1, v6

    if-ge v7, v8, :cond_2c

    move v9, v12

    :goto_1b
    sub-int v10, v8, v7

    if-ge v9, v10, :cond_2b

    sub-int/2addr v10, v9

    if-gt v6, v11, :cond_29

    if-gt v7, v11, :cond_29

    if-gt v9, v11, :cond_29

    if-le v10, v11, :cond_2a

    :cond_29
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    move/from16 v20, v11

    goto :goto_1c

    .line 1211
    :cond_2a
    new-instance v27, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const/4 v13, 0x0

    invoke-direct {v0, v4, v13, v6}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v32

    add-int v13, v6, v7

    invoke-direct {v0, v4, v6, v13}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v33

    move/from16 v20, v11

    add-int v11, v13, v9

    invoke-direct {v0, v4, v13, v11}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v34

    invoke-direct {v0, v4, v11, v1}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->multiHeight([FII)F

    move-result v35

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    move/from16 v31, v10

    invoke-direct/range {v27 .. v35}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;-><init>(IIIIFFFF)V

    move-object/from16 v6, v27

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1c
    add-int/lit8 v9, v30, 0x1

    move/from16 v11, v20

    move/from16 v6, v28

    move/from16 v7, v29

    goto :goto_1b

    :cond_2b
    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v20, v11

    add-int/lit8 v7, v29, 0x1

    goto :goto_1a

    :cond_2c
    move/from16 v28, v6

    move/from16 v20, v11

    add-int/lit8 v6, v28, 0x1

    goto :goto_19

    :cond_2d
    move/from16 v20, v11

    .line 1218
    iget v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1219
    :goto_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_38

    .line 1220
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;

    const v10, 0x7f7fffff    # Float.MAX_VALUE

    move v11, v10

    const/4 v10, 0x0

    const/4 v13, 0x0

    .line 1223
    :goto_1e
    iget-object v15, v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    array-length v12, v15

    if-ge v10, v12, :cond_2f

    .line 1224
    aget v12, v15, v10

    add-float/2addr v13, v12

    cmpg-float v15, v12, v11

    if-gez v15, :cond_2e

    move v11, v12

    :cond_2e
    add-int/lit8 v10, v10, 0x1

    const/4 v12, 0x1

    goto :goto_1e

    :cond_2f
    sub-float/2addr v13, v1

    .line 1230
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 1231
    iget-object v12, v9, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v13, v12

    const/4 v15, 0x1

    if-le v13, v15, :cond_33

    const/16 v26, 0x0

    .line 1232
    aget v13, v12, v26

    move/from16 v22, v15

    aget v15, v12, v22

    if-gt v13, v15, :cond_32

    array-length v13, v12

    move/from16 v23, v1

    const/4 v1, 0x2

    if-le v13, v1, :cond_31

    aget v13, v12, v1

    if-gt v15, v13, :cond_30

    goto :goto_20

    :cond_30
    :goto_1f
    move/from16 v15, v20

    goto :goto_21

    :cond_31
    :goto_20
    array-length v13, v12

    move/from16 v15, v20

    if-le v13, v15, :cond_34

    aget v13, v12, v1

    aget v1, v12, v15

    if-le v13, v1, :cond_34

    goto :goto_21

    :cond_32
    move/from16 v23, v1

    goto :goto_1f

    :goto_21
    mul-float v10, v10, v18

    goto :goto_22

    :cond_33
    move/from16 v23, v1

    move/from16 v15, v20

    const/16 v26, 0x0

    :cond_34
    :goto_22
    int-to-float v1, v3

    cmpg-float v1, v11, v1

    if-gez v1, :cond_35

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v10, v1

    :cond_35
    if-eqz v7, :cond_36

    cmpg-float v1, v10, v8

    if-gez v1, :cond_37

    :cond_36
    move-object v7, v9

    move v8, v10

    :cond_37
    add-int/lit8 v6, v6, 0x1

    move/from16 v20, v15

    move/from16 v1, v23

    const/4 v12, 0x1

    const/4 v15, 0x2

    goto :goto_1d

    :cond_38
    const/16 v26, 0x0

    if-nez v7, :cond_39

    return-void

    :cond_39
    move/from16 v1, v26

    move v6, v1

    .line 1253
    :goto_23
    iget-object v3, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v5, v3

    if-ge v6, v5, :cond_3f

    .line 1254
    aget v3, v3, v6

    .line 1255
    iget-object v5, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->heights:[F

    aget v5, v5, v6

    .line 1256
    iget v8, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeWidth:I

    .line 1258
    iget v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    add-int/lit8 v10, v3, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    move v9, v8

    move/from16 v8, v26

    const/4 v11, 0x0

    :goto_24
    if-ge v8, v3, :cond_3e

    .line 1260
    aget v12, v4, v1

    mul-float/2addr v12, v5

    float-to-int v12, v12

    sub-int/2addr v9, v12

    .line 1263
    iget-object v13, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v27, v13

    check-cast v27, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    if-nez v6, :cond_3a

    move/from16 v13, v17

    goto :goto_25

    :cond_3a
    move/from16 v13, v26

    .line 1268
    :goto_25
    iget-object v15, v7, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages$MessageGroupedLayoutAttempt;->lineCounts:[I

    array-length v15, v15

    const/16 v22, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ne v6, v15, :cond_3b

    or-int/lit8 v13, v13, 0x8

    :cond_3b
    if-nez v8, :cond_3c

    or-int/lit8 v13, v13, 0x1

    :cond_3c
    if-ne v8, v10, :cond_3d

    or-int/lit8 v13, v13, 0x2

    move-object/from16 v11, v27

    :cond_3d
    move/from16 v34, v13

    .line 1283
    iget v13, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxSizeHeight:F

    div-float v13, v5, v13

    invoke-static {v14, v13}, Ljava/lang/Math;->max(FF)F

    move-result v33

    move/from16 v29, v8

    move/from16 v31, v6

    move/from16 v30, v6

    move/from16 v28, v8

    move/from16 v32, v12

    invoke-virtual/range {v27 .. v34}, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->set(IIIIIFI)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v8, v28, 0x1

    goto :goto_24

    :cond_3e
    move/from16 v30, v6

    .line 1286
    iget v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/2addr v3, v9

    iput v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1287
    iget v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/2addr v3, v9

    iput v3, v11, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit8 v6, v30, 0x1

    goto :goto_23

    :cond_3f
    :goto_26
    move/from16 v6, v26

    :goto_27
    if-ge v6, v2, :cond_47

    .line 1293
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1302
    iget-byte v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    iget v4, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    if-eq v3, v4, :cond_40

    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v21, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_41

    .line 1303
    :cond_40
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit16 v3, v3, 0xc8

    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1305
    :cond_41
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/4 v15, 0x1

    and-int/2addr v3, v15

    if-eqz v3, :cond_42

    .line 1306
    iput-boolean v15, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1309
    :cond_42
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->medias:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;

    .line 1311
    iget-boolean v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    const/16 v4, 0x3e8

    if-eqz v3, :cond_44

    .line 1312
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v3, v4, :cond_43

    add-int/lit8 v3, v3, 0x6c

    .line 1313
    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1315
    :cond_43
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    add-int/lit8 v3, v3, 0x6c

    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    goto :goto_28

    .line 1316
    :cond_44
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v21, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_46

    .line 1317
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    if-eq v3, v4, :cond_45

    add-int/lit8 v3, v3, -0x6c

    .line 1318
    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    goto :goto_28

    .line 1319
    :cond_45
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    if-eqz v3, :cond_46

    add-int/lit8 v3, v3, 0x6c

    .line 1320
    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->leftSpanOffset:I

    :cond_46
    :goto_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    :cond_47
    move/from16 v6, v26

    :goto_29
    if-ge v6, v2, :cond_4a

    .line 1326
    iget-object v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1327
    iget-byte v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    if-nez v3, :cond_48

    .line 1328
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    add-int/lit16 v3, v3, 0xc8

    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->spanSize:I

    .line 1330
    :cond_48
    iget v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    const/16 v21, 0x2

    and-int/lit8 v3, v3, 0x2

    const/4 v15, 0x1

    if-eqz v3, :cond_49

    .line 1331
    iput-boolean v15, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->edge:Z

    .line 1333
    :cond_49
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxX:I

    .line 1334
    iget v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->maxY:I

    .line 1335
    iget-byte v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    iget-byte v4, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    iget-byte v5, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    invoke-direct {v0, v1, v3, v4, v5}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getLeft(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;III)F

    move-result v3

    iput v3, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->left:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    :cond_4a
    move/from16 v1, v26

    :goto_2a
    if-ge v1, v2, :cond_4b

    .line 1338
    iget-object v3, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1339
    iget-byte v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    invoke-direct {v0, v3, v4}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getTop(Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;I)F

    move-result v4

    iput v4, v3, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->top:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 1342
    :cond_4b
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getWidth()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->width:I

    .line 1343
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->getHeight()F

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->height:F

    return-void
.end method

.method public getHeight()F
    .locals 9

    const/16 v0, 0xa

    .line 1367
    new-array v1, v0, [F

    const/4 v2, 0x0

    .line 1368
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1369
    iget-object v2, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 1371
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1372
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    .line 1373
    iget-byte v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minX:B

    :goto_1
    iget-byte v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxX:B

    if-gt v7, v8, :cond_0

    .line 1374
    aget v8, v1, v7

    add-float/2addr v8, v6

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1377
    :cond_1
    aget v2, v1, v3

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v0, :cond_3

    .line 1379
    aget v4, v1, v3

    cmpg-float v5, v2, v4

    if-gez v5, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public getPosition(Lorg/telegram/tgnet/TLRPC$MessageExtendedMedia;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 907
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->positions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-object p1
.end method

.method public getWidth()I
    .locals 9

    const/16 v0, 0xa

    .line 1347
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 1348
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 1349
    iget-object v3, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 1351
    iget-object v5, p0, Lorg/telegram/ui/Cells/GroupMedia$GroupedMessages;->posArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    .line 1352
    iget v6, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->pw:I

    .line 1353
    iget-byte v7, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->minY:B

    :goto_1
    iget-byte v8, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->maxY:B

    if-gt v7, v8, :cond_0

    .line 1354
    aget v8, v1, v7

    add-int/2addr v8, v6

    aput v8, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1357
    :cond_1
    aget v2, v1, v2

    const/4 v3, 0x1

    :goto_2
    if-ge v3, v0, :cond_3

    .line 1359
    aget v4, v1, v3

    if-ge v2, v4, :cond_2

    move v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return v2
.end method
