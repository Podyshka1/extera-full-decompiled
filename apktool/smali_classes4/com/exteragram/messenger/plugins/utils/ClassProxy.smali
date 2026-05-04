.class public Lcom/exteragram/messenger/plugins/utils/ClassProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;,
        Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;,
        Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;,
        Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;,
        Lcom/exteragram/messenger/plugins/utils/ClassProxy$TypeHelper;
    }
.end annotation


# static fields
.field private static final PYTHON_PEER_FIELD_NAME:Ljava/lang/String;

.field private static final generatedClassLoaderLock:Ljava/lang/Object;

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

.field private static volatile sharedGeneratedClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x531324361c0974dbL    # -2.7669788291594508E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->PYTHON_PEER_FIELD_NAME:Ljava/lang/String;

    .line 44
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generatedClassLoaderLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 375
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    const/16 v3, 0x3a

    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-wide v0, -0x531324011c0974dbL    # -2.7670563694240754E-92

    .line 713
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide v0, -0x531324051c0974dbL    # -2.767050517328632E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide v0, -0x531324091c0974dbL    # -2.7670446652331886E-92

    .line 714
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v0, -0x531324111c0974dbL    # -2.767032961042302E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide v0, -0x531324161c0974dbL    # -2.7670256459229977E-92

    .line 715
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, -0x5313241c1c0974dbL    # -2.7670168677798327E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide v0, -0x531324221c0974dbL    # -2.7670080896366676E-92

    .line 716
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide v0, -0x531324271c0974dbL    # -2.7670007745173634E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide v0, -0x5313242c1c0974dbL    # -2.7669934593980592E-92

    .line 717
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v0, -0x531324311c0974dbL    # -2.766986144278755E-92

    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 718
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static collectOverridableMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_5

    .line 348
    const-class v0, Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_2

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 353
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 355
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 356
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 358
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 360
    invoke-interface {p1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 365
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 366
    invoke-static {v3, p1}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->collectOverridableMethods(Ljava/lang/Class;Ljava/util/Map;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->collectOverridableMethods(Ljava/lang/Class;Ljava/util/Map;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public static createProxyClass(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/telegram/messenger/Utilities$Callback3Return<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;",
            ">;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 145
    invoke-static/range {v0 .. v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->createProxyClassInternal(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static createProxyClass(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Ljava/util/List;Ljava/util/List;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/telegram/messenger/Utilities$Callback3Return<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 135
    invoke-static/range {v0 .. v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->createProxyClassInternal(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static createProxyClass(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/telegram/messenger/Utilities$Callback3Return<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;",
            ">;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;",
            ">;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 140
    invoke-static/range {v0 .. v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->createProxyClassInternal(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static createProxyClassInternal(Ljava/lang/Class;Lorg/telegram/messenger/Utilities$Callback3Return;Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Z)Ljava/lang/Class;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lorg/telegram/messenger/Utilities$Callback3Return<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "*>;>;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;",
            ">;",
            "Ljava/util/List<",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;",
            ">;Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 150
    new-instance v2, Lcom/android/dx/DexMaker;

    invoke-direct {v2}, Lcom/android/dx/DexMaker;-><init>()V

    .line 151
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v3, -0x531322c11c0974dbL    # -2.7675245370595446E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 154
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x531322cb1c0974dbL    # -2.7675099068209362E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v5, -0x531322f31c0974dbL    # -2.7674513858665025E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-wide v5, -0x531322f51c0974dbL    # -2.767448459818781E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x531322f71c0974dbL    # -2.767445533771059E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    const/16 v5, 0x2f

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, -0x531322f91c0974dbL    # -2.7674426077233375E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/String;)Lcom/android/dx/TypeId;

    move-result-object v3

    .line 158
    invoke-static/range {p0 .. p0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    .line 160
    const-class v4, Lorg/telegram/messenger/Utilities$Callback3Return;

    invoke-static {v4}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v4

    const-wide v7, -0x531322fb1c0974dbL    # -2.7674396816756158E-92

    .line 161
    invoke-static {v7, v8}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    move-result-object v10

    .line 163
    invoke-static/range {p3 .. p3}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->toInterfaceTypeIds(Ljava/util/List;)[Lcom/android/dx/TypeId;

    move-result-object v7

    .line 164
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 165
    array-length v4, v7

    const/4 v12, 0x0

    move v5, v12

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v8, v7, v5

    .line 166
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-wide v4, -0x531323091c0974dbL    # -2.767419199341564E-92

    .line 169
    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/TypeId;Ljava/lang/String;ILcom/android/dx/TypeId;[Lcom/android/dx/TypeId;)V

    move-object v13, v6

    const/16 v4, 0x9

    const/4 v14, 0x0

    .line 170
    invoke-virtual {v2, v10, v4, v14}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    if-eqz p7, :cond_7

    .line 173
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;

    if-eqz v5, :cond_2

    .line 174
    iget-object v6, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->name:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->type:Ljava/lang/Class;

    if-nez v6, :cond_3

    goto :goto_1

    .line 178
    :cond_3
    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    iget-object v7, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->name:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    move-result-object v6

    .line 179
    iget v7, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->modifiers:I

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->type:Ljava/lang/Class;

    invoke-static {v7}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->defaultValueForType(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v14

    .line 180
    :goto_2
    iget v8, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->modifiers:I

    invoke-virtual {v2, v6, v8, v7}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 182
    iget-object v6, v5, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->methods:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 183
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;

    if-eqz v7, :cond_5

    .line 184
    iget-object v8, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->name:Ljava/lang/String;

    if-nez v8, :cond_6

    goto :goto_3

    .line 187
    :cond_6
    invoke-static {v2, v3, v5, v7}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateFieldAccessorMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;)V

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 193
    new-array v4, v12, [Ljava/lang/reflect/Constructor;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    goto :goto_4

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 194
    :goto_4
    array-length v4, v1

    move v5, v12

    :goto_5
    if-ge v5, v4, :cond_a

    aget-object v6, v1, v5

    .line 195
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_6

    .line 196
    :cond_9
    invoke-static {v2, v3, v13, v6, v10}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateConstructor(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/android/dx/TypeId;Ljava/lang/reflect/Constructor;Lcom/android/dx/FieldId;)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v5, p0

    move-object/from16 v6, p3

    .line 199
    invoke-static {v5, v6}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->getAllOverridableMethods(Ljava/lang/Class;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 200
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p8, :cond_c

    if-nez p4, :cond_c

    if-eqz p6, :cond_b

    .line 201
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 202
    :cond_b
    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_c
    if-eqz p4, :cond_e

    .line 205
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-nez v6, :cond_d

    goto :goto_7

    .line 207
    :cond_d
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 211
    :cond_e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 212
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p6, :cond_17

    .line 214
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;

    if-eqz v7, :cond_f

    .line 215
    iget-object v8, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    if-nez v8, :cond_10

    goto :goto_8

    .line 217
    :cond_10
    iget-boolean v14, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->overrideExisting:Z

    if-eqz v14, :cond_15

    .line 218
    iget-object v14, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->parameterTypes:[Ljava/lang/Class;

    if-nez v14, :cond_13

    .line 219
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/reflect/Method;

    .line 220
    iget-object v12, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    move-object/from16 p0, v6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 221
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 222
    invoke-interface {v4, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    invoke-virtual {v7}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->isMvel()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 224
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    move-object/from16 v6, p0

    const/4 v12, 0x0

    goto :goto_9

    :cond_12
    move-object/from16 p0, v6

    goto :goto_a

    :cond_13
    move-object/from16 p0, v6

    .line 229
    invoke-static {v8, v14}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_14

    .line 233
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-static {v8, v12}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 234
    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    invoke-virtual {v7}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->isMvel()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 236
    invoke-interface {v5, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 231
    :cond_14
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x531323251c0974dbL    # -2.7673782346734605E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object/from16 p0, v6

    .line 240
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_a
    move-object/from16 v6, p0

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto/16 :goto_8

    .line 245
    :cond_17
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v14, 0x1

    if-eqz v1, :cond_19

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 247
    invoke-static {v2, v3, v4, v10, v14}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateProxyMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/reflect/Method;Lcom/android/dx/FieldId;Z)V

    .line 248
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;

    if-eqz v1, :cond_18

    .line 249
    invoke-virtual {v1}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->isMvel()Z

    move-result v6

    if-eqz v6, :cond_18

    move-object v6, v2

    move-object v2, v3

    .line 253
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v7, v4

    .line 254
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    move-object v8, v5

    .line 255
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    iget-object v7, v1, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->mvelCode:Ljava/lang/String;

    iget-object v1, v1, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->argumentNames:Ljava/util/List;

    move-object v14, v8

    move-object v8, v1

    move-object v1, v6

    const/4 v6, 0x1

    move-object/from16 v16, v14

    .line 250
    invoke-static/range {v1 .. v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateMvelMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/String;Ljava/util/List;)V

    goto :goto_c

    :cond_18
    move-object v1, v2

    move-object v2, v3

    move-object v7, v4

    move-object/from16 v16, v5

    const/4 v3, 0x0

    .line 261
    invoke-static {v1, v2, v7, v10, v3}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateProxyMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/reflect/Method;Lcom/android/dx/FieldId;Z)V

    :goto_c
    move-object v3, v2

    move-object/from16 v5, v16

    move-object v2, v1

    goto :goto_b

    :cond_19
    move-object v1, v2

    move-object v2, v3

    .line 265
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v12, :cond_21

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v16, v3, 0x1

    check-cast v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;

    .line 266
    invoke-virtual {v4}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->isMvel()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 267
    iget-object v3, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    .line 271
    iget-object v5, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->returnType:Ljava/lang/Class;

    if-eqz v5, :cond_1a

    goto :goto_e

    :cond_1a
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 272
    :goto_e
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->parameterTypes:[Ljava/lang/Class;

    if-eqz v6, :cond_1b

    goto :goto_f

    :cond_1b
    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    move-object v6, v7

    .line 273
    :goto_f
    iget v7, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->modifiers:I

    if-eqz v7, :cond_1c

    goto :goto_10

    :cond_1c
    move v7, v14

    :goto_10
    iget-object v8, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->mvelCode:Ljava/lang/String;

    move-object/from16 v17, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    iget-object v8, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->argumentNames:Ljava/util/List;

    move-object/from16 v4, v17

    .line 267
    invoke-static/range {v1 .. v8}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateMvelMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/String;Ljava/util/List;)V

    move-object v7, v10

    const/4 v8, 0x0

    goto :goto_15

    .line 278
    :cond_1d
    iget-object v3, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->name:Ljava/lang/String;

    .line 282
    iget-object v5, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->returnType:Ljava/lang/Class;

    if-eqz v5, :cond_1e

    goto :goto_11

    :cond_1e
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 283
    :goto_11
    iget-object v6, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->parameterTypes:[Ljava/lang/Class;

    const/4 v8, 0x0

    if-eqz v6, :cond_1f

    goto :goto_12

    :cond_1f
    new-array v6, v8, [Ljava/lang/Class;

    .line 284
    :goto_12
    iget v4, v4, Lcom/exteragram/messenger/plugins/utils/ClassProxy$ProxyMethodSpec;->modifiers:I

    if-eqz v4, :cond_20

    move-object v7, v6

    move v6, v4

    move-object v4, v5

    move-object v5, v7

    :goto_13
    move-object v7, v10

    goto :goto_14

    :cond_20
    move-object v4, v5

    move-object v5, v6

    move v6, v14

    goto :goto_13

    .line 278
    :goto_14
    invoke-static/range {v1 .. v7}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateHandlerMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILcom/android/dx/FieldId;)V

    :goto_15
    move-object v10, v7

    move/from16 v3, v16

    goto :goto_d

    :cond_21
    if-eqz v0, :cond_22

    .line 291
    invoke-interface {v0, v1, v2, v13, v11}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$DexMakerHook;->apply(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/android/dx/TypeId;Ljava/util/List;)V

    .line 294
    :cond_22
    invoke-virtual {v1}, Lcom/android/dx/DexMaker;->generate()[B

    move-result-object v0

    .line 296
    sget-object v1, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generatedClassLoaderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    sget-object v2, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->sharedGeneratedClassLoader:Ljava/lang/ClassLoader;

    if-nez v2, :cond_23

    .line 299
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_16

    :catchall_0
    move-exception v0

    goto :goto_17

    .line 302
    :cond_23
    :goto_16
    invoke-static {}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$$ExternalSyntheticApiModelOutline1;->m()V

    .line 303
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/exteragram/messenger/plugins/utils/ClassProxy$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/ByteBuffer;Ljava/lang/ClassLoader;)Ldalvik/system/InMemoryDexClassLoader;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v9}, Ldalvik/system/InMemoryDexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 308
    sput-object v0, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->sharedGeneratedClassLoader:Ljava/lang/ClassLoader;

    .line 309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v0, -0x5313234b1c0974dbL    # -2.7673226397667485E-92

    .line 311
    invoke-static {v0, v1}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 312
    invoke-virtual {v0, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    move-object/from16 v1, p1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {v0, v3, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 309
    :goto_17
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static defaultValueForType(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 384
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 385
    :cond_1
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 386
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 387
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 388
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 389
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 390
    :cond_6
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    .line 391
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static executeMvelMethod(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 686
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    new-array p4, v1, [Ljava/lang/Object;

    :goto_0
    const-wide v2, -0x531323df1c0974dbL    # -2.767106112235344E-92

    .line 689
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x531323e41c0974dbL    # -2.7670987971160398E-92

    .line 690
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x531323eb1c0974dbL    # -2.767088555949014E-92

    .line 691
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x531323ee1c0974dbL    # -2.7670841668774314E-92

    .line 692
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x531323f31c0974dbL    # -2.767076851758127E-92

    .line 693
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide v2, -0x531323f81c0974dbL    # -2.767069536638823E-92

    .line 694
    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object p1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :goto_1
    array-length p1, p4

    if-ge v1, p1, :cond_2

    .line 697
    aget-object p1, p4, v1

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531323fd1c0974dbL    # -2.7670622215195187E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 700
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 701
    aget-object v2, p3, v1

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 703
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 708
    :cond_2
    sget-object p1, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->mvelExpressionCache:Lj$/util/concurrent/ConcurrentHashMap;

    new-instance p3, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/exteragram/messenger/plugins/hooks/HookFilter$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p2, p3}, Lj$/util/concurrent/ConcurrentMap$-EL;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Serializable;

    .line 709
    invoke-static {p1, p0, v0}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static generateConstructor(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/android/dx/TypeId;Ljava/lang/reflect/Constructor;Lcom/android/dx/FieldId;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Lcom/android/dx/FieldId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 395
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 396
    array-length v2, v1

    new-array v2, v2, [Lcom/android/dx/TypeId;

    const/4 v3, 0x0

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v5, v3

    .line 397
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v7, p0

    .line 400
    invoke-virtual {v7, v5, v6}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object v5

    .line 402
    const-class v7, Lorg/telegram/messenger/Utilities$Callback3Return;

    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v7

    .line 403
    sget-object v8, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v9, -0x531323721c0974dbL    # -2.7672655818361757E-92

    invoke-static {v9, v10}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    new-array v11, v10, [Lcom/android/dx/TypeId;

    aput-object v8, v11, v3

    aput-object v8, v11, v6

    const/4 v12, 0x2

    aput-object v8, v11, v12

    invoke-virtual {v7, v8, v9, v11}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v9

    .line 405
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v0

    .line 406
    invoke-virtual {v5, v7}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v7

    .line 407
    sget-object v11, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    invoke-virtual {v5, v11}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v11

    .line 408
    const-class v13, [Ljava/lang/Object;

    invoke-static {v13}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v14

    .line 409
    invoke-virtual {v5, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v15

    move/from16 p3, v3

    .line 410
    invoke-virtual {v5, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v3

    .line 411
    invoke-static {v13}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v13

    move/from16 p0, v12

    .line 412
    sget-object v12, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    invoke-virtual {v5, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v10

    .line 413
    invoke-virtual {v5, v12}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v12

    .line 414
    array-length v6, v1

    new-array v6, v6, [Lcom/android/dx/Local;

    .line 415
    invoke-virtual {v5, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v8

    move-object/from16 v17, v0

    move-object/from16 p1, v6

    move/from16 v6, p3

    .line 416
    :goto_1
    array-length v0, v1

    if-ge v6, v0, :cond_1

    sget-object v0, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v0

    aput-object v0, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 418
    :cond_1
    sget-object v0, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v0

    .line 420
    array-length v6, v1

    new-array v6, v6, [Lcom/android/dx/Local;

    move-object/from16 v19, v2

    move-object/from16 v18, v6

    move/from16 v6, p3

    .line 421
    :goto_2
    array-length v2, v1

    if-ge v6, v2, :cond_2

    aget-object v2, v19, v6

    invoke-virtual {v5, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v2

    aput-object v2, v18, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 423
    :cond_2
    invoke-virtual {v5, v0, v4}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 424
    invoke-virtual {v5, v14, v0}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 425
    invoke-virtual {v5, v13, v14}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move-object/from16 v0, p4

    .line 426
    invoke-virtual {v5, v0, v7}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    const-wide v20, -0x531323761c0974dbL    # -2.7672597297407323E-92

    .line 427
    invoke-static/range {v20 .. v21}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v11, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 428
    invoke-virtual {v5, v15, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 429
    invoke-virtual {v5, v12, v4}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 430
    invoke-virtual {v5, v8, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    move/from16 v2, p3

    .line 432
    :goto_3
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 433
    aget-object v4, v18, v2

    aget-object v6, v19, v2

    invoke-virtual {v5, v2, v6}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 436
    :cond_3
    array-length v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v10, v2}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 437
    invoke-virtual {v5, v14, v10}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move/from16 v2, p3

    .line 439
    :goto_4
    array-length v4, v1

    const-class v6, Lcom/exteragram/messenger/plugins/utils/ClassProxy$TypeHelper;

    if-ge v2, v4, :cond_5

    .line 440
    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v4

    sget-object v6, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v20, -0x531323841c0974dbL    # -2.7672392474066805E-92

    invoke-static/range {v20 .. v21}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    aget-object v20, v1, v2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_4

    aget-object v20, v19, v2

    :goto_5
    move/from16 v21, v2

    const/4 v0, 0x1

    goto :goto_6

    :cond_4
    move-object/from16 v20, v6

    goto :goto_5

    :goto_6
    new-array v2, v0, [Lcom/android/dx/TypeId;

    aput-object v20, v2, p3

    invoke-virtual {v4, v6, v10, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v2

    .line 441
    aget-object v4, p1, v21

    aget-object v6, v18, v21

    new-array v10, v0, [Lcom/android/dx/Local;

    aput-object v6, v10, p3

    invoke-virtual {v5, v2, v4, v10}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 442
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v12, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 443
    aget-object v0, p1, v21

    invoke-virtual {v5, v14, v12, v0}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    add-int/lit8 v2, v21, 0x1

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    const/4 v0, 0x3

    .line 446
    new-array v2, v0, [Lcom/android/dx/Local;

    aput-object v15, v2, p3

    const/16 v16, 0x1

    aput-object v11, v2, v16

    aput-object v14, v2, p0

    invoke-virtual {v5, v9, v3, v7, v2}, Lcom/android/dx/Code;->invokeInterface(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 448
    new-instance v0, Lcom/android/dx/Label;

    invoke-direct {v0}, Lcom/android/dx/Label;-><init>()V

    .line 449
    sget-object v2, Lcom/android/dx/Comparison;->EQ:Lcom/android/dx/Comparison;

    invoke-virtual {v5, v2, v0, v3, v15}, Lcom/android/dx/Code;->compare(Lcom/android/dx/Comparison;Lcom/android/dx/Label;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 451
    invoke-virtual {v5, v13, v3}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move/from16 v2, p3

    .line 452
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_7

    .line 453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v12, v3}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 454
    invoke-virtual {v5, v8, v13, v12}, Lcom/android/dx/Code;->aget(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 456
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v20, -0x531323881c0974dbL    # -2.7672333953112372E-92

    invoke-static/range {v20 .. v21}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v4

    aget-object v10, v19, v2

    move-object/from16 v20, v1

    const/4 v15, 0x1

    new-array v1, v15, [Lcom/android/dx/TypeId;

    sget-object v16, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    aput-object v16, v1, p3

    invoke-virtual {v4, v10, v3, v1}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v1

    .line 459
    aget-object v3, v18, v2

    new-array v4, v15, [Lcom/android/dx/Local;

    aput-object v8, v4, p3

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    goto :goto_8

    :cond_6
    move-object/from16 v20, v1

    .line 461
    aget-object v1, v18, v2

    invoke-virtual {v5, v1, v8}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v1, v20

    goto :goto_7

    .line 465
    :cond_7
    invoke-virtual {v5, v0}, Lcom/android/dx/Code;->mark(Lcom/android/dx/Label;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    .line 467
    invoke-virtual {v0, v1}, Lcom/android/dx/TypeId;->getConstructor([Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3, v1, v2}, Lcom/android/dx/Code;->invokeDirect(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    const/4 v0, 0x3

    .line 468
    new-array v0, v0, [Lcom/android/dx/Local;

    aput-object v1, v0, p3

    const/16 v16, 0x1

    aput-object v11, v0, v16

    aput-object v14, v0, p0

    invoke-virtual {v5, v9, v3, v7, v0}, Lcom/android/dx/Code;->invokeInterface(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 470
    invoke-virtual {v5}, Lcom/android/dx/Code;->returnVoid()V

    return-void
.end method

.method private static generateFieldAccessorMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;",
            "Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;",
            ")V"
        }
    .end annotation

    .line 650
    iget-object v0, p2, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v0

    .line 651
    iget-object v1, p2, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    move-result-object v1

    .line 652
    iget p2, p2, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldSpec;->modifiers:I

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    .line 653
    iget v2, p3, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->modifiers:I

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 655
    :goto_0
    iget-boolean v4, p3, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->getter:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    .line 656
    iget-object p3, p3, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->name:Ljava/lang/String;

    new-array v3, v5, [Lcom/android/dx/TypeId;

    invoke-virtual {p1, v0, p3, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object p3

    .line 657
    invoke-virtual {p0, p3, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object p0

    .line 658
    invoke-virtual {p0, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p3

    if-eqz p2, :cond_1

    .line 661
    invoke-virtual {p0, v1, p3}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    goto :goto_1

    .line 663
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p1

    .line 664
    invoke-virtual {p0, v1, p3, p1}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 667
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    return-void

    .line 671
    :cond_2
    sget-object v4, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    iget-object p3, p3, Lcom/exteragram/messenger/plugins/utils/ClassProxy$FieldMethodSpec;->name:Ljava/lang/String;

    new-array v3, v3, [Lcom/android/dx/TypeId;

    aput-object v0, v3, v5

    invoke-virtual {p1, v4, p3, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object p3

    .line 672
    invoke-virtual {p0, p3, v2}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object p0

    .line 673
    invoke-virtual {p0, v5, v0}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p3

    if-eqz p2, :cond_3

    .line 676
    invoke-virtual {p0, v1, p3}, Lcom/android/dx/Code;->sput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    goto :goto_2

    .line 678
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p1

    .line 679
    invoke-virtual {p0, v1, p1, p3}, Lcom/android/dx/Code;->iput(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 682
    :goto_2
    invoke-virtual {p0}, Lcom/android/dx/Code;->returnVoid()V

    return-void
.end method

.method private static generateHandlerMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILcom/android/dx/FieldId;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;I",
            "Lcom/android/dx/FieldId;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    .line 500
    array-length v3, v2

    new-array v3, v3, [Lcom/android/dx/TypeId;

    const/4 v4, 0x0

    move v5, v4

    .line 501
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 503
    :cond_0
    const-class v5, Lorg/telegram/messenger/Utilities$Callback3Return;

    invoke-static {v5}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    .line 504
    sget-object v7, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v8, -0x531323951c0974dbL    # -2.7672143760010462E-92

    invoke-static {v8, v9}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    new-array v10, v9, [Lcom/android/dx/TypeId;

    aput-object v7, v10, v4

    const/4 v11, 0x1

    aput-object v7, v10, v11

    const/4 v12, 0x2

    aput-object v7, v10, v12

    invoke-virtual {v6, v7, v8, v10}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v6

    .line 512
    invoke-static/range {p3 .. p3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v8

    .line 514
    invoke-virtual {v0, v8, v1, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v10

    move-object/from16 v13, p0

    move/from16 v14, p5

    .line 515
    invoke-virtual {v13, v10, v14}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object v10

    .line 517
    invoke-virtual {v10, v0}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v0

    .line 519
    sget-object v13, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    invoke-virtual {v8, v13}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual {v10, v8}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v13

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    .line 521
    :goto_1
    invoke-static {v5}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v5

    .line 522
    sget-object v14, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    invoke-virtual {v10, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v14

    .line 523
    const-class v15, [Ljava/lang/Object;

    invoke-static {v15}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v15

    invoke-virtual {v10, v15}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v15

    move/from16 v16, v4

    .line 524
    sget-object v4, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    move/from16 v17, v12

    invoke-virtual {v10, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v12

    .line 525
    invoke-virtual {v10, v7}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v7

    .line 526
    invoke-virtual {v10, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v4

    .line 528
    array-length v9, v2

    new-array v9, v9, [Lcom/android/dx/Local;

    move-object/from16 p0, v0

    move/from16 v11, v16

    .line 529
    :goto_2
    array-length v0, v2

    if-ge v11, v0, :cond_2

    .line 530
    sget-object v0, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    invoke-virtual {v10, v0}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v0

    aput-object v0, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p6

    .line 533
    invoke-virtual {v10, v0, v5}, Lcom/android/dx/Code;->sget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;)V

    .line 534
    invoke-static {v1, v2}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->buildMethodSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v14, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 536
    array-length v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v12, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 537
    invoke-virtual {v10, v15, v12}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move/from16 v0, v16

    .line 538
    :goto_3
    array-length v1, v2

    const-class v11, Lcom/exteragram/messenger/plugins/utils/ClassProxy$TypeHelper;

    if-ge v0, v1, :cond_4

    .line 539
    aget-object v1, v3, v0

    invoke-virtual {v10, v0, v1}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v1

    .line 540
    invoke-static {v11}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v11

    sget-object v12, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v19, -0x531323991c0974dbL    # -2.767208523905603E-92

    move/from16 p1, v0

    invoke-static/range {v19 .. v20}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v0

    aget-object v19, v2, p1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isPrimitive()Z

    move-result v19

    if-eqz v19, :cond_3

    aget-object v19, v3, p1

    :goto_4
    move-object/from16 p2, v1

    const/4 v1, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v19, v12

    goto :goto_4

    :goto_5
    new-array v2, v1, [Lcom/android/dx/TypeId;

    aput-object v19, v2, v16

    invoke-virtual {v11, v12, v0, v2}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v0

    .line 541
    aget-object v2, v9, p1

    new-array v11, v1, [Lcom/android/dx/Local;

    aput-object p2, v11, v16

    invoke-virtual {v10, v0, v2, v11}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 542
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v4, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 543
    aget-object v0, v9, p1

    invoke-virtual {v10, v15, v4, v0}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    add-int/lit8 v0, p1, 0x1

    move-object/from16 v2, p4

    goto :goto_3

    :cond_4
    const/4 v0, 0x3

    .line 546
    new-array v0, v0, [Lcom/android/dx/Local;

    aput-object p0, v0, v16

    const/16 v18, 0x1

    aput-object v14, v0, v18

    aput-object v15, v0, v17

    invoke-virtual {v10, v6, v7, v5, v0}, Lcom/android/dx/Code;->invokeInterface(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 548
    sget-object v0, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    invoke-virtual {v8, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {v10}, Lcom/android/dx/Code;->returnVoid()V

    return-void

    .line 551
    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x5313239d1c0974dbL    # -2.7672026718101595E-92

    invoke-static {v1, v2}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v11}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/dx/TypeId;

    sget-object v4, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    aput-object v4, v3, v16

    invoke-virtual {v1, v8, v0, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v0

    .line 554
    new-array v1, v2, [Lcom/android/dx/Local;

    aput-object v7, v1, v16

    invoke-virtual {v10, v0, v13, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    goto :goto_6

    .line 556
    :cond_6
    invoke-virtual {v10, v13, v7}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 558
    :goto_6
    invoke-virtual {v10, v13}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    return-void
.end method

.method private static generateMvelMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILjava/lang/String;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    .line 563
    array-length v3, v1

    new-array v3, v3, [Lcom/android/dx/TypeId;

    const/4 v5, 0x0

    .line 564
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    aget-object v6, v1, v5

    invoke-static {v6}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 566
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v5

    move-object/from16 v6, p2

    .line 567
    invoke-virtual {v0, v5, v6, v3}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v6

    move-object/from16 v7, p0

    move/from16 v8, p5

    .line 568
    invoke-virtual {v7, v6, v8}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object v6

    .line 570
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v0}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v7

    .line 571
    :goto_1
    sget-object v10, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    invoke-virtual {v6, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v11

    .line 572
    invoke-virtual {v6, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v12

    .line 573
    invoke-virtual {v6, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v13

    .line 574
    sget-object v14, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    invoke-virtual {v6, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v15

    .line 575
    const-class v16, [Ljava/lang/Object;

    const/16 v17, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v4

    .line 576
    const-class v18, [Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v9

    move-object/from16 v19, v3

    .line 577
    sget-object v3, Lcom/android/dx/TypeId;->INT:Lcom/android/dx/TypeId;

    invoke-virtual {v6, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v8

    .line 578
    invoke-virtual {v6, v3}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v3

    .line 579
    invoke-virtual {v6, v10}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v10

    move-object/from16 p2, v13

    .line 580
    invoke-static/range {v18 .. v18}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v13

    .line 581
    invoke-virtual {v6, v14}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v14

    move-object/from16 v20, v13

    .line 582
    sget-object v13, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    invoke-virtual {v5, v13}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/16 v21, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v6, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v13

    move-object/from16 v21, v13

    .line 583
    :goto_2
    array-length v13, v1

    new-array v13, v13, [Lcom/android/dx/Local;

    move-object/from16 v23, v5

    move-object/from16 v22, v13

    move/from16 v13, v17

    .line 584
    :goto_3
    array-length v5, v1

    if-ge v13, v5, :cond_3

    .line 585
    sget-object v5, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    invoke-virtual {v6, v5}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v5

    aput-object v5, v22, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 588
    invoke-virtual {v6, v10, v5}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 589
    invoke-virtual {v6, v11, v10}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 590
    invoke-virtual {v6, v12, v10}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 592
    invoke-static/range {p5 .. p5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_4

    .line 593
    sget-object v5, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v24, -0x531323a31c0974dbL    # -2.7671938936669945E-92

    invoke-static/range {v24 .. v25}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v5, v10}, Lcom/android/dx/TypeId;->getField(Lcom/android/dx/TypeId;Ljava/lang/String;)Lcom/android/dx/FieldId;

    move-result-object v0

    .line 594
    invoke-virtual {v6, v11, v7}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 595
    invoke-virtual {v6, v0, v12, v7}, Lcom/android/dx/Code;->iget(Lcom/android/dx/FieldId;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    :cond_4
    move-object/from16 v0, p6

    .line 598
    invoke-virtual {v6, v15, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 599
    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 600
    invoke-virtual {v6, v4, v8}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move/from16 v0, v17

    .line 602
    :goto_4
    array-length v5, v1

    const-class v7, Lcom/exteragram/messenger/plugins/utils/ClassProxy$TypeHelper;

    if-ge v0, v5, :cond_6

    .line 603
    aget-object v5, v19, v0

    invoke-virtual {v6, v0, v5}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v5

    .line 604
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v7

    sget-object v13, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v24, -0x531323c31c0974dbL    # -2.7671470769034475E-92

    invoke-static/range {v24 .. v25}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v10

    aget-object v24, v1, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v24

    if-eqz v24, :cond_5

    aget-object v24, v19, v0

    :goto_5
    move/from16 v25, v0

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v24, v13

    goto :goto_5

    :goto_6
    new-array v1, v0, [Lcom/android/dx/TypeId;

    aput-object v24, v1, v17

    invoke-virtual {v7, v13, v10, v1}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v1

    .line 605
    aget-object v7, v22, v25

    new-array v0, v0, [Lcom/android/dx/Local;

    aput-object v5, v0, v17

    invoke-virtual {v6, v1, v7, v0}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 606
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v3, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 607
    aget-object v0, v22, v25

    invoke-virtual {v6, v4, v3, v0}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    add-int/lit8 v0, v25, 0x1

    move-object/from16 v1, p4

    goto :goto_4

    :cond_6
    if-eqz v2, :cond_7

    .line 610
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 611
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 612
    invoke-virtual {v6, v9, v8}, Lcom/android/dx/Code;->newArray(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    move/from16 v0, v17

    .line 614
    :goto_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 615
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v14, v1}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 616
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v3, v1}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v6, v9, v3, v14}, Lcom/android/dx/Code;->aput(Lcom/android/dx/Local;Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    move-object/from16 v0, v20

    const/4 v5, 0x0

    .line 620
    invoke-virtual {v6, v0, v5}, Lcom/android/dx/Code;->loadConstant(Lcom/android/dx/Local;Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v6, v9, v0}, Lcom/android/dx/Code;->move(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 624
    :cond_8
    const-class v0, Lcom/exteragram/messenger/plugins/utils/ClassProxy;

    invoke-static {v0}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v0

    sget-object v1, Lcom/android/dx/TypeId;->OBJECT:Lcom/android/dx/TypeId;

    const-wide v2, -0x531323c71c0974dbL    # -2.7671412248080042E-92

    invoke-static {v2, v3}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static/range {v18 .. v18}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v3

    .line 631
    invoke-static/range {v16 .. v16}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v5

    const/4 v8, 0x5

    new-array v10, v8, [Lcom/android/dx/TypeId;

    aput-object v1, v10, v17

    const/4 v13, 0x1

    aput-object v1, v10, v13

    sget-object v14, Lcom/android/dx/TypeId;->STRING:Lcom/android/dx/TypeId;

    const/16 v16, 0x2

    aput-object v14, v10, v16

    const/4 v14, 0x3

    aput-object v3, v10, v14

    const/4 v3, 0x4

    aput-object v5, v10, v3

    .line 624
    invoke-virtual {v0, v1, v2, v10}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v0

    .line 633
    new-array v2, v8, [Lcom/android/dx/Local;

    aput-object v11, v2, v17

    aput-object v12, v2, v13

    aput-object v15, v2, v16

    aput-object v9, v2, v14

    aput-object v4, v2, v3

    move-object/from16 v3, p2

    invoke-virtual {v6, v0, v3, v2}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 635
    sget-object v0, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    move-object/from16 v2, v23

    invoke-virtual {v2, v0}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 636
    invoke-virtual {v6}, Lcom/android/dx/Code;->returnVoid()V

    return-void

    .line 638
    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v4, -0x531323d91c0974dbL    # -2.767114890378509E-92

    invoke-static {v4, v5}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v7}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v4

    const/4 v13, 0x1

    new-array v5, v13, [Lcom/android/dx/TypeId;

    aput-object v1, v5, v17

    invoke-virtual {v4, v2, v0, v5}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object v0

    .line 641
    new-array v1, v13, [Lcom/android/dx/Local;

    aput-object v3, v1, v17

    move-object/from16 v13, v21

    invoke-virtual {v6, v0, v13, v1}, Lcom/android/dx/Code;->invokeStatic(Lcom/android/dx/MethodId;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    goto :goto_8

    :cond_a
    move-object/from16 v13, v21

    .line 643
    invoke-virtual {v6, v13, v3}, Lcom/android/dx/Code;->cast(Lcom/android/dx/Local;Lcom/android/dx/Local;)V

    .line 645
    :goto_8
    invoke-virtual {v6, v13}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    return-void
.end method

.method private static generateProxyMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/reflect/Method;Lcom/android/dx/FieldId;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/DexMaker;",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Lcom/android/dx/FieldId;",
            "Z)V"
        }
    .end annotation

    .line 474
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 475
    array-length v0, v4

    new-array v0, v0, [Lcom/android/dx/TypeId;

    const/4 v1, 0x0

    move v2, v1

    .line 476
    :goto_0
    array-length v3, v4

    if-ge v2, v3, :cond_0

    aget-object v3, v4, v2

    invoke-static {v3}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v2

    if-eqz p4, :cond_1

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v5, -0x5313238e1c0974dbL    # -2.767224617168072E-92

    invoke-static {v5, v6}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz p4, :cond_5

    .line 482
    invoke-virtual {p1, v2, v3, v0}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object p3

    const/4 p4, 0x1

    .line 483
    invoke-virtual {p0, p3, p4}, Lcom/android/dx/DexMaker;->declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;

    move-result-object p0

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/dx/Code;->getThis(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p1

    .line 486
    sget-object p3, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    invoke-virtual {v2, p3}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/dx/Code;->newLocal(Lcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object p3

    .line 487
    :goto_2
    array-length p4, v4

    new-array p4, p4, [Lcom/android/dx/Local;

    .line 488
    :goto_3
    array-length v3, v4

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    invoke-virtual {p0, v1, v3}, Lcom/android/dx/Code;->getParameter(ILcom/android/dx/TypeId;)Lcom/android/dx/Local;

    move-result-object v3

    aput-object v3, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 489
    :cond_3
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/dx/TypeId;->getMethod(Lcom/android/dx/TypeId;Ljava/lang/String;[Lcom/android/dx/TypeId;)Lcom/android/dx/MethodId;

    move-result-object p2

    .line 490
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/dx/Code;->invokeSuper(Lcom/android/dx/MethodId;Lcom/android/dx/Local;Lcom/android/dx/Local;[Lcom/android/dx/Local;)V

    .line 491
    sget-object p1, Lcom/android/dx/TypeId;->VOID:Lcom/android/dx/TypeId;

    invoke-virtual {v2, p1}, Lcom/android/dx/TypeId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/dx/Code;->returnVoid()V

    return-void

    .line 492
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/dx/Code;->returnValue(Lcom/android/dx/Local;)V

    return-void

    .line 496
    :cond_5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v2, v3

    move-object v3, p2

    invoke-static/range {v0 .. v6}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->generateHandlerMethod(Lcom/android/dx/DexMaker;Lcom/android/dx/TypeId;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;ILcom/android/dx/FieldId;)V

    return-void
.end method

.method private static getAllOverridableMethods(Ljava/lang/Class;Ljava/util/List;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 338
    invoke-static {p0, v0}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->collectOverridableMethods(Ljava/lang/Class;Ljava/util/Map;)V

    if-eqz p1, :cond_0

    .line 340
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    .line 341
    invoke-static {p1, v0}, Lcom/exteragram/messenger/plugins/utils/ClassProxy;->collectOverridableMethods(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toInterfaceTypeIds(Ljava/util/List;)[Lcom/android/dx/TypeId;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)[",
            "Lcom/android/dx/TypeId<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 319
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    if-nez v2, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 331
    invoke-static {v2}, Lcom/android/dx/TypeId;->get(Ljava/lang/Class;)Lcom/android/dx/TypeId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x531323591c0974dbL    # -2.7673021574326967E-92

    invoke-static {v3, v4}, Lorg/lsposed/lsparanoid/Deobfuscator$exteraGramDev$TMessagesProj;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_3
    new-array p0, v0, [Lcom/android/dx/TypeId;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/dx/TypeId;

    return-object p0

    .line 320
    :cond_4
    :goto_1
    new-array p0, v0, [Lcom/android/dx/TypeId;

    return-object p0
.end method
