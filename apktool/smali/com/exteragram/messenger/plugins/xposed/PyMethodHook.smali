.class public Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# instance fields
.field private afterHookedFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;"
        }
    .end annotation
.end field

.field private beforeHookedFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final hasAfterHook:Z

.field private final hasBeforeHook:Z

.field private final pluginId:Ljava/lang/String;

.field private final pythonCallback:Lcom/chaquo/python/PyObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pluginId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pythonCallback:Lcom/chaquo/python/PyObject;

    const-wide v0, -0x531329e51c0974dbL    # -2.7648501294419267E-92

    .line 42
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasBeforeHook:Z

    const-wide v0, -0x531329fa1c0974dbL    # -2.764819405940849E-92

    .line 43
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasAfterHook:Z

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide v0, -0x531329bf1c0974dbL    # -2.7649057243486386E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;I)V
    .locals 2

    .line 47
    invoke-direct {p0, p3}, Lde/robv/android/xposed/XC_MethodHook;-><init>(I)V

    .line 32
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    .line 33
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    .line 51
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pluginId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pythonCallback:Lcom/chaquo/python/PyObject;

    const-wide v0, -0x53132a341c0974dbL    # -2.7647345505569202E-92

    .line 53
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasBeforeHook:Z

    const-wide v0, -0x53132a491c0974dbL    # -2.7647038270558425E-92

    .line 54
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/chaquo/python/PyObject;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasAfterHook:Z

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide p2, -0x53132a0e1c0974dbL    # -2.7647901454636322E-92

    invoke-static {p2, p3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleHookError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 112
    instance-of v0, p2, Lcom/chaquo/python/PyException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x53132aab1c0974dbL    # -2.76456045071748E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v0, -0x53132ab21c0974dbL    # -2.7645502095504542E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pluginId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x53132ae31c0974dbL    # -2.764478521381273E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pluginId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53132aec1c0974dbL    # -2.7644653541665254E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v1, -0x53132afa1c0974dbL    # -2.7644448718324736E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .line 94
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasAfterHook:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/exteragram/messenger/plugins/hooks/HookFilter;

    .line 100
    invoke-virtual {v4, p1, v1}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->execute(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pythonCallback:Lcom/chaquo/python/PyObject;

    const-wide v2, -0x53132a851c0974dbL    # -2.764616045624192E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-wide v0, -0x53132a991c0974dbL    # -2.7645867851469752E-92

    .line 107
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->handleHookError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 6

    .line 75
    iget-boolean v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->hasBeforeHook:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    :cond_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/exteragram/messenger/plugins/hooks/HookFilter;

    .line 81
    invoke-virtual {v5, p1, v2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->execute(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->pythonCallback:Lcom/chaquo/python/PyObject;

    const-wide v3, -0x53132a5d1c0974dbL    # -2.7646745665786257E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    const-wide v0, -0x53132a721c0974dbL    # -2.764643843077548E-92

    .line 88
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->handleHookError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public getAfterHookedFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBeforeHookedFilters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setAfterHookedFilters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;)V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->afterHookedFilters:Ljava/util/ArrayList;

    return-void
.end method

.method public setBeforeHookedFilters(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/xposed/PyMethodHook;->beforeHookedFilters:Ljava/util/ArrayList;

    return-void
.end method
