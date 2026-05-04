.class Lcom/chaquo/python/PyMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "Lcom/chaquo/python/PyObject;",
        "Lcom/chaquo/python/PyObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final methods:Lcom/chaquo/python/MethodCache;

.field private final obj:Lcom/chaquo/python/PyObject;


# direct methods
.method public constructor <init>(Lcom/chaquo/python/PyObject;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/chaquo/python/PyMap;->obj:Lcom/chaquo/python/PyObject;

    .line 13
    new-instance v0, Lcom/chaquo/python/MethodCache;

    invoke-direct {v0, p1}, Lcom/chaquo/python/MethodCache;-><init>(Lcom/chaquo/python/PyObject;)V

    iput-object v0, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    .line 14
    const-string p1, "__contains__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 15
    const-string p1, "__getitem__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 16
    const-string p1, "__iter__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 17
    const-string p1, "__len__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    return-void
.end method

.method static synthetic access$000(Lcom/chaquo/python/PyMap;)Lcom/chaquo/python/MethodCache;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    return-object p0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "__contains__"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result p1

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lcom/chaquo/python/PyObject;",
            "Lcom/chaquo/python/PyObject;",
            ">;>;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/chaquo/python/PyMap$1;

    invoke-direct {v0, p0}, Lcom/chaquo/python/PyMap$1;-><init>(Lcom/chaquo/python/PyMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "__getitem__"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyError:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 63
    :cond_0
    throw p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyMap;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public put(Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;
    .locals 4

    .line 74
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyMap;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    const-string v2, "__setitem__"

    invoke-virtual {v1, v2}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    check-cast p1, Lcom/chaquo/python/PyObject;

    check-cast p2, Lcom/chaquo/python/PyObject;

    invoke-virtual {p0, p1, p2}, Lcom/chaquo/python/PyMap;->put(Lcom/chaquo/python/PyObject;Lcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/chaquo/python/PyMap;->methods:Lcom/chaquo/python/MethodCache;

    const-string/jumbo v1, "pop"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x0

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyMap;->remove(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method
