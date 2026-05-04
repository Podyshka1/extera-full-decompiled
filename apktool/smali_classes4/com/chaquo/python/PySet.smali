.class Lcom/chaquo/python/PySet;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
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
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/chaquo/python/PySet;->obj:Lcom/chaquo/python/PyObject;

    .line 13
    new-instance v0, Lcom/chaquo/python/MethodCache;

    invoke-direct {v0, p1}, Lcom/chaquo/python/MethodCache;-><init>(Lcom/chaquo/python/PyObject;)V

    iput-object v0, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    .line 14
    const-string p1, "__contains__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 15
    const-string p1, "__iter__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 16
    const-string p1, "__len__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    return-void
.end method


# virtual methods
.method public add(Lcom/chaquo/python/PyObject;)Z
    .locals 4

    .line 45
    iget-object v0, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "add"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 49
    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-virtual {v0, v3}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 7
    check-cast p1, Lcom/chaquo/python/PyObject;

    invoke-virtual {p0, p1}, Lcom/chaquo/python/PySet;->add(Lcom/chaquo/python/PyObject;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

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

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/chaquo/python/PyObject;",
            ">;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/chaquo/python/PySet$1;

    iget-object v1, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    invoke-direct {v0, p0, v1}, Lcom/chaquo/python/PySet$1;-><init>(Lcom/chaquo/python/PySet;Lcom/chaquo/python/MethodCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v1, v3}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyError:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 62
    :cond_0
    throw p1
.end method

.method public size()I
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/chaquo/python/PySet;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "__len__"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chaquo/python/PyObject;->toInt()I

    move-result v0

    return v0
.end method
