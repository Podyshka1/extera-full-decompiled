.class public final Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Lcom/chaquo/python/PyObject;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p0, :cond_2

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_2

    .line 58
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->toBoolean()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :try_start_2
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_2
    .catch Lcom/chaquo/python/PyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 53
    :try_start_3
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catch Lcom/chaquo/python/PyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return p2
.end method

.method public static getInt(Lcom/chaquo/python/PyObject;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {p0, p1, p2, v0}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getInt(Lcom/chaquo/python/PyObject;Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public static getInt(Lcom/chaquo/python/PyObject;Ljava/lang/String;IZ)I
    .locals 2

    if-eqz p0, :cond_3

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    const-wide v0, -0x531321bb1c0974dbL    # -2.767907849311085E-92

    .line 71
    :try_start_0
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    if-eqz p0, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    .line 75
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->toInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_2
    .catch Lcom/chaquo/python/PyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    return p1

    :catchall_0
    move-exception p1

    .line 71
    :try_start_3
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Lcom/chaquo/python/PyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return p2
.end method

.method public static getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-static {p0, p1, p2, v0}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    const-wide v0, -0x531321b71c0974dbL    # -2.7679137014065284E-92

    .line 39
    :try_start_0
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p3, v0}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    if-eqz p0, :cond_3

    .line 44
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 43
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_2
    .catch Lcom/chaquo/python/PyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 39
    :try_start_3
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Lcom/chaquo/python/PyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-object p2
.end method

.method public static getStringArray(Lcom/chaquo/python/PyObject;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    .line 82
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyObject;->get(Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_3

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_0
    .catch Lcom/chaquo/python/PyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 89
    :cond_1
    :try_start_1
    const-class p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 90
    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_2
    .catch Lcom/chaquo/python/PyException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 85
    :try_start_3
    invoke-virtual {p0}, Lcom/chaquo/python/PyObject;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Lcom/chaquo/python/PyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-object p2
.end method
