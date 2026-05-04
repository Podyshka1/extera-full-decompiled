.class public Landroidx/collection/LruCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final lock:Landroidx/collection/internal/Lock;

.field private final map:Landroidx/collection/internal/LruHashMap;

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Landroidx/collection/LruCache;->maxSize:I

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 62
    const-string/jumbo p1, "maxSize <= 0"

    .line 61
    invoke-static {p1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance p1, Landroidx/collection/internal/LruHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p1, v0, v1}, Landroidx/collection/internal/LruHashMap;-><init>(IF)V

    iput-object p1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    .line 66
    new-instance p1, Landroidx/collection/internal/Lock;

    invoke-direct {p1}, Landroidx/collection/internal/Lock;-><init>()V

    iput-object p1, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    return-void
.end method

.method private final safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 244
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    return v0
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    const-string/jumbo p1, "key"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "oldValue"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final evictAll()V
    .locals 1

    const/4 v0, -0x1

    .line 260
    invoke-virtual {p0, v0}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1, p1}, Landroidx/collection/internal/LruHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 99
    iget p1, p0, Landroidx/collection/LruCache;->hitCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/collection/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 102
    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit v0

    .line 111
    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 113
    :cond_1
    iget-object v1, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v1

    .line 114
    :try_start_2
    iget v2, p0, Landroidx/collection/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/LruCache;->createCount:I

    .line 115
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v2, p1, v0}, Landroidx/collection/internal/LruHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 118
    iget-object v3, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v3, p1, v2}, Landroidx/collection/internal/LruHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_1

    .line 120
    :cond_2
    iget v3, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/collection/LruCache;->size:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26
    :goto_0
    monitor-exit v1

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v1, p1, v0, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 128
    :cond_3
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v0

    .line 26
    :goto_1
    monitor-exit v1

    throw p1

    .line 26
    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 141
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->putCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/collection/LruCache;->putCount:I

    .line 142
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/LruCache;->size:I

    .line 143
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1, p1, p2}, Landroidx/collection/internal/LruHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v1}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 147
    :cond_0
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    :cond_1
    iget p1, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->trimToSize(I)V

    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1, p1}, Landroidx/collection/internal/LruHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget v2, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, p1, v1}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/collection/LruCache;->size:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 203
    :cond_0
    :goto_0
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p0, v0, p1, v1, v2}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v1

    .line 26
    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public final size()I
    .locals 2

    .line 267
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 267
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final snapshot()Ljava/util/Map;
    .locals 5

    .line 298
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 299
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v2}, Landroidx/collection/internal/LruHashMap;->getEntries()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 300
    iget-object v2, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v2}, Landroidx/collection/internal/LruHashMap;->getEntries()Ljava/util/Set;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 300
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 301
    :cond_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 306
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 307
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->hitCount:I

    iget v2, p0, Landroidx/collection/LruCache;->missCount:I

    add-int/2addr v2, v1

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x64

    .line 310
    div-int/2addr v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 315
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LruCache[maxSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/LruCache;->maxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hits="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/LruCache;->hitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",misses="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/collection/LruCache;->missCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",hitRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "%]"

    .line 315
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public trimToSize(I)V
    .locals 6

    .line 169
    :goto_0
    iget-object v0, p0, Landroidx/collection/LruCache;->lock:Landroidx/collection/internal/Lock;

    .line 26
    monitor-enter v0

    .line 170
    :try_start_0
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1}, Landroidx/collection/internal/LruHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroidx/collection/LruCache;->size:I

    if-nez v1, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_2

    .line 171
    const-string v1, "LruCache.sizeOf() is reporting inconsistent results!"

    .line 47
    invoke-static {v1}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalStateException(Ljava/lang/String;)V

    .line 174
    :cond_2
    iget v1, p0, Landroidx/collection/LruCache;->size:I

    if-le v1, p1, :cond_5

    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1}, Landroidx/collection/internal/LruHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 178
    :cond_3
    iget-object v1, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v1}, Landroidx/collection/internal/LruHashMap;->getEntries()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    monitor-exit v0

    return-void

    .line 180
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 181
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 182
    iget-object v4, p0, Landroidx/collection/LruCache;->map:Landroidx/collection/internal/LruHashMap;

    invoke-virtual {v4, v3}, Landroidx/collection/internal/LruHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget v4, p0, Landroidx/collection/LruCache;->size:I

    invoke-direct {p0, v3, v1}, Landroidx/collection/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Landroidx/collection/LruCache;->size:I

    .line 184
    iget v4, p0, Landroidx/collection/LruCache;->evictionCount:I

    add-int/2addr v4, v2

    iput v4, p0, Landroidx/collection/LruCache;->evictionCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    monitor-exit v0

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, v2, v3, v1, v0}, Landroidx/collection/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    .line 26
    :goto_4
    monitor-exit v0

    throw p1
.end method
