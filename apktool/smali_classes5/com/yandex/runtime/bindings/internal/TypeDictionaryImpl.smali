.class public final Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/runtime/TypeDictionary;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/runtime/TypeDictionary<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private nativeObject:Lcom/yandex/runtime/NativeObject;


# direct methods
.method private constructor <init>(Lcom/yandex/runtime/NativeObject;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->nativeObject:Lcom/yandex/runtime/NativeObject;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    return-void
.end method

.method private getItemByKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 59
    iget-object v1, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->nativeObject:Lcom/yandex/runtime/NativeObject;

    if-eqz v1, :cond_3

    .line 60
    invoke-direct {p0, p1}, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->getItemNative(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    .line 65
    iget-object v1, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lj$/util/Map$-EL;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
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

.method private native getItemNative(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method private native getKeys()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private keyForClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 91
    :try_start_0
    const-string v0, "getNativeName"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    .line 101
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 102
    const-string p1, "Objects of class %s cannot be stored in com.yandex.runtime.bindings.internal.TypeDictionaryImpl"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAllItems()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->nativeObject:Lcom/yandex/runtime/NativeObject;

    if-eqz v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 47
    invoke-direct {p0, v1}, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->getItemByKey(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->map:Ljava/util/Map;

    return-object v0
.end method

.method public getItem(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/lang/Class<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->keyForClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/yandex/runtime/bindings/internal/TypeDictionaryImpl;->getItemByKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
