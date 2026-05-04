.class public final Landroidx/datastore/preferences/core/MutablePreferences;
.super Landroidx/datastore/preferences/core/Preferences;
.source "SourceFile"


# instance fields
.field private final frozen:Landroidx/datastore/preferences/core/AtomicBoolean;

.field private final preferencesMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 1

    const-string/jumbo v0, "preferencesMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Landroidx/datastore/preferences/core/Preferences;-><init>()V

    .line 125
    iput-object p1, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    .line 132
    new-instance p1, Landroidx/datastore/preferences/core/AtomicBoolean;

    invoke-direct {p1, p2}, Landroidx/datastore/preferences/core/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/datastore/preferences/core/MutablePreferences;->frozen:Landroidx/datastore/preferences/core/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 125
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 124
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;-><init>(Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 6

    .line 158
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0xa

    .line 1179
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    .line 364
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 1253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 366
    check-cast v1, Ljava/util/Map$Entry;

    .line 159
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 160
    instance-of v4, v3, [B

    if-eqz v4, :cond_0

    new-instance v4, Lkotlin/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v3, [B

    array-length v5, v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string v5, "copyOf(this, size)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    :cond_0
    new-instance v4, Lkotlin/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v4, v3, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 366
    :goto_1
    invoke-virtual {v4}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v2}, Landroidx/datastore/preferences/core/Actual_jvmAndroidKt;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final checkNotFrozen$datastore_preferences_core_release()V
    .locals 2

    .line 135
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->frozen:Landroidx/datastore/preferences/core/AtomicBoolean;

    invoke-virtual {v0}, Landroidx/datastore/preferences/core/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Do mutate preferences once returned to DataStore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 275
    instance-of v0, p1, Landroidx/datastore/preferences/core/MutablePreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 279
    :cond_0
    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    iget-object v0, p1, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    iget-object v2, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    return v3

    .line 281
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    .line 283
    :cond_2
    iget-object p1, p1, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    .line 371
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 168
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    iget-object v2, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 286
    instance-of v4, v0, [B

    if-eqz v4, :cond_5

    instance-of v4, v2, [B

    if-eqz v4, :cond_6

    check-cast v0, [B

    check-cast v2, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    goto :goto_0

    .line 287
    :cond_5
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    return v1

    :cond_7
    return v3
.end method

.method public final freeze$datastore_preferences_core_release()V
    .locals 2

    .line 142
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->frozen:Landroidx/datastore/preferences/core/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/core/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public get(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    check-cast p1, [B

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(this, size)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public hashCode()I
    .locals 4

    .line 294
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 295
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 296
    instance-of v3, v2, [B

    if-eqz v3, :cond_0

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1

    .line 297
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final varargs putAll([Landroidx/datastore/preferences/core/Preferences$Pair;)V
    .locals 1

    const-string/jumbo v0, "pairs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->checkNotFrozen$datastore_preferences_core_release()V

    .line 369
    array-length v0, p1

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    const/4 p1, 0x0

    .line 251
    throw p1
.end method

.method public final remove(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->checkNotFrozen$datastore_preferences_core_release()V

    .line 264
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/core/MutablePreferences;->setUnchecked$datastore_preferences_core_release(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setUnchecked$datastore_preferences_core_release(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V
    .locals 2

    const-string/jumbo v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Landroidx/datastore/preferences/core/MutablePreferences;->checkNotFrozen$datastore_preferences_core_release()V

    if-nez p2, :cond_0

    .line 193
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->remove(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    return-void

    .line 196
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    check-cast p2, Ljava/util/Set;

    invoke-static {p2}, Landroidx/datastore/preferences/core/Actual_jvmAndroidKt;->immutableCopyOfSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 197
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    check-cast p2, [B

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    const-string v1, "copyOf(this, size)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 306
    iget-object v0, p0, Landroidx/datastore/preferences/core/MutablePreferences;->preferencesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    sget-object v7, Landroidx/datastore/preferences/core/MutablePreferences$toString$1;->INSTANCE:Landroidx/datastore/preferences/core/MutablePreferences$toString$1;

    const/16 v8, 0x18

    const/4 v9, 0x0

    const-string v2, ",\n"

    const-string/jumbo v3, "{\n"

    const-string v4, "\n}"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
