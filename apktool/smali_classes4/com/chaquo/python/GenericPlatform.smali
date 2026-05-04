.class public Lcom/chaquo/python/GenericPlatform;
.super Lcom/chaquo/python/Python$Platform;
.source "SourceFile"


# instance fields
.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/chaquo/python/Python$Platform;-><init>()V

    .line 7
    const-string v0, "PYTHONPATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chaquo/python/GenericPlatform;->mPath:Ljava/lang/String;

    .line 10
    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    const-string v0, "chaquopy_java"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot use GenericPlatform on Android. Call Python.start(new AndroidPlatform(context)) before using Python, or use PyApplication to do this automatically."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/chaquo/python/GenericPlatform;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setPath(Ljava/lang/String;)Lcom/chaquo/python/GenericPlatform;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/chaquo/python/GenericPlatform;->mPath:Ljava/lang/String;

    return-object p0
.end method
