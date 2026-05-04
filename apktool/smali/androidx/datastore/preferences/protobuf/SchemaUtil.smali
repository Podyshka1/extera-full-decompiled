.class abstract Landroidx/datastore/preferences/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

.field private static final UNKNOWN_FIELD_SET_FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

.field private static final UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->getUnknownFieldSetSchema()Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    .line 26
    new-instance v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    return-void
.end method

.method static computeSizeBoolList(ILjava/util/List;Z)I
    .locals 0

    .line 605
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 611
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 612
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    const/4 p2, 0x1

    .line 614
    invoke-static {p0, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static computeSizeBoolListNoTag(Ljava/util/List;)I
    .locals 0

    .line 601
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method static computeSizeByteStringList(ILjava/util/List;)I
    .locals 2

    .line 690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 694
    :cond_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    .line 695
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge v1, p0, :cond_1

    .line 696
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method static computeSizeEnumList(ILjava/util/List;Z)I
    .locals 1

    .line 440
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 444
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeEnumListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 447
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 448
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 450
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeEnumListNoTag(Ljava/util/List;)I
    .locals 4

    .line 419
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 426
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 427
    check-cast p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 429
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 433
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeFixed32List(ILjava/util/List;Z)I
    .locals 1

    .line 568
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x4

    .line 574
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 575
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 577
    :cond_1
    invoke-static {p0, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed32Size(II)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static computeSizeFixed32ListNoTag(Ljava/util/List;)I
    .locals 0

    .line 564
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method static computeSizeFixed64List(ILjava/util/List;Z)I
    .locals 2

    .line 586
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    mul-int/lit8 p1, p1, 0x8

    .line 592
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 593
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    :cond_1
    const-wide/16 v0, 0x0

    .line 595
    invoke-static {p0, v0, v1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeFixed64Size(IJ)I

    move-result p0

    mul-int/2addr p1, p0

    return p1
.end method

.method static computeSizeFixed64ListNoTag(Ljava/util/List;)I
    .locals 0

    .line 582
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    mul-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static computeSizeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 4

    .line 714
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 720
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {p0, v3, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeGroupSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static computeSizeInt32List(ILjava/util/List;Z)I
    .locals 1

    .line 476
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 480
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 483
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 484
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 486
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeInt32ListNoTag(Ljava/util/List;)I
    .locals 4

    .line 455
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 462
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 463
    check-cast p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 465
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 469
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeInt64List(ILjava/util/List;Z)I
    .locals 1

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 336
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeInt64ListNoTag(Ljava/util/List;)I

    move-result v0

    if-eqz p2, :cond_1

    .line 339
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 340
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 342
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method static computeSizeInt64ListNoTag(Ljava/util/List;)I
    .locals 5

    .line 311
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 318
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 319
    check-cast p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 321
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 325
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeMessage(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 0

    .line 651
    check-cast p1, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeMessageSize(ILandroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result p0

    return p0
.end method

.method static computeSizeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)I
    .locals 3

    .line 673
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 677
    :cond_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 679
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 683
    check-cast v2, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v2, p2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeMessageSizeNoTag(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v2

    add-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method static computeSizeSInt32List(ILjava/util/List;Z)I
    .locals 1

    .line 548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 553
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 556
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 557
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 559
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeSInt32ListNoTag(Ljava/util/List;)I
    .locals 4

    .line 527
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 534
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 535
    check-cast p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 537
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 541
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeSInt64List(ILjava/util/List;Z)I
    .locals 1

    .line 404
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 408
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeSInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 411
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 412
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 414
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeSInt64ListNoTag(Ljava/util/List;)I
    .locals 5

    .line 383
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 390
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 391
    check-cast p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 393
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 397
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeStringList(ILjava/util/List;)I
    .locals 4

    .line 619
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 623
    :cond_0
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr p0, v0

    .line 624
    instance-of v2, p1, Landroidx/datastore/preferences/protobuf/LazyStringList;

    if-eqz v2, :cond_3

    .line 625
    check-cast p1, Landroidx/datastore/preferences/protobuf/LazyStringList;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 627
    invoke-interface {p1, v1}, Landroidx/datastore/preferences/protobuf/LazyStringList;->getRaw(I)Ljava/lang/Object;

    move-result-object v2

    .line 628
    instance-of v3, v2, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v3, :cond_1

    .line 629
    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    :goto_1
    add-int/2addr p0, v2

    goto :goto_2

    .line 631
    :cond_1
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0

    :cond_3
    :goto_3
    if-ge v1, v0, :cond_5

    .line 636
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 637
    instance-of v3, v2, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v3, :cond_4

    .line 638
    check-cast v2, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Landroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v2

    :goto_4
    add-int/2addr p0, v2

    goto :goto_5

    .line 640
    :cond_4
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return p0
.end method

.method static computeSizeUInt32List(ILjava/util/List;Z)I
    .locals 1

    .line 512
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 516
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt32ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 519
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 520
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 522
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeUInt32ListNoTag(Ljava/util/List;)I
    .locals 4

    .line 491
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 498
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-eqz v2, :cond_2

    .line 499
    check-cast p0, Landroidx/datastore/preferences/protobuf/IntArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 501
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 505
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static computeSizeUInt64List(ILjava/util/List;Z)I
    .locals 1

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 372
    :cond_0
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->computeSizeUInt64ListNoTag(Ljava/util/List;)I

    move-result p1

    if-eqz p2, :cond_1

    .line 375
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    .line 376
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeLengthDelimitedFieldSize(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 378
    :cond_1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeTagSize(I)I

    move-result p0

    mul-int/2addr v0, p0

    add-int/2addr p1, v0

    return p1
.end method

.method static computeSizeUInt64ListNoTag(Ljava/util/List;)I
    .locals 5

    .line 347
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 354
    :cond_0
    instance-of v2, p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-eqz v2, :cond_2

    .line 355
    check-cast p0, Landroidx/datastore/preferences/protobuf/LongArrayList;

    if-gtz v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    .line 357
    throw p0

    :cond_2
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 361
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method static filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 6

    if-nez p3, :cond_0

    return-object p4

    .line 944
    :cond_0
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_5

    .line 946
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 948
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 949
    invoke-interface {p3, v4}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v1, v2, :cond_1

    .line 951
    invoke-interface {p2, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 956
    :cond_2
    invoke-static {p0, p1, v4, p4, p5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eq v2, v0, :cond_4

    .line 961
    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_4
    return-object p4

    .line 964
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 965
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 966
    invoke-interface {p3, v0}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->isInRange(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 968
    invoke-static {p0, p1, v0, p4, p5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p4

    .line 970
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_7
    return-object p4
.end method

.method private static getGeneratedMessageClass()Ljava/lang/Class;
    .locals 2

    .line 785
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 791
    :cond_0
    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method private static getUnknownFieldSetSchema()Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    .locals 2

    const/4 v0, 0x0

    .line 774
    :try_start_0
    invoke-static {}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 778
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method

.method private static getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .locals 2

    .line 798
    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 802
    :cond_0
    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.UnknownFieldSetSchema"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    return-object v1
.end method

.method static mergeExtensions(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 870
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p2

    .line 871
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/FieldSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ExtensionSchema;->getMutableExtensions(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/FieldSet;

    move-result-object p0

    .line 873
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/FieldSet;->mergeFrom(Landroidx/datastore/preferences/protobuf/FieldSet;)V

    :cond_0
    return-void
.end method

.method static mergeMap(Landroidx/datastore/preferences/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1

    .line 864
    invoke-static {p1, p3, p4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, p3, p4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 863
    invoke-interface {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 865
    invoke-static {p1, p3, p4, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static mergeUnknownFields(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 879
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 881
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 882
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static requireGeneratedMessage(Ljava/lang/Class;)V
    .locals 1

    .line 40
    const-class v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/Protobuf;->assumeLiteRuntime:Z

    if-nez v0, :cond_1

    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    .line 858
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    .line 986
    invoke-virtual {p4, p0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->getBuilderFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    :cond_0
    int-to-long v0, p2

    .line 988
    invoke-virtual {p4, p3, p1, v0, v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    return-object p3
.end method

.method public static unknownFieldSetFullSchema()Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    .locals 1

    .line 765
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_FULL_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static unknownFieldSetLiteSchema()Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;
    .locals 1

    .line 769
    sget-object v0, Landroidx/datastore/preferences/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static writeBoolList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeBytesList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 268
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-interface {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static writeDoubleList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeEnumList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 247
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 233
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 198
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeFloatList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 305
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeGroupList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    :cond_0
    return-void
.end method

.method public static writeInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 212
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Landroidx/datastore/preferences/protobuf/Schema;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 282
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeMessageList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    :cond_0
    return-void
.end method

.method public static writeSFixed32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 240
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeSFixed64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 205
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeSInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeSInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeStringList(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-interface {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public static writeUInt32List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static writeUInt64List(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Writer;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 184
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p2, p0, p1, p3}, Landroidx/datastore/preferences/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    :cond_0
    return-void
.end method
