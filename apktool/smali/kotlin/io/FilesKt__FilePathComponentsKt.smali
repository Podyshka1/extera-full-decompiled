.class abstract Lkotlin/io/FilesKt__FilePathComponentsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I
    .locals 7

    .line 28
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    const/4 v6, 0x1

    if-nez p0, :cond_2

    .line 30
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, v6, :cond_1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_1

    add-int/lit8 v2, p0, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 36
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    add-int/2addr p0, v6

    return p0

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_1
    return v6

    :cond_2
    const/16 v1, 0x3a

    if-lez p0, :cond_3

    add-int/lit8 v2, p0, -0x1

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_3

    add-int/2addr p0, v6

    return p0

    :cond_3
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_4

    const/4 p0, 0x2

    const/4 v2, 0x0

    .line 51
    invoke-static {v0, v1, v3, p0, v2}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_4
    return v3
.end method

.method public static final toComponents(Ljava/io/File;)Lkotlin/io/FilePathComponents;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/io/FilesKt__FilePathComponentsKt;->getRootLength$FilesKt__FilePathComponentsKt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "substring(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    new-array v5, p0, [C

    sget-char p0, Ljava/io/File;->separatorChar:C

    aput-char p0, v5, v1

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Ljava/lang/String;

    .line 134
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1635
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    .line 135
    :goto_1
    new-instance v0, Lkotlin/io/FilePathComponents;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p0}, Lkotlin/io/FilePathComponents;-><init>(Ljava/io/File;Ljava/util/List;)V

    return-object v0
.end method
