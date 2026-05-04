.class abstract Lkotlin/collections/ArraysKt__ArraysKt;
.super Lkotlin/collections/ArraysKt__ArraysJVMKt;
.source "SourceFile"


# direct methods
.method public static contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_14

    if-eqz p1, :cond_14

    .line 81
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 83
    :cond_1
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_13

    .line 84
    aget-object v4, p0, v3

    .line 85
    aget-object v5, p1, v3

    if-ne v4, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    if-eqz v4, :cond_12

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 94
    :cond_3
    instance-of v6, v4, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    instance-of v6, v5, [Ljava/lang/Object;

    if-eqz v6, :cond_4

    check-cast v4, [Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lkotlin/collections/ArraysKt__ArraysKt;->contentDeepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 95
    :cond_4
    instance-of v6, v4, [B

    if-eqz v6, :cond_5

    instance-of v6, v5, [B

    if-eqz v6, :cond_5

    check-cast v4, [B

    check-cast v5, [B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 96
    :cond_5
    instance-of v6, v4, [S

    if-eqz v6, :cond_6

    instance-of v6, v5, [S

    if-eqz v6, :cond_6

    check-cast v4, [S

    check-cast v5, [S

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 97
    :cond_6
    instance-of v6, v4, [I

    if-eqz v6, :cond_7

    instance-of v6, v5, [I

    if-eqz v6, :cond_7

    check-cast v4, [I

    check-cast v5, [I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 98
    :cond_7
    instance-of v6, v4, [J

    if-eqz v6, :cond_8

    instance-of v6, v5, [J

    if-eqz v6, :cond_8

    check-cast v4, [J

    check-cast v5, [J

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 99
    :cond_8
    instance-of v6, v4, [F

    if-eqz v6, :cond_9

    instance-of v6, v5, [F

    if-eqz v6, :cond_9

    check-cast v4, [F

    check-cast v5, [F

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 100
    :cond_9
    instance-of v6, v4, [D

    if-eqz v6, :cond_a

    instance-of v6, v5, [D

    if-eqz v6, :cond_a

    check-cast v4, [D

    check-cast v5, [D

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 101
    :cond_a
    instance-of v6, v4, [C

    if-eqz v6, :cond_b

    instance-of v6, v5, [C

    if-eqz v6, :cond_b

    check-cast v4, [C

    check-cast v5, [C

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 102
    :cond_b
    instance-of v6, v4, [Z

    if-eqz v6, :cond_c

    instance-of v6, v5, [Z

    if-eqz v6, :cond_c

    check-cast v4, [Z

    check-cast v5, [Z

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 104
    :cond_c
    instance-of v6, v4, Lkotlin/UByteArray;

    if-eqz v6, :cond_d

    instance-of v6, v5, Lkotlin/UByteArray;

    if-eqz v6, :cond_d

    check-cast v4, Lkotlin/UByteArray;

    invoke-virtual {v4}, Lkotlin/UByteArray;->unbox-impl()[B

    move-result-object v4

    check-cast v5, Lkotlin/UByteArray;

    invoke-virtual {v5}, Lkotlin/UByteArray;->unbox-impl()[B

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->contentEquals-kV0jMPg([B[B)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 105
    :cond_d
    instance-of v6, v4, Lkotlin/UShortArray;

    if-eqz v6, :cond_e

    instance-of v6, v5, Lkotlin/UShortArray;

    if-eqz v6, :cond_e

    check-cast v4, Lkotlin/UShortArray;

    invoke-virtual {v4}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object v4

    check-cast v5, Lkotlin/UShortArray;

    invoke-virtual {v5}, Lkotlin/UShortArray;->unbox-impl()[S

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->contentEquals-FGO6Aew([S[S)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 106
    :cond_e
    instance-of v6, v4, Lkotlin/UIntArray;

    if-eqz v6, :cond_f

    instance-of v6, v5, Lkotlin/UIntArray;

    if-eqz v6, :cond_f

    check-cast v4, Lkotlin/UIntArray;

    invoke-virtual {v4}, Lkotlin/UIntArray;->unbox-impl()[I

    move-result-object v4

    check-cast v5, Lkotlin/UIntArray;

    invoke-virtual {v5}, Lkotlin/UIntArray;->unbox-impl()[I

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->contentEquals-KJPZfPQ([I[I)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 107
    :cond_f
    instance-of v6, v4, Lkotlin/ULongArray;

    if-eqz v6, :cond_10

    instance-of v6, v5, Lkotlin/ULongArray;

    if-eqz v6, :cond_10

    check-cast v4, Lkotlin/ULongArray;

    invoke-virtual {v4}, Lkotlin/ULongArray;->unbox-impl()[J

    move-result-object v4

    check-cast v5, Lkotlin/ULongArray;

    invoke-virtual {v5}, Lkotlin/ULongArray;->unbox-impl()[J

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/collections/unsigned/UArraysKt;->contentEquals-lec5QzE([J[J)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    .line 109
    :cond_10
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    return v1

    :cond_11
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    :goto_2
    return v1

    :cond_13
    return v0

    :cond_14
    :goto_3
    return v1
.end method
