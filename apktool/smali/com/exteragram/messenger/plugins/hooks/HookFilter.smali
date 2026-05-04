.class public Lcom/exteragram/messenger/plugins/hooks/HookFilter;
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
.field public argIndex:Ljava/lang/Integer;

.field public final filterType:Ljava/lang/String;

.field public instanceOf:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public mvelExpression:Ljava/lang/String;

.field public object:Ljava/lang/Object;

.field public orFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/exteragram/messenger/plugins/hooks/HookFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    .line 38
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->orFilters:Ljava/util/ArrayList;

    .line 39
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->mvelExpression:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->instanceOf:Ljava/lang/Class;

    .line 41
    iput-object v0, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    .line 44
    iput-object p1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->filterType:Ljava/lang/String;

    return-void
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .line 141
    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_4

    .line 143
    instance-of v0, p1, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/Float;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/lang/Double;

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    cmp-long p1, v3, p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v2

    .line 144
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p1

    cmpl-double p1, v3, p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method


# virtual methods
.method public execute(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)Z
    .locals 6

    const/4 v0, 0x0

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->filterType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-wide v4, -0x53132e681c0974dbL    # -2.763160336882655E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :sswitch_1
    const-wide v4, -0x53132e591c0974dbL    # -2.7631822822405676E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :sswitch_2
    const-wide v4, -0x53132db71c0974dbL    # -2.763419292106024E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_2

    :sswitch_3
    const-wide v4, -0x53132e331c0974dbL    # -2.7632378771472796E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :sswitch_4
    const-wide v4, -0x53132da41c0974dbL    # -2.76344708955938E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_2

    :sswitch_5
    const-wide v4, -0x53132e151c0974dbL    # -2.7632817678631048E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :sswitch_6
    const-wide v4, -0x53132e221c0974dbL    # -2.763262748552914E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :sswitch_7
    const-wide v4, -0x53132e031c0974dbL    # -2.7633081022926E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_2

    :sswitch_8
    const-wide v4, -0x53132d881c0974dbL    # -2.7634880542274834E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->orFilters:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v0

    :cond_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/exteragram/messenger/plugins/hooks/HookFilter;

    .line 53
    invoke-virtual {v5, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->execute(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    return v3

    :cond_1
    return v0

    :sswitch_9
    const-wide v4, -0x53132e431c0974dbL    # -2.763214468765506E-92

    .line 49
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_1

    :sswitch_a
    const-wide v2, -0x53132d8b1c0974dbL    # -2.763483665155901E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide v2, -0x53132e871c0974dbL    # -2.763114983142969E-92

    .line 62
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x53132e8d1c0974dbL    # -2.763106204999804E-92

    .line 63
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x53132e941c0974dbL    # -2.763095963832778E-92

    .line 64
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->mvelExpression:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 67
    sget-object v2, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance v3, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, p2, v3}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    .line 71
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {p2, p1, v1, v2}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 72
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Lj$/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :sswitch_b
    const-wide v4, -0x53132d951c0974dbL    # -2.7634690349172925E-92

    .line 49
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_2

    :sswitch_c
    const-wide v4, -0x53132dcf1c0974dbL    # -2.7633841795333637E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto/16 :goto_2

    :sswitch_d
    const-wide v4, -0x53132e771c0974dbL    # -2.7631383915247423E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    :goto_1
    if-eqz p2, :cond_4

    return v0

    .line 112
    :cond_4
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->filterType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto/16 :goto_5

    :sswitch_e
    const-wide v1, -0x53132f491c0974dbL    # -2.7628311565139657E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 122
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0

    :sswitch_f
    const-wide v1, -0x53132f6e1c0974dbL    # -2.7627770246311145E-92

    .line 114
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-nez p1, :cond_6

    return v3

    :cond_6
    return v0

    :sswitch_10
    const-wide v1, -0x53132f391c0974dbL    # -2.762854564895739E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 120
    instance-of p2, p1, Ljava/lang/Boolean;

    if-eqz p2, :cond_7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    :cond_7
    return v0

    :sswitch_11
    const-wide v1, -0x53132f1b1c0974dbL    # -2.7628984556115644E-92

    .line 114
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 116
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :sswitch_12
    const-wide v1, -0x53132f281c0974dbL    # -2.7628794363013734E-92

    .line 114
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 118
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :sswitch_13
    const-wide v1, -0x53132f581c0974dbL    # -2.762809211156053E-92

    .line 114
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 124
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->instanceOf:Ljava/lang/Class;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    return v0

    :sswitch_14
    const-wide v1, -0x53132f7d1c0974dbL    # -2.762755079273202E-92

    .line 114
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v0

    :sswitch_15
    const-wide v4, -0x53132df21c0974dbL    # -2.7633329736982342E-92

    .line 49
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_2

    :sswitch_16
    const-wide v4, -0x53132de11c0974dbL    # -2.7633578451038685E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 83
    :goto_2
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-le p2, v1, :cond_a

    goto/16 :goto_3

    .line 87
    :cond_a
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->filterType:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    goto/16 :goto_5

    :sswitch_17
    const-wide v1, -0x53132ebd1c0974dbL    # -2.7630359798544835E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 93
    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->instanceOf:Ljava/lang/Class;

    if-eqz p2, :cond_b

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return v3

    :cond_b
    return v0

    :sswitch_18
    const-wide v1, -0x53132eaa1c0974dbL    # -2.7630637773078394E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 91
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :sswitch_19
    const-wide v1, -0x53132f091c0974dbL    # -2.7629247900410595E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 101
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    if-eqz p1, :cond_c

    return v3

    :cond_c
    return v0

    :sswitch_1a
    const-wide v1, -0x53132e9b1c0974dbL    # -2.763085722665752E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 89
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->object:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :sswitch_1b
    const-wide v1, -0x53132ed51c0974dbL    # -2.7630008672818233E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 95
    iget-object p2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_d

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_d

    return v3

    :cond_d
    return v0

    :sswitch_1c
    const-wide v1, -0x53132ef81c0974dbL    # -2.7629496614466938E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 99
    iget-object p2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p2, p2, v1

    instance-of p2, p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_e

    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    return v3

    :cond_e
    return v0

    :sswitch_1d
    const-wide v1, -0x53132ee71c0974dbL    # -2.762974532852328E-92

    .line 87
    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 97
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    iget-object p2, p0, Lcom/exteragram/messenger/plugins/hooks/HookFilter;->argIndex:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    aget-object p1, p1, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_f

    return v3

    :cond_f
    :goto_3
    return v0

    .line 134
    :goto_4
    invoke-static {p1}, Lcom/exteragram/messenger/utils/AppUtils;->log(Ljava/lang/Throwable;)V

    :cond_10
    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6dceec06 -> :sswitch_16
        -0x6dcc3bff -> :sswitch_15
        -0x51a026ab -> :sswitch_d
        -0x4c8866f0 -> :sswitch_c
        -0x4a6498ce -> :sswitch_b
        -0x335692e5 -> :sswitch_a
        -0xa2e2172 -> :sswitch_9
        0xde3 -> :sswitch_8
        0xabdb6b5 -> :sswitch_7
        0x1d1acd26 -> :sswitch_6
        0x1ecd4892 -> :sswitch_5
        0x4c789bc6 -> :sswitch_4
        0x5719bbb0 -> :sswitch_3
        0x6fec33ee -> :sswitch_2
        0x76701d5a -> :sswitch_1
        0x7672cd61 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x51a026ab -> :sswitch_14
        -0xa2e2172 -> :sswitch_13
        0x1d1acd26 -> :sswitch_12
        0x1ecd4892 -> :sswitch_11
        0x5719bbb0 -> :sswitch_10
        0x76701d5a -> :sswitch_f
        0x7672cd61 -> :sswitch_e
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        -0x6dceec06 -> :sswitch_1d
        -0x6dcc3bff -> :sswitch_1c
        -0x4c8866f0 -> :sswitch_1b
        -0x4a6498ce -> :sswitch_1a
        0xabdb6b5 -> :sswitch_19
        0x4c789bc6 -> :sswitch_18
        0x6fec33ee -> :sswitch_17
    .end sparse-switch
.end method
