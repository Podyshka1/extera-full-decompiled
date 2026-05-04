.class interface abstract Lcom/exteragram/messenger/plugins/PythonPluginsEngine$PyMethodCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/PythonPluginsEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PyMethodCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract call(Lcom/chaquo/python/PyObject;Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chaquo/python/PyObject;",
            "TT;)",
            "Lcom/chaquo/python/PyObject;"
        }
    .end annotation
.end method
