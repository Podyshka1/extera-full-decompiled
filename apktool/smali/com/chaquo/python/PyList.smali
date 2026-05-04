.class Lcom/chaquo/python/PyList;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
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

    .line 10
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/chaquo/python/PyList;->obj:Lcom/chaquo/python/PyObject;

    .line 12
    new-instance v0, Lcom/chaquo/python/MethodCache;

    invoke-direct {v0, p1}, Lcom/chaquo/python/MethodCache;-><init>(Lcom/chaquo/python/PyObject;)V

    iput-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    .line 13
    const-string p1, "__getitem__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    .line 14
    const-string p1, "__len__"

    invoke-virtual {v0, p1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    return-void
.end method

.method private checkLowerBound(I)V
    .locals 0

    if-ltz p1, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method

.method private maybeOutOfBounds(ILcom/chaquo/python/PyException;)Ljava/lang/RuntimeException;
    .locals 2

    .line 27
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IndexError:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method private outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", size is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Lcom/chaquo/python/PyList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public add(ILcom/chaquo/python/PyObject;)V
    .locals 3

    .line 93
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->checkLowerBound(I)V

    .line 94
    invoke-virtual {p0}, Lcom/chaquo/python/PyList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "insert"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return-void

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->outOfBounds(I)Ljava/lang/IndexOutOfBoundsException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 6
    check-cast p2, Lcom/chaquo/python/PyObject;

    invoke-virtual {p0, p1, p2}, Lcom/chaquo/python/PyList;->add(ILcom/chaquo/python/PyObject;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return-void
.end method

.method public get(I)Lcom/chaquo/python/PyObject;
    .locals 4

    .line 48
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->checkLowerBound(I)V

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    const-string v1, "__getitem__"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/chaquo/python/PyList;->maybeOutOfBounds(ILcom/chaquo/python/PyException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyList;->get(I)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lcom/chaquo/python/PyObject;
    .locals 4

    .line 101
    invoke-direct {p0, p1}, Lcom/chaquo/python/PyList;->checkLowerBound(I)V

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    const-string/jumbo v1, "pop"

    invoke-virtual {v0, v1}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/chaquo/python/PyList;->maybeOutOfBounds(ILcom/chaquo/python/PyException;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyList;->remove(I)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public set(ILcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;
    .locals 4

    .line 85
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyList;->get(I)Lcom/chaquo/python/PyObject;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

    const-string v2, "__setitem__"

    invoke-virtual {v1, v2}, Lcom/chaquo/python/MethodCache;->get(Ljava/lang/String;)Lcom/chaquo/python/PyObject;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/chaquo/python/PyObject;->call([Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p2, Lcom/chaquo/python/PyObject;

    invoke-virtual {p0, p1, p2}, Lcom/chaquo/python/PyList;->set(ILcom/chaquo/python/PyObject;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/chaquo/python/PyList;->methods:Lcom/chaquo/python/MethodCache;

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
