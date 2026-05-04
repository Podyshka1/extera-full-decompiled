.class Lcom/chaquo/python/PyObject$1;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chaquo/python/PyObject;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/chaquo/python/PyObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chaquo/python/PyObject;


# direct methods
.method constructor <init>(Lcom/chaquo/python/PyObject;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/chaquo/python/PyObject$1;->this$0:Lcom/chaquo/python/PyObject;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/chaquo/python/PyObject;",
            ">;>;"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/chaquo/python/PyObject$1$1;

    invoke-direct {v0, p0}, Lcom/chaquo/python/PyObject$1$1;-><init>(Lcom/chaquo/python/PyObject$1;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/chaquo/python/PyObject$1;->this$0:Lcom/chaquo/python/PyObject;

    invoke-static {v0}, Lcom/chaquo/python/PyObject;->access$000(Lcom/chaquo/python/PyObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
