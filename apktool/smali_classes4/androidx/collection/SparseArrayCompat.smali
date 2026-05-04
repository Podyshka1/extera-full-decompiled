.class public Landroidx/collection/SparseArrayCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public synthetic garbage:Z

.field public synthetic keys:[I

.field public synthetic size:I

.field public synthetic values:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 76
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 77
    sget-object p1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    return-void

    .line 79
    :cond_0
    invoke-static {p1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result p1

    .line 80
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 81
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 57
    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/SparseArrayCompat;-><init>(I)V

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 4

    .line 456
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-gt p1, v1, :cond_0

    .line 457
    invoke-virtual {p0, p1, p2}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void

    .line 460
    :cond_0
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 461
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 463
    :cond_1
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 464
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 465
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v1

    .line 466
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 467
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 469
    :cond_2
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v1, v0

    .line 470
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 471
    iput v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    return-void
.end method

.method public clear()V
    .locals 5

    .line 445
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 446
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x0

    .line 448
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    :cond_0
    iput v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    .line 451
    iput-boolean v2, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    return-void
.end method

.method public clone()Landroidx/collection/SparseArrayCompat;
    .locals 2

    .line 87
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/collection/SparseArrayCompat;

    .line 88
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 89
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, v0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 55
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->clone()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 96
    invoke-static {p0, p1}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 102
    invoke-static {p0, p1, p2}, Landroidx/collection/SparseArrayCompatKt;->commonGet(Landroidx/collection/SparseArrayCompat;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 3

    .line 422
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 423
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 425
    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 426
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public keyAt(I)I
    .locals 1

    .line 387
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 390
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aget p1, v0, p1

    return p1
.end method

.method public put(ILjava/lang/Object;)V
    .locals 4

    .line 327
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v0, v1, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0

    if-ltz v0, :cond_0

    .line 329
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    :cond_0
    not-int v0, v0

    .line 332
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {}, Landroidx/collection/SparseArrayCompatKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 333
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v1, v0

    .line 334
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    return-void

    .line 337
    :cond_1
    iget-boolean v1, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 338
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 341
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v0, v1, p1}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([III)I

    move-result v0

    not-int v0, v0

    .line 343
    :cond_2
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 344
    invoke-static {v1}, Landroidx/collection/internal/ContainerHelpersKt;->idealIntArraySize(I)I

    move-result v1

    .line 345
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    const-string v3, "copyOf(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    .line 346
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    .line 348
    :cond_3
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    sub-int v2, v1, v0

    if-eqz v2, :cond_4

    .line 349
    iget-object v2, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, v1}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    .line 350
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/SparseArrayCompat;->size:I

    invoke-static {v1, v1, v3, v0, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 352
    :cond_4
    iget-object v1, p0, Landroidx/collection/SparseArrayCompat;->keys:[I

    aput p1, v1, v0

    .line 353
    iget-object p1, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 354
    iget p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 376
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 377
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 379
    :cond_0
    iget v0, p0, Landroidx/collection/SparseArrayCompat;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 476
    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 477
    const-string v0, "{}"

    return-object v0

    .line 479
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    iget v1, p0, Landroidx/collection/SparseArrayCompat;->size:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    if-lez v2, :cond_1

    .line 483
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    :cond_1
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v3

    .line 486
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    .line 487
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, p0, :cond_2

    .line 490
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 492
    :cond_2
    const-string v3, "(this Map)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d

    .line 495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2

    .line 395
    iget-boolean v0, p0, Landroidx/collection/SparseArrayCompat;->garbage:Z

    if-eqz v0, :cond_0

    .line 396
    invoke-static {p0}, Landroidx/collection/SparseArrayCompatKt;->access$gc(Landroidx/collection/SparseArrayCompat;)V

    .line 398
    :cond_0
    iget-object v0, p0, Landroidx/collection/SparseArrayCompat;->values:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 401
    aget-object p1, v0, p1

    return-object p1

    .line 399
    :cond_1
    sget-object p1, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .line 24
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method
