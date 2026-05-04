.class public Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "SourceFile"


# instance fields
.field private final pluginId:Ljava/lang/String;

.field private final pythonCallback:Lcom/chaquo/python/PyObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    if-eqz p2, :cond_1

    const-wide v0, -0x531328611c0974dbL    # -2.765417782699933E-92

    .line 33
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pluginId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pythonCallback:Lcom/chaquo/python/PyObject;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide v0, -0x531328771c0974dbL    # -2.7653855961749946E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide v0, -0x5313283b1c0974dbL    # -2.765473377606645E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;I)V
    .locals 2

    .line 41
    invoke-direct {p0, p3}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>(I)V

    if-eqz p2, :cond_1

    const-wide v0, -0x531328e61c0974dbL    # -2.7652232005264412E-92

    .line 45
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 48
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pluginId:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pythonCallback:Lcom/chaquo/python/PyObject;

    return-void

    .line 46
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide p2, -0x531328fc1c0974dbL    # -2.7651910140015027E-92

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide p2, -0x531328c01c0974dbL    # -2.7652787954331532E-92

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleHookError(Ljava/lang/Throwable;)V
    .locals 3

    .line 67
    instance-of v0, p1, Lcom/chaquo/python/PyException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x5313295b1c0974dbL    # -2.7650520267347228E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x531329621c0974dbL    # -2.765041785567697E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x531329931c0974dbL    # -2.7649700973985157E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x5313299c1c0974dbL    # -2.764956930183768E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->pythonCallback:Lcom/chaquo/python/PyObject;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide v2, -0x531329451c0974dbL    # -2.7650842132596613E-92

    .line 58
    :try_start_0
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 59
    :cond_1
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/chaquo/python/PyObject;->toJava(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 61
    invoke-direct {p0, p1}, Lcom/exteragram/messenger/plugins/xposed/PyMethodReplacement;->handleHookError(Ljava/lang/Throwable;)V

    return-object v1
.end method
