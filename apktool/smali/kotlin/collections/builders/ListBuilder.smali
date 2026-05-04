.class public final Lkotlin/collections/builders/ListBuilder;
.super Lkotlin/collections/AbstractMutableList;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements Lkotlin/jvm/internal/markers/KMutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/builders/ListBuilder$BuilderSubList;,
        Lkotlin/collections/builders/ListBuilder$Companion;,
        Lkotlin/collections/builders/ListBuilder$Itr;
    }
.end annotation


# static fields
.field private static final Companion:Lkotlin/collections/builders/ListBuilder$Companion;

.field private static final Empty:Lkotlin/collections/builders/ListBuilder;


# instance fields
.field private backing:[Ljava/lang/Object;

.field private isReadOnly:Z

.field private length:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/builders/ListBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/builders/ListBuilder;->Companion:Lkotlin/collections/builders/ListBuilder$Companion;

    .line 20
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    sput-object v0, Lkotlin/collections/builders/ListBuilder;->Empty:Lkotlin/collections/builders/ListBuilder;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lkotlin/collections/AbstractMutableList;-><init>()V

    .line 15
    invoke-static {p1}, Lkotlin/collections/builders/ListBuilderKt;->arrayOfUninitializedElements(I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0xa

    .line 14
    :cond_0
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$addAllInternal(Lkotlin/collections/builders/ListBuilder;ILjava/util/Collection;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    return-void
.end method

.method public static final synthetic access$addAtInternal(Lkotlin/collections/builders/ListBuilder;ILjava/lang/Object;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getBacking$p(Lkotlin/collections/builders/ListBuilder;)[Ljava/lang/Object;
    .locals 0

    .line 14
    iget-object p0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getLength$p(Lkotlin/collections/builders/ListBuilder;)I
    .locals 0

    .line 14
    iget p0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return p0
.end method

.method public static final synthetic access$getModCount$p$s-2084097795(Lkotlin/collections/builders/ListBuilder;)I
    .locals 0

    .line 14
    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static final synthetic access$isReadOnly$p(Lkotlin/collections/builders/ListBuilder;)Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    return p0
.end method

.method public static final synthetic access$removeAtInternal(Lkotlin/collections/builders/ListBuilder;I)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeRangeInternal(Lkotlin/collections/builders/ListBuilder;II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    return-void
.end method

.method public static final synthetic access$retainOrRemoveAllInternal(Lkotlin/collections/builders/ListBuilder;IILjava/util/Collection;Z)I
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p0

    return p0
.end method

.method private final addAllInternal(ILjava/util/Collection;I)V
    .locals 4

    .line 207
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 208
    invoke-direct {p0, p1, p3}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    .line 210
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 212
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v2, p1, v0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final addAtInternal(ILjava/lang/Object;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    const/4 v0, 0x1

    .line 202
    invoke-direct {p0, p1, v0}, Lkotlin/collections/builders/ListBuilder;->insertAtInternal(II)V

    .line 203
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method private final checkIsMutable()V
    .locals 1

    .line 175
    iget-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private final contentEquals(Ljava/util/List;)Z
    .locals 3

    .line 191
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2, p1}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentEquals([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method private final ensureCapacityInternal(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 184
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 185
    sget-object v1, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    array-length v0, v0

    invoke-virtual {v1, v0, p1}, Lkotlin/collections/AbstractList$Companion;->newCapacity$kotlin_stdlib(II)I

    move-result p1

    .line 186
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lkotlin/collections/builders/ListBuilderKt;->copyOfUninitializedElements([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    :cond_0
    return-void

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method private final ensureExtraCapacity(I)V
    .locals 1

    .line 179
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkotlin/collections/builders/ListBuilder;->ensureCapacityInternal(I)V

    return-void
.end method

.method private final insertAtInternal(II)V
    .locals 3

    .line 195
    invoke-direct {p0, p2}, Lkotlin/collections/builders/ListBuilder;->ensureExtraCapacity(I)V

    .line 196
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int v2, p1, p2

    invoke-static {v0, v0, v2, p1, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 197
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-void
.end method

.method private final registerModification()V
    .locals 1

    .line 171
    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method private final removeAtInternal(I)Ljava/lang/Object;
    .locals 4

    .line 218
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 219
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    .line 220
    iget v3, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v0, p1, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 221
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetAt([Ljava/lang/Object;I)V

    .line 222
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-object v1
.end method

.method private final removeRangeInternal(II)V
    .locals 3

    if-lez p2, :cond_0

    .line 227
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 228
    :cond_0
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v1, p1, p2

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v0, p1, v1, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 229
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int v1, v0, p2

    invoke-static {p1, v1, v0}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    .line 230
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int/2addr p1, p2

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return-void
.end method

.method private final retainOrRemoveAllInternal(IILjava/util/Collection;Z)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 238
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int v3, p1, v0

    aget-object v2, v2, v3

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, p4, :cond_0

    .line 239
    iget-object v2, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p1

    add-int/lit8 v0, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int p3, p2, v1

    .line 245
    iget-object p4, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    add-int/2addr p2, p1

    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/2addr p1, v1

    invoke-static {p4, p4, p1, p2, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 246
    iget-object p1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    iget p2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int p4, p2, p3

    invoke-static {p1, p4, p2}, Lkotlin/collections/builders/ListBuilderKt;->resetRange([Ljava/lang/Object;II)V

    if-lez p3, :cond_2

    .line 247
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->registerModification()V

    .line 248
    :cond_2
    iget p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    sub-int/2addr p1, p3

    iput p1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return p3
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 87
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 88
    invoke-direct {p0, p1, p2}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 80
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 81
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v0, p1}, Lkotlin/collections/builders/ListBuilder;->addAtInternal(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 100
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 101
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 93
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 94
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v1, p1, v0}, Lkotlin/collections/builders/ListBuilder;->addAllInternal(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final build()Ljava/util/List;
    .locals 1

    .line 24
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lkotlin/collections/builders/ListBuilder;->isReadOnly:Z

    .line 26
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-lez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lkotlin/collections/builders/ListBuilder;->Empty:Lkotlin/collections/builders/ListBuilder;

    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    const/4 v0, 0x0

    .line 108
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-direct {p0, v0, v1}, Lkotlin/collections/builders/ListBuilder;->removeRangeInternal(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    .line 157
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->contentEquals(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 41
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 42
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 36
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 161
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentHashCode([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    .line 55
    :goto_0
    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-ge v0, v1, :cond_1

    .line 56
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 38
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 63
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 65
    iget-object v1, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lkotlin/collections/builders/ListBuilder;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2

    .line 75
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkPositionIndex$kotlin_stdlib(II)V

    .line 76
    new-instance v0, Lkotlin/collections/builders/ListBuilder$Itr;

    invoke-direct {v0, p0, p1}, Lkotlin/collections/builders/ListBuilder$Itr;-><init>(Lkotlin/collections/builders/ListBuilder;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 118
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 119
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAt(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 126
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 2

    .line 112
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 113
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 114
    invoke-direct {p0, p1}, Lkotlin/collections/builders/ListBuilder;->removeAtInternal(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 131
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, p1, v2}, Lkotlin/collections/builders/ListBuilder;->retainOrRemoveAllInternal(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 46
    invoke-direct {p0}, Lkotlin/collections/builders/ListBuilder;->checkIsMutable()V

    .line 47
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, v1}, Lkotlin/collections/AbstractList$Companion;->checkElementIndex$kotlin_stdlib(II)V

    .line 48
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    aget-object v1, v0, p1

    .line 49
    aput-object p2, v0, p1

    return-object v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 8

    .line 135
    sget-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-virtual {v0, p1, p2, v1}, Lkotlin/collections/AbstractList$Companion;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 136
    new-instance v2, Lkotlin/collections/builders/ListBuilder$BuilderSubList;

    iget-object v3, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    sub-int v5, p2, p1

    const/4 v6, 0x0

    move-object v7, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lkotlin/collections/builders/ListBuilder$BuilderSubList;-><init>([Ljava/lang/Object;IILkotlin/collections/builders/ListBuilder$BuilderSubList;Lkotlin/collections/builders/ListBuilder;)V

    return-object v2
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3

    .line 152
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    array-length v0, p1

    iget v1, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 145
    :cond_0
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    invoke-static {v0, p1, v2, v2, v1}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 147
    iget v0, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->terminateCollectionToArray(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 165
    iget-object v0, p0, Lkotlin/collections/builders/ListBuilder;->backing:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lkotlin/collections/builders/ListBuilder;->length:I

    invoke-static {v0, v1, v2, p0}, Lkotlin/collections/builders/ListBuilderKt;->access$subarrayContentToString([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
