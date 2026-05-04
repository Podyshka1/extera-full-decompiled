.class public Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj$/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final conditionString:Ljava/lang/String;

.field public final iconName:Ljava/lang/String;

.field public final iconResId:I

.field public final itemId:Ljava/lang/String;

.field public final menuType:Ljava/lang/String;

.field public final onClickCallback:Lcom/chaquo/python/PyObject;

.field public final pluginId:Ljava/lang/String;

.field public final priority:I

.field public final subtext:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/chaquo/python/PyObject;)V
    .locals 5

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    const-wide v0, -0x53132cee1c0974dbL    # -2.763713359902053E-92

    .line 47
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    const-wide v2, -0x53132cf81c0974dbL    # -2.7636987296634446E-92

    .line 48
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->text:Ljava/lang/String;

    const-wide v2, -0x53132cfd1c0974dbL    # -2.7636914145441404E-92

    .line 49
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    const-wide v2, -0x53132d011c0974dbL    # -2.763685562448697E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {p2, p1, v3}, Lcom/chaquo/python/PyObject;->callAttr(Ljava/lang/String;[Ljava/lang/Object;)Lcom/chaquo/python/PyObject;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->onClickCallback:Lcom/chaquo/python/PyObject;

    const-wide v2, -0x53132d0a1c0974dbL    # -2.7636723952339494E-92

    .line 51
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    const-wide v2, -0x53132d121c0974dbL    # -2.7636606910430627E-92

    .line 54
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->iconName:Ljava/lang/String;

    const-wide v2, -0x53132d171c0974dbL    # -2.7636533759237585E-92

    .line 55
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->subtext:Ljava/lang/String;

    const-wide v2, -0x53132d1f1c0974dbL    # -2.7636416717328718E-92

    .line 56
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, v0, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getString(Lcom/chaquo/python/PyObject;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->conditionString:Ljava/lang/String;

    const-wide v2, -0x53132d291c0974dbL    # -2.7636270414942633E-92

    .line 57
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v4, v1}, Lcom/exteragram/messenger/plugins/utils/PyObjectUtils;->getInt(Lcom/chaquo/python/PyObject;Ljava/lang/String;IZ)I

    move-result p2

    iput p2, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->priority:I

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 62
    :try_start_0
    sget-object p2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-wide v1, -0x53132d321c0974dbL    # -2.7636138742795158E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    :cond_1
    iput v4, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->iconResId:I

    .line 69
    iget-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->menuType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->text:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->onClickCallback:Lcom/chaquo/python/PyObject;

    if-eqz p1, :cond_2

    return-void

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-wide v0, -0x53132d3b1c0974dbL    # -2.7636007070647682E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkCondition(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->conditionString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    :try_start_0
    sget-object v0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->conditionString:Ljava/lang/String;

    new-instance v2, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1, v2}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 96
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, p1, v1}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 97
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 78
    :cond_1
    check-cast p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;

    .line 79
    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    iget-object p1, p1, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->itemId:Ljava/lang/String;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/MenuItemRecord;->pluginId:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
