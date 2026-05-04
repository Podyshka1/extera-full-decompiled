.class Lcom/yandex/runtime/bindings/internal/StringDictionary;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# instance fields
.field private map:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "TE;>;"
        }
    .end annotation
.end field

.field private nativeObject:Lcom/yandex/runtime/NativeObject;


# direct methods
.method public constructor <init>(Lcom/yandex/runtime/NativeObject;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->nativeObject:Lcom/yandex/runtime/NativeObject;

    .line 16
    new-instance p1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/yandex/runtime/bindings/internal/StringDictionary;->containsKeyNative(Ljava/lang/Object;)Z

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

.method public native containsKeyNative(Ljava/lang/Object;)Z
.end method

.method public native entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p0, p1}, Lcom/yandex/runtime/bindings/internal/StringDictionary;->getNative(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 38
    iget-object v1, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 50
    :cond_2
    iget-object v2, p0, Lcom/yandex/runtime/bindings/internal/StringDictionary;->map:Lj$/util/concurrent/ConcurrentHashMap;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1, v0}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :goto_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-object v0
.end method

.method public native getNative(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation
.end method

.method public native size()I
.end method
