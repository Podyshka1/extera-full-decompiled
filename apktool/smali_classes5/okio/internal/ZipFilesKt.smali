.class public abstract Lokio/internal/ZipFilesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$00L8-DWbjy5sZTSutntgRZsY7ng(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader$lambda$0(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BY2EJxV3DltaiT8Wp4_9EammrI8(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry$lambda$1$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fzsduIAs-uDmDx09oQZvsh85aRw(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p12}, Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final buildIndex(Ljava/util/List;)Ljava/util/Map;
    .locals 28

    .line 149
    sget-object v0, Lokio/Path;->Companion:Lokio/Path$Companion;

    const/4 v1, 0x0

    const-string v2, "/"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4, v1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v6

    .line 151
    new-instance v5, Lokio/internal/ZipEntry;

    const v26, 0xfffc

    const/16 v27, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v5 .. v27}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    new-array v1, v4, [Lkotlin/Pair;

    aput-object v0, v1, v3

    .line 150
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 155
    move-object/from16 v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .line 1056
    new-instance v2, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;

    invoke-direct {v2}, Lokio/internal/ZipFilesKt$buildIndex$$inlined$sortedBy$1;-><init>()V

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v1

    .line 155
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/internal/ZipEntry;

    .line 158
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-nez v3, :cond_0

    .line 164
    :goto_1
    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v3

    invoke-virtual {v3}, Lokio/Path;->parent()Lokio/Path;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/internal/ZipEntry;

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v3}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_2
    new-instance v4, Lokio/internal/ZipEntry;

    const v25, 0xfffc

    const/16 v26, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v4 .. v26}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 178
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-virtual {v4}, Lokio/internal/ZipEntry;->getChildren()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-virtual {v2}, Lokio/internal/ZipEntry;->getCanonicalPath()Lokio/Path;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v2, v4

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static final dosDateTimeToEpochMillis(II)Ljava/lang/Long;
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    shr-int/lit8 v0, p0, 0x9

    and-int/lit8 v0, v0, 0x7f

    add-int/lit16 v1, v0, 0x7bc

    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v2, v0, 0xf

    and-int/lit8 v3, p0, 0x1f

    shr-int/lit8 p0, p1, 0xb

    and-int/lit8 v4, p0, 0x1f

    shr-int/lit8 p0, p1, 0x5

    and-int/lit8 v5, p0, 0x3f

    and-int/lit8 p0, p1, 0x1f

    shl-int/lit8 v6, p0, 0x1

    .line 485
    invoke-static/range {v1 .. v6}, Lokio/internal/_ZlibJvmKt;->datePartsToEpochMillis(IIIIII)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final filetimeToEpochMillis(J)J
    .locals 2

    const/16 v0, 0x2710

    int-to-long v0, v0

    .line 473
    div-long/2addr p0, v0

    const-wide v0, 0xa9730b66800L

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private static final getHex(I)Ljava/lang/String;
    .locals 2

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-static {v1}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toString(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final openZip(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "zipPath"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileSystem"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2, v1}, Lokio/FileSystem;->openReadOnly(Lokio/Path;)Lokio/FileHandle;

    move-result-object v4

    .line 71
    :try_start_0
    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v5

    const/16 v0, 0x16

    int-to-long v7, v0

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_13

    const-wide/32 v9, 0x10000

    sub-long v9, v5, v9

    .line 75
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 80
    :goto_0
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 82
    :try_start_1
    invoke-interface {v11}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v12, 0x6054b50

    if-ne v0, v12, :cond_11

    .line 84
    invoke-static {v11}, Lokio/internal/ZipFilesKt;->readEocdRecord(Lokio/BufferedSource;)Lokio/internal/EocdRecord;

    move-result-object v9

    .line 85
    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCommentByteCount()I

    move-result v0

    int-to-long v12, v0

    invoke-interface {v11, v12, v13}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 89
    :try_start_2
    invoke-interface {v11}, Lokio/Source;->close()V

    const/16 v0, 0x14

    int-to-long v11, v0

    sub-long/2addr v5, v11

    cmp-long v0, v5, v7

    const/4 v11, 0x0

    if-lez v0, :cond_9

    .line 101
    invoke-virtual {v4, v5, v6}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 102
    :try_start_3
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v6, 0x7064b50

    if-ne v0, v6, :cond_5

    .line 103
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    .line 104
    invoke-interface {v5}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v12

    .line 105
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v6

    const/4 v14, 0x1

    if-ne v6, v14, :cond_4

    if-nez v0, :cond_4

    .line 109
    invoke-virtual {v4, v12, v13}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 110
    :try_start_4
    invoke-interface {v6}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v12, 0x6064b50

    if-ne v0, v12, :cond_1

    .line 117
    invoke-static {v6, v9}, Lokio/internal/ZipFilesKt;->readZip64EocdRecord(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;

    move-result-object v9

    .line 118
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v6, :cond_0

    .line 67
    :try_start_5
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_0
    :goto_1
    move-object v0, v11

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v12, v9

    move-object v9, v0

    goto :goto_2

    .line 112
    :cond_1
    :try_start_6
    new-instance v13, Ljava/io/IOException;

    .line 113
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bad zip: expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " but was "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    if-eqz v6, :cond_2

    .line 67
    :try_start_7
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 72
    :try_start_8
    invoke-static {v9, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v0

    move-object v9, v12

    goto :goto_7

    :cond_2
    :goto_3
    move-object v0, v9

    move-object v9, v12

    :goto_4
    if-nez v0, :cond_3

    goto :goto_5

    .line 77
    :cond_3
    :try_start_9
    throw v0

    :catchall_4
    move-exception v0

    move-object v6, v0

    goto :goto_7

    .line 107
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v6, "unsupported zip: spanned"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_5
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v5, :cond_6

    .line 67
    :try_start_a
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    goto :goto_9

    :cond_6
    :goto_6
    move-object v0, v11

    goto :goto_9

    :goto_7
    if-eqz v5, :cond_7

    :try_start_b
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_8

    :catchall_6
    move-exception v0

    .line 72
    :try_start_c
    invoke-static {v6, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :cond_7
    :goto_8
    move-object v0, v6

    :goto_9
    if-nez v0, :cond_8

    goto :goto_a

    .line 77
    :cond_8
    throw v0

    .line 124
    :cond_9
    :goto_a
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCentralDirectoryOffset()J

    move-result-wide v12

    invoke-virtual {v4, v12, v13}, Lokio/FileHandle;->source(J)Lokio/Source;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 126
    :try_start_d
    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getEntryCount()J

    move-result-wide v12

    :goto_b
    cmp-long v0, v7, v12

    if-gez v0, :cond_c

    .line 127
    invoke-static {v6}, Lokio/internal/ZipFilesKt;->readCentralDirectoryZipEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lokio/internal/ZipEntry;->getOffset()J

    move-result-wide v14

    invoke-virtual {v9}, Lokio/internal/EocdRecord;->getCentralDirectoryOffset()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_b

    .line 131
    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 132
    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v3, v0

    goto :goto_d

    :cond_a
    :goto_c
    const-wide/16 v14, 0x1

    add-long/2addr v7, v14

    goto :goto_b

    .line 129
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v3, "bad zip: local file header offset >= central directory offset"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    if-eqz v6, :cond_e

    .line 67
    :try_start_e
    invoke-interface {v6}, Ljava/io/Closeable;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v0

    move-object v11, v0

    goto :goto_f

    :goto_d
    if-eqz v6, :cond_d

    :try_start_f
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_e

    :catchall_a
    move-exception v0

    .line 72
    :try_start_10
    invoke-static {v3, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_d
    :goto_e
    move-object v11, v3

    :cond_e
    :goto_f
    if-nez v11, :cond_10

    .line 138
    invoke-static {v5}, Lokio/internal/ZipFilesKt;->buildIndex(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 140
    new-instance v3, Lokio/ZipFileSystem;

    invoke-direct {v3, v1, v2, v0, v10}, Lokio/ZipFileSystem;-><init>(Lokio/Path;Lokio/FileSystem;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-eqz v4, :cond_f

    .line 67
    :try_start_11
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    :catchall_b
    :cond_f
    return-object v3

    .line 77
    :cond_10
    :try_start_12
    throw v11

    :catchall_c
    move-exception v0

    goto :goto_10

    .line 89
    :cond_11
    invoke-interface {v11}, Lokio/Source;->close()V

    const-wide/16 v11, -0x1

    add-long/2addr v5, v11

    cmp-long v0, v5, v9

    if-ltz v0, :cond_12

    goto/16 :goto_0

    .line 94
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not a zip: end of central directory signature not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :goto_10
    invoke-interface {v11}, Lokio/Source;->close()V

    throw v0

    .line 73
    :cond_13
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not a zip: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lokio/FileHandle;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :goto_11
    if-eqz v4, :cond_14

    .line 67
    :try_start_13
    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception v0

    .line 72
    invoke-static {v1, v0}, Lkotlin/ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 77
    :cond_14
    :goto_12
    throw v1
.end method

.method public static final readCentralDirectoryZipEntry(Lokio/BufferedSource;)Lokio/internal/ZipEntry;
    .locals 36

    move-object/from16 v5, p0

    const-string v0, "<this>"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v1, 0x2014b50

    if-ne v0, v1, :cond_7

    const-wide/16 v0, 0x4

    .line 197
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 198
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    const/4 v11, 0x1

    and-int/2addr v0, v11

    if-nez v0, :cond_6

    .line 203
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int v22, v0, v1

    .line 204
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int v26, v0, v1

    .line 205
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int v25, v0, v1

    .line 208
    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v6, 0xffffffffL

    and-long v16, v2, v6

    move-wide v2, v6

    .line 209
    new-instance v6, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v2

    iput-wide v7, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 210
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v7, v0

    and-long/2addr v7, v2

    iput-wide v7, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 211
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    .line 212
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v7

    and-int v12, v7, v1

    .line 213
    invoke-interface {v5}, Lokio/BufferedSource;->readShortLe()S

    move-result v7

    and-int v13, v7, v1

    const-wide/16 v7, 0x8

    .line 215
    invoke-interface {v5, v7, v8}, Lokio/BufferedSource;->skip(J)V

    .line 216
    new-instance v7, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v5}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    int-to-long v8, v1

    and-long/2addr v8, v2

    iput-wide v8, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v0, v0

    .line 217
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 218
    invoke-static {v14, v15, v15, v0, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 222
    iget-wide v8, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v8, v8, v2

    const-wide/16 v18, 0x0

    const/16 v9, 0x8

    if-nez v8, :cond_0

    int-to-long v0, v9

    :goto_0
    move-wide/from16 v20, v2

    goto :goto_1

    :cond_0
    move-wide/from16 v0, v18

    goto :goto_0

    .line 223
    :goto_1
    iget-wide v2, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v2, v2, v20

    if-nez v2, :cond_1

    int-to-long v2, v9

    add-long/2addr v0, v2

    .line 224
    :cond_1
    iget-wide v2, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v2, v2, v20

    if-nez v2, :cond_2

    int-to-long v2, v9

    add-long/2addr v0, v2

    :cond_2
    move-wide v2, v0

    const/4 v0, 0x2

    .line 228
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 229
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v1, 0x0

    .line 230
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v20, v1

    .line 232
    new-instance v1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    move/from16 v21, v0

    .line 233
    new-instance v0, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;

    move-object/from16 v35, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v35

    invoke-direct/range {v0 .. v10}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v5, v12, v0}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    cmp-long v0, v2, v18

    if-lez v0, :cond_4

    .line 280
    iget-boolean v0, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_3

    goto :goto_2

    .line 281
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: zip64 extra required but absent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    int-to-long v0, v13

    .line 284
    invoke-interface {v5, v0, v1}, Lokio/BufferedSource;->readUtf8(J)Ljava/lang/String;

    move-result-object v0

    .line 285
    sget-object v1, Lokio/Path;->Companion:Lokio/Path$Companion;

    const-string v2, "/"

    invoke-static {v1, v2, v15, v11, v14}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-virtual {v1, v3}, Lokio/Path;->resolve(Ljava/lang/String;)Lokio/Path;

    move-result-object v13

    const/4 v1, 0x2

    .line 286
    invoke-static {v3, v2, v15, v1, v14}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v14

    .line 288
    new-instance v12, Lokio/internal/ZipEntry;

    .line 293
    iget-wide v1, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 294
    iget-wide v3, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 296
    iget-wide v5, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 299
    iget-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v27, v7

    check-cast v27, Ljava/lang/Long;

    .line 300
    iget-object v7, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v28, v7

    check-cast v28, Ljava/lang/Long;

    .line 301
    iget-object v7, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v29, v7

    check-cast v29, Ljava/lang/Long;

    const v33, 0xe000

    const/16 v34, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v15, v0

    move-wide/from16 v18, v1

    move-wide/from16 v20, v3

    move-wide/from16 v23, v5

    .line 288
    invoke-direct/range {v12 .. v34}, Lokio/internal/ZipEntry;-><init>(Lokio/Path;ZLjava/lang/String;JJJIJIILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12

    .line 218
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "bad zip: filename contains 0x00"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported zip: general purpose bit flag="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_7
    new-instance v2, Ljava/io/IOException;

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad zip: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static final readCentralDirectoryZipEntry$lambda$1(Lkotlin/jvm/internal/Ref$BooleanRef;JLkotlin/jvm/internal/Ref$LongRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eq p10, v0, :cond_2

    const/16 p0, 0xa

    if-eq p10, p0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 p0, 0x4

    cmp-long p2, p11, p0

    if-ltz p2, :cond_1

    .line 255
    invoke-interface {p4, p0, p1}, Lokio/BufferedSource;->skip(J)V

    sub-long/2addr p11, p0

    long-to-int p0, p11

    .line 259
    new-instance p1, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda2;

    invoke-direct {p1, p7, p4, p8, p9}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p4, p0, p1}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    goto :goto_1

    .line 253
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_2
    iget-boolean p7, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p7, :cond_7

    .line 239
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    cmp-long p0, p11, p1

    if-ltz p0, :cond_6

    .line 246
    iget-wide p0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide p7, 0xffffffffL

    cmp-long p2, p0, p7

    if-nez p2, :cond_3

    invoke-interface {p4}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p0

    :cond_3
    iput-wide p0, p3, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 247
    iget-wide p0, p5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p0, p0, p7

    const-wide/16 p1, 0x0

    if-nez p0, :cond_4

    invoke-interface {p4}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p9

    goto :goto_0

    :cond_4
    move-wide p9, p1

    :goto_0
    iput-wide p9, p5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 248
    iget-wide p9, p6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long p0, p9, p7

    if-nez p0, :cond_5

    invoke-interface {p4}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p1

    :cond_5
    iput-wide p1, p6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 278
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 242
    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: zip64 extra too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 237
    :cond_7
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: zip64 extra repeated"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readCentralDirectoryZipEntry$lambda$1$0(Lkotlin/jvm/internal/Ref$ObjectRef;Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 2

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    .line 262
    iget-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez p4, :cond_1

    const-wide/16 v0, 0x18

    cmp-long p4, p5, v0

    if-nez p4, :cond_0

    .line 270
    invoke-interface {p1}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 271
    invoke-interface {p1}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 272
    invoke-interface {p1}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra attribute tag 0x0001 size != 24"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: NTFS extra attribute tag 0x0001 repeated"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 275
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final readEocdRecord(Lokio/BufferedSource;)Lokio/internal/EocdRecord;
    .locals 10

    .line 307
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 308
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v2

    and-int/2addr v2, v1

    .line 309
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v5, v3

    .line 310
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v3

    and-int/2addr v3, v1

    int-to-long v3, v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    const-wide/16 v2, 0x4

    .line 314
    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 315
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    int-to-long v2, v0

    const-wide v7, 0xffffffffL

    and-long/2addr v7, v2

    .line 316
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result p0

    and-int v9, p0, v1

    .line 318
    new-instance v4, Lokio/internal/EocdRecord;

    invoke-direct/range {v4 .. v9}, Lokio/internal/EocdRecord;-><init>(JJI)V

    return-object v4

    .line 312
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported zip: spanned"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readExtra(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V
    .locals 10

    int-to-long v0, p1

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_4

    const-wide/16 v4, 0x4

    cmp-long p1, v0, v4

    if-ltz p1, :cond_3

    .line 361
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result p1

    const v4, 0xffff

    and-int/2addr p1, v4

    .line 362
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    const/4 v6, 0x4

    int-to-long v6, v6

    sub-long/2addr v0, v6

    cmp-long v6, v0, v4

    if-ltz v6, :cond_2

    .line 367
    invoke-interface {p0, v4, v5}, Lokio/BufferedSource;->require(J)V

    .line 368
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v6

    invoke-virtual {v6}, Lokio/Buffer;->size()J

    move-result-wide v6

    .line 369
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {p2, v8, v9}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object v8

    invoke-virtual {v8}, Lokio/Buffer;->size()J

    move-result-wide v8

    add-long/2addr v8, v4

    sub-long/2addr v8, v6

    cmp-long v2, v8, v2

    if-ltz v2, :cond_1

    if-lez v2, :cond_0

    .line 376
    invoke-interface {p0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->skip(J)V

    :cond_0
    sub-long/2addr v0, v4

    goto :goto_0

    .line 373
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported zip: too many bytes processed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 365
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated value in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 359
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "bad zip: truncated header in extra field"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-void
.end method

.method public static final readLocalHeader(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "centralDirectoryZipEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    invoke-static {p0, p1}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;
    .locals 6

    .line 398
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    const v1, 0x4034b50

    if-ne v0, v1, :cond_2

    const-wide/16 v0, 0x2

    .line 404
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 405
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    const v1, 0xffff

    and-int v2, v0, v1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    const-wide/16 v2, 0x12

    .line 409
    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    .line 410
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    int-to-long v2, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    .line 411
    invoke-interface {p0}, Lokio/BufferedSource;->readShortLe()S

    move-result v0

    and-int/2addr v0, v1

    .line 412
    invoke-interface {p0, v2, v3}, Lokio/BufferedSource;->skip(J)V

    if-nez p1, :cond_0

    int-to-long v0, v0

    .line 415
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_0
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 420
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 421
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 423
    new-instance v4, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, v3}, Lokio/internal/ZipFilesKt$$ExternalSyntheticLambda0;-><init>(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {p0, v0, v4}, Lokio/internal/ZipFilesKt;->readExtra(Lokio/BufferedSource;ILkotlin/jvm/functions/Function2;)V

    .line 453
    iget-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    .line 454
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 455
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 452
    invoke-virtual {p1, p0, v0, v1}, Lokio/internal/ZipEntry;->copy$okio(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lokio/internal/ZipEntry;

    move-result-object p0

    return-object p0

    .line 407
    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unsupported zip: general purpose bit flag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_2
    new-instance p0, Ljava/io/IOException;

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad zip: expected "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lokio/internal/ZipFilesKt;->getHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final readOrSkipLocalHeader$lambda$0(Lokio/BufferedSource;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;IJ)Lkotlin/Unit;
    .locals 9

    const/16 v0, 0x5455

    if-ne p4, v0, :cond_a

    const-wide/16 v0, 0x1

    cmp-long p4, p5, v0

    .line 426
    const-string v2, "bad zip: extended timestamp extra too short"

    if-ltz p4, :cond_9

    .line 429
    invoke-interface {p0}, Lokio/BufferedSource;->readByte()B

    move-result p4

    and-int/lit8 v3, p4, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    and-int/lit8 v6, p4, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const/4 v7, 0x4

    and-int/2addr p4, v7

    if-ne p4, v7, :cond_2

    move v4, v5

    :cond_2
    if-eqz v3, :cond_3

    const-wide/16 v0, 0x5

    :cond_3
    const-wide/16 v7, 0x4

    if-eqz v6, :cond_4

    add-long/2addr v0, v7

    :cond_4
    if-eqz v4, :cond_5

    add-long/2addr v0, v7

    :cond_5
    cmp-long p4, p5, v0

    if-ltz p4, :cond_8

    if-eqz v3, :cond_6

    .line 445
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iput-object p4, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_6
    if-eqz v6, :cond_7

    .line 446
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_7
    if-eqz v4, :cond_a

    .line 447
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_2

    .line 442
    :cond_8
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 427
    :cond_9
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 450
    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final readZip64EocdRecord(Lokio/BufferedSource;Lokio/internal/EocdRecord;)Lokio/internal/EocdRecord;
    .locals 8

    const-wide/16 v0, 0xc

    .line 327
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 328
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    .line 329
    invoke-interface {p0}, Lokio/BufferedSource;->readIntLe()I

    move-result v1

    .line 330
    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v3

    .line 331
    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const-wide/16 v0, 0x8

    .line 335
    invoke-interface {p0, v0, v1}, Lokio/BufferedSource;->skip(J)V

    .line 336
    invoke-interface {p0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v5

    .line 338
    new-instance v2, Lokio/internal/EocdRecord;

    .line 341
    invoke-virtual {p1}, Lokio/internal/EocdRecord;->getCommentByteCount()I

    move-result v7

    .line 338
    invoke-direct/range {v2 .. v7}, Lokio/internal/EocdRecord;-><init>(JJI)V

    return-object v2

    .line 333
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "unsupported zip: spanned"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final skipLocalHeader(Lokio/BufferedSource;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 384
    invoke-static {p0, v0}, Lokio/internal/ZipFilesKt;->readOrSkipLocalHeader(Lokio/BufferedSource;Lokio/internal/ZipEntry;)Lokio/internal/ZipEntry;

    return-void
.end method
