.class abstract Lkotlin/text/StringsKt__IndentKt;
.super Lkotlin/text/StringsKt__AppendableKt;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$3BvvMery65JEhzYBhCrX5rYm0VE(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$lambda$0$StringsKt__IndentKt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$42ieJlZRMv6w-QjCqSPAMJL39OY(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt__IndentKt;->prependIndent$lambda$0$StringsKt__IndentKt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fNhk8osE5fmKswSs2oW3GpnF78I(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$lambda$1$StringsKt__IndentKt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 110
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda1;-><init>()V

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final getIndentFunction$lambda$0$StringsKt__IndentKt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getIndentFunction$lambda$1$StringsKt__IndentKt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "line"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I
    .locals 4

    .line 158
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    .line 159
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 107
    invoke-static {v3}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static final prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->lineSequence(Ljava/lang/CharSequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 94
    new-instance v0, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lkotlin/text/StringsKt__IndentKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    const/16 v8, 0x3e

    const/4 v9, 0x0

    .line 105
    const-string v2, "\n"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt;->joinToString$default(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic prependIndent$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 92
    const-string p1, "    "

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt__IndentKt;->prependIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final prependIndent$lambda$0$StringsKt__IndentKt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    return-object p1

    .line 102
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newIndent"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 78
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 774
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 865
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 79
    invoke-static {v6}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 865
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1563
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_2

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    .line 1635
    check-cast v8, Ljava/lang/String;

    .line 80
    invoke-static {v8}, Lkotlin/text/StringsKt__IndentKt;->indentWidth$StringsKt__IndentKt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1635
    invoke-interface {v3, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->minOrNull(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v6

    .line 83
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-static {v2}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    .line 120
    check-cast v0, Ljava/lang/Iterable;

    .line 1583
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v8, v6, 0x1

    if-gez v6, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1593
    :cond_4
    check-cast v5, Ljava/lang/String;

    if-eqz v6, :cond_5

    if-ne v6, v4, :cond_6

    .line 121
    :cond_5
    invoke-static {v5}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v5, 0x0

    goto :goto_4

    .line 83
    :cond_6
    invoke-static {v5, v3}, Lkotlin/text/StringsKt___StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 124
    invoke-interface {v2, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v6

    :cond_8
    :goto_4
    if-eqz v5, :cond_9

    .line 1593
    invoke-interface {v7, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move v6, v8

    goto :goto_3

    .line 126
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v15, 0x7c

    const/16 v16, 0x0

    const-string v9, "\n"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v16}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newIndent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marginPrefix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 40
    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr p0, v1

    invoke-static {p1}, Lkotlin/text/StringsKt__IndentKt;->getIndentFunction$StringsKt__IndentKt(Ljava/lang/String;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    .line 119
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v1

    .line 120
    check-cast v0, Ljava/lang/Iterable;

    .line 1583
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-gez v4, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 1593
    :cond_0
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v1, :cond_2

    .line 121
    :cond_1
    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v8, p2

    move-object v7, v5

    goto :goto_4

    .line 158
    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v8, v3

    :goto_1
    const/4 v9, -0x1

    if-ge v8, v4, :cond_4

    .line 159
    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 43
    invoke-static {v10}, Lkotlin/text/CharsKt__CharJVMKt;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v9

    :goto_2
    if-ne v8, v9, :cond_5

    move-object v8, p2

    goto :goto_3

    :cond_5
    const/4 v11, 0x4

    const/4 v12, 0x0

    const/4 v10, 0x0

    move v9, v8

    move-object v8, p2

    .line 47
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v9

    const-string/jumbo v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo p2, "substring(...)"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-eqz v5, :cond_8

    .line 124
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_7

    goto :goto_4

    :cond_7
    move-object v7, p2

    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    .line 1593
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    move v4, v6

    move-object p2, v8

    goto :goto_0

    .line 126
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v10, 0x7c

    const/4 v11, 0x0

    const-string v4, "\n"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v11}, Lkotlin/collections/CollectionsKt;->joinTo$default(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "marginPrefix must be non-blank string."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static trimIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/text/StringsKt__IndentKt;->replaceIndent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "marginPrefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/text/StringsKt__IndentKt;->replaceIndentByMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic trimMargin$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 27
    const-string/jumbo p1, "|"

    :cond_0
    invoke-static {p0, p1}, Lkotlin/text/StringsKt__IndentKt;->trimMargin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
