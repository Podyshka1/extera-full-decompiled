.class public abstract Lkotlinx/serialization/json/internal/CharArrayPoolBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arrays:Lkotlin/collections/ArrayDeque;

.field private charsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    return-void
.end method


# virtual methods
.method protected final releaseImpl([C)V
    .locals 2

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {}, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->access$getMAX_CHARS_IN_POOL$p()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 31
    iget v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    .line 32
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected final take(I)[C
    .locals 3

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->arrays:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLastOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-eqz v0, :cond_0

    iget v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I

    array-length v2, v0

    sub-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/CharArrayPoolBase;->charsTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    monitor-exit p0

    if-nez v0, :cond_1

    .line 26
    new-array p1, p1, [C

    return-object p1

    :cond_1
    return-object v0

    .line 23
    :goto_1
    monitor-exit p0

    throw p1
.end method
