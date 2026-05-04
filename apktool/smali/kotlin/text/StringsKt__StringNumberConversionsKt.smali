.class abstract Lkotlin/text/StringsKt__StringNumberConversionsKt;
.super Lkotlin/text/StringsKt__StringNumberConversionsJVMKt;
.source "SourceFile"


# direct methods
.method public static toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 72
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {p1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    .line 92
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v4

    const v5, -0x7fffffff

    if-gez v4, :cond_4

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    return-object v1

    :cond_1
    const/16 v6, 0x2b

    if-eq v3, v6, :cond_3

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_2

    return-object v1

    :cond_2
    const/high16 v5, -0x80000000

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v2

    move v4, v3

    :goto_0
    const v6, -0x38e38e3

    move v7, v6

    :goto_1
    if-ge v4, v0, :cond_9

    .line 117
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8, p1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v8

    if-gez v8, :cond_5

    return-object v1

    :cond_5
    if-ge v2, v7, :cond_7

    if-ne v7, v6, :cond_6

    .line 122
    div-int v7, v5, p1

    if-ge v2, v7, :cond_7

    :cond_6
    return-object v1

    :cond_7
    mul-int/2addr v2, p1

    add-int v9, v5, v8

    if-ge v2, v9, :cond_8

    return-object v1

    :cond_8
    sub-int/2addr v2, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_a

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_a
    neg-int p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 152
    invoke-static {p0, v0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final toLongOrNull(Ljava/lang/String;I)Ljava/lang/Long;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-static {v1}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)I

    .line 164
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    .line 172
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-gez v6, :cond_4

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    return-object v3

    :cond_1
    const/16 v9, 0x2b

    if-eq v5, v9, :cond_3

    const/16 v4, 0x2d

    if-eq v5, v4, :cond_2

    return-object v3

    :cond_2
    const-wide/high16 v7, -0x8000000000000000L

    move v4, v6

    goto :goto_0

    :cond_3
    move/from16 v19, v6

    move v6, v4

    move/from16 v4, v19

    goto :goto_0

    :cond_4
    move v6, v4

    :goto_0
    const-wide v9, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v11, 0x0

    move-wide v13, v9

    :goto_1
    if-ge v4, v2, :cond_9

    .line 197
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v1}, Lkotlin/text/CharsKt__CharJVMKt;->digitOf(CI)I

    move-result v5

    if-gez v5, :cond_5

    return-object v3

    :cond_5
    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    cmp-long v13, v13, v9

    if-nez v13, :cond_7

    int-to-long v13, v1

    .line 202
    div-long v13, v7, v13

    cmp-long v15, v11, v13

    if-gez v15, :cond_6

    return-object v3

    :cond_6
    move-object v15, v3

    move/from16 v16, v4

    goto :goto_2

    :cond_7
    return-object v3

    :goto_2
    int-to-long v3, v1

    mul-long/2addr v11, v3

    int-to-long v3, v5

    add-long v17, v7, v3

    cmp-long v5, v11, v17

    if-gez v5, :cond_8

    return-object v15

    :cond_8
    sub-long/2addr v11, v3

    add-int/lit8 v4, v16, 0x1

    move-object v3, v15

    goto :goto_1

    :cond_9
    if-eqz v6, :cond_a

    .line 219
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_a
    neg-long v0, v11

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
