.class public final Lcom/android/dx/DexMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/DexMaker$TypeDeclaration;,
        Lcom/android/dx/DexMaker$MethodDeclaration;,
        Lcom/android/dx/DexMaker$FieldDeclaration;
    }
.end annotation


# static fields
.field private static didWarnBlacklistedMethods:Z

.field private static didWarnNonBaseDexClassLoader:Z


# instance fields
.field private markAsTrusted:Z

.field private outputDex:Lcom/android/dx/dex/file/DexFile;

.field private sharedClassLoader:Ljava/lang/ClassLoader;

.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Lcom/android/dx/DexMaker$TypeDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dx/DexMaker;->types:Ljava/util/Map;

    return-void
.end method

.method private generateClassLoader(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 17

    move-object/from16 v1, p0

    .line 395
    :try_start_0
    iget-object v0, v1, Lcom/android/dx/DexMaker;->sharedClassLoader:Ljava/lang/ClassLoader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const/4 v5, 0x0

    if-eqz p3, :cond_1

    move-object/from16 v6, p3

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v6, v5

    .line 404
    :goto_1
    const-string v0, "dalvik.system.BaseDexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v4, :cond_4

    .line 407
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 408
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "java.lang.BootClassLoader"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 410
    sget-boolean v4, Lcom/android/dx/DexMaker;->didWarnNonBaseDexClassLoader:Z

    if-nez v4, :cond_3

    .line 411
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot share classloader as shared classloader \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\' is not a subclass of \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 415
    sput-boolean v3, Lcom/android/dx/DexMaker;->didWarnNonBaseDexClassLoader:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_6

    :cond_3
    :goto_2
    move v4, v2

    .line 425
    :cond_4
    iget-boolean v7, v1, Lcom/android/dx/DexMaker;->markAsTrusted:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-class v11, Ljava/lang/ClassLoader;

    const-string v12, "addDexPath"

    const-class v13, Ljava/lang/String;

    if-eqz v7, :cond_7

    .line 427
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eqz v4, :cond_5

    .line 428
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v14, v10, [Ljava/lang/Class;

    aput-object v13, v14, v2

    aput-object v7, v14, v3

    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    new-array v14, v10, [Ljava/lang/Object;

    aput-object v7, v14, v2

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v14, v3

    invoke-virtual {v0, v6, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_5
    const/4 v14, 0x5

    .line 432
    new-array v15, v14, [Ljava/lang/Class;

    aput-object v13, v15, v2

    const-class v16, Ljava/io/File;

    aput-object v16, v15, v3

    aput-object v13, v15, v10

    aput-object v11, v15, v9

    aput-object v7, v15, v8

    .line 433
    invoke-virtual {v0, v15}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 435
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v15

    .line 436
    new-array v14, v14, [Ljava/lang/Object;

    aput-object v7, v14, v2

    aput-object v15, v14, v3

    aput-object v5, v14, v10

    aput-object v6, v14, v9

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v14, v8

    .line 435
    invoke-virtual {v0, v14}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    .line 439
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/SecurityException;

    if-eqz v7, :cond_6

    .line 440
    sget-boolean v7, Lcom/android/dx/DexMaker;->didWarnBlacklistedMethods:Z

    if-nez v7, :cond_7

    .line 441
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot allow to call blacklisted super methods. This might break spying on system classes."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 441
    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    sput-boolean v3, Lcom/android/dx/DexMaker;->didWarnBlacklistedMethods:Z

    goto :goto_4

    .line 446
    :cond_6
    throw v0

    :cond_7
    :goto_4
    if-eqz v4, :cond_8

    .line 452
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    aput-object v13, v4, v2

    invoke-virtual {v0, v12, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 453
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    .line 452
    invoke-virtual {v0, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    .line 456
    :cond_8
    const-string v0, "dalvik.system.DexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v4, v8, [Ljava/lang/Class;

    aput-object v13, v4, v2

    aput-object v13, v4, v3

    aput-object v13, v4, v10

    aput-object v11, v4, v9

    .line 457
    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 458
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v2

    aput-object v7, v8, v3

    aput-object v5, v8, v10

    aput-object v6, v8, v9

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    .line 470
    :catch_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 468
    :catch_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 466
    :catch_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 464
    :goto_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 462
    :goto_6
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "load() requires a Dalvik VM"

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private generateFileName()Ljava/lang/String;
    .locals 8

    .line 349
    iget-object v0, p0, Lcom/android/dx/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v3, 0x0

    move v4, v3

    .line 354
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dx/TypeId;

    .line 356
    invoke-virtual {p0, v5}, Lcom/android/dx/DexMaker;->getTypeDeclaration(Lcom/android/dx/TypeId;)Lcom/android/dx/DexMaker$TypeDeclaration;

    move-result-object v5

    .line 357
    invoke-static {v5}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$500(Lcom/android/dx/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 358
    invoke-static {v5}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$200(Lcom/android/dx/DexMaker$TypeDeclaration;)Lcom/android/dx/TypeId;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 359
    invoke-static {v5}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$200(Lcom/android/dx/DexMaker$TypeDeclaration;)Lcom/android/dx/TypeId;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/dx/TypeId;->hashCode()I

    move-result v7

    mul-int/lit8 v7, v7, 0x1f

    invoke-static {v5}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$400(Lcom/android/dx/DexMaker$TypeDeclaration;)Lcom/android/dx/TypeList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/TypeList;->hashCode()I

    move-result v5

    add-int/2addr v7, v5

    add-int/lit8 v5, v4, 0x1

    mul-int/lit8 v7, v7, 0x1f

    .line 360
    invoke-interface {v6}, Ljava/util/Set;->hashCode()I

    move-result v6

    add-int/2addr v7, v6

    aput v7, v2, v4

    move v4, v5

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    const/4 v1, 0x1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 365
    aget v4, v2, v3

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declare(Lcom/android/dx/MethodId;I)Lcom/android/dx/Code;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/MethodId<",
            "**>;I)",
            "Lcom/android/dx/Code;"
        }
    .end annotation

    .line 263
    iget-object v0, p1, Lcom/android/dx/MethodId;->declaringType:Lcom/android/dx/TypeId;

    invoke-virtual {p0, v0}, Lcom/android/dx/DexMaker;->getTypeDeclaration(Lcom/android/dx/TypeId;)Lcom/android/dx/DexMaker$TypeDeclaration;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$500(Lcom/android/dx/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    and-int/lit16 v1, p2, -0x1580

    if-nez v1, :cond_3

    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_0

    and-int/lit8 p2, p2, -0x21

    const/high16 v1, 0x20000

    or-int/2addr p2, v1

    .line 281
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/MethodId;->isConstructor()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/dx/MethodId;->isStaticInitializer()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    .line 285
    :cond_2
    new-instance v1, Lcom/android/dx/DexMaker$MethodDeclaration;

    invoke-direct {v1, p1, p2}, Lcom/android/dx/DexMaker$MethodDeclaration;-><init>(Lcom/android/dx/MethodId;I)V

    .line 286
    invoke-static {v0}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$500(Lcom/android/dx/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {v1}, Lcom/android/dx/DexMaker$MethodDeclaration;->access$600(Lcom/android/dx/DexMaker$MethodDeclaration;)Lcom/android/dx/Code;

    move-result-object p1

    return-object p1

    .line 272
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 265
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already declared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declare(Lcom/android/dx/FieldId;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/FieldId<",
            "**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 302
    iget-object v0, p1, Lcom/android/dx/FieldId;->declaringType:Lcom/android/dx/TypeId;

    invoke-virtual {p0, v0}, Lcom/android/dx/DexMaker;->getTypeDeclaration(Lcom/android/dx/TypeId;)Lcom/android/dx/DexMaker$TypeDeclaration;

    move-result-object v0

    .line 303
    invoke-static {v0}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$700(Lcom/android/dx/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p2, -0x10e0

    if-nez v1, :cond_2

    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "staticValue is non-null, but field is not static"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/dx/DexMaker$FieldDeclaration;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/dx/DexMaker$FieldDeclaration;-><init>(Lcom/android/dx/FieldId;ILjava/lang/Object;)V

    .line 320
    invoke-static {v0}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$700(Lcom/android/dx/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 311
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected flag: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "already declared: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs declare(Lcom/android/dx/TypeId;Ljava/lang/String;ILcom/android/dx/TypeId;[Lcom/android/dx/TypeId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/TypeId<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/dx/TypeId<",
            "*>;[",
            "Lcom/android/dx/TypeId<",
            "*>;)V"
        }
    .end annotation

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/dx/DexMaker;->getTypeDeclaration(Lcom/android/dx/TypeId;)Lcom/android/dx/DexMaker$TypeDeclaration;

    move-result-object v0

    and-int/lit16 v1, p3, -0x1412

    if-nez v1, :cond_1

    .line 241
    invoke-static {v0}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$000(Lcom/android/dx/DexMaker$TypeDeclaration;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 244
    invoke-static {v0, p1}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$002(Lcom/android/dx/DexMaker$TypeDeclaration;Z)Z

    .line 245
    invoke-static {v0, p3}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$102(Lcom/android/dx/DexMaker$TypeDeclaration;I)I

    .line 246
    invoke-static {v0, p4}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$202(Lcom/android/dx/DexMaker$TypeDeclaration;Lcom/android/dx/TypeId;)Lcom/android/dx/TypeId;

    .line 247
    invoke-static {v0, p2}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$302(Lcom/android/dx/DexMaker$TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    new-instance p1, Lcom/android/dx/TypeList;

    invoke-direct {p1, p5}, Lcom/android/dx/TypeList;-><init>([Lcom/android/dx/TypeId;)V

    invoke-static {v0, p1}, Lcom/android/dx/DexMaker$TypeDeclaration;->access$402(Lcom/android/dx/DexMaker$TypeDeclaration;Lcom/android/dx/TypeList;)Lcom/android/dx/TypeList;

    return-void

    .line 242
    :cond_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "already declared: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected flag: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generate()[B
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    const/16 v1, 0xd

    .line 329
    iput v1, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 330
    new-instance v1, Lcom/android/dx/dex/file/DexFile;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    iput-object v1, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/dx/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/DexMaker$TypeDeclaration;

    .line 334
    iget-object v2, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v1}, Lcom/android/dx/DexMaker$TypeDeclaration;->toClassDefItem()Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/dx/dex/file/DexFile;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    goto :goto_0

    .line 338
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 6

    if-nez p2, :cond_2

    .line 502
    const-string p2, "dexmaker.dexcache"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    .line 506
    :cond_0
    new-instance p2, Lcom/android/dx/AppDataDirGuesser;

    invoke-direct {p2}, Lcom/android/dx/AppDataDirGuesser;-><init>()V

    invoke-virtual {p2}, Lcom/android/dx/AppDataDirGuesser;->guess()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 508
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 514
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/dx/DexMaker;->generateFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3

    .line 519
    invoke-direct {p0, v0, p2, p1}, Lcom/android/dx/DexMaker;->generateClassLoader(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1

    .line 522
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 526
    :cond_4
    invoke-virtual {p0}, Lcom/android/dx/DexMaker;->generate()[B

    move-result-object v1

    .line 536
    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 538
    invoke-virtual {v0}, Ljava/io/File;->setReadOnly()Z

    .line 540
    :try_start_0
    new-instance v3, Ljava/util/jar/JarEntry;

    const-string v4, "classes.dex"

    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 541
    array-length v4, v1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 542
    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 546
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 552
    invoke-direct {p0, v0, p2, p1}, Lcom/android/dx/DexMaker;->generateClassLoader(Ljava/io/File;Ljava/io/File;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 546
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 547
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 549
    :goto_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 550
    throw p1
.end method

.method getDexFile()Lcom/android/dx/dex/file/DexFile;
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    if-nez v0, :cond_0

    .line 557
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    const/16 v1, 0xd

    .line 558
    iput v1, v0, Lcom/android/dx/dex/DexOptions;->minSdkVersion:I

    .line 559
    new-instance v1, Lcom/android/dx/dex/file/DexFile;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    iput-object v1, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/dx/DexMaker;->outputDex:Lcom/android/dx/dex/file/DexFile;

    return-object v0
.end method

.method getTypeDeclaration(Lcom/android/dx/TypeId;)Lcom/android/dx/DexMaker$TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/dx/TypeId<",
            "*>;)",
            "Lcom/android/dx/DexMaker$TypeDeclaration;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/dx/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/DexMaker$TypeDeclaration;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/dx/DexMaker$TypeDeclaration;

    invoke-direct {v0, p1}, Lcom/android/dx/DexMaker$TypeDeclaration;-><init>(Lcom/android/dx/TypeId;)V

    .line 221
    iget-object v1, p0, Lcom/android/dx/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public markAsTrusted()V
    .locals 1

    const/4 v0, 0x1

    .line 390
    iput-boolean v0, p0, Lcom/android/dx/DexMaker;->markAsTrusted:Z

    return-void
.end method

.method public setSharedClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/android/dx/DexMaker;->sharedClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method
