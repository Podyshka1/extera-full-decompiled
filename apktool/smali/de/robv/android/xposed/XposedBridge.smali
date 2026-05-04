.class public Lde/robv/android/xposed/XposedBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/robv/android/xposed/XposedBridge$HookInfo;,
        Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "AliuHook-XposedBridge"

.field private static volatile blacklistSet:Z

.field private static final callbackMethod:Ljava/lang/reflect/Method;

.field private static final hookRecords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lde/robv/android/xposed/XposedBridge$HookInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetEMPTY_ARRAY()[Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 24
    :try_start_0
    const-class v0, Lde/robv/android/xposed/XposedBridge$HookInfo;

    const-string v1, "callback"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->callbackMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string v0, "aliuhook"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 32
    new-array v0, v4, [Ljava/lang/Object;

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    .line 88
    sput-boolean v4, Lde/robv/android/xposed/XposedBridge;->blacklistSet:Z

    return-void

    :catchall_0
    move-exception v0

    .line 26
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to initialize"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 272
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->allocateInstance0(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native allocateInstance0(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method private static checkMethod(Ljava/lang/reflect/Member;)V
    .locals 1

    if-eqz p0, :cond_3

    .line 80
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "method must be a Method or Constructor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result p0

    .line 84
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 85
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "method must not be abstract"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "method must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native deoptimize0(Ljava/lang/reflect/Member;)Z
.end method

.method public static deoptimizeMethod(Ljava/lang/reflect/Member;)Z
    .locals 0

    .line 124
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    .line 125
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->deoptimize0(Ljava/lang/reflect/Member;)Z

    move-result p0

    return p0
.end method

.method public static native disableHiddenApiRestrictions()Z
.end method

.method public static native disableProfileSaver()Z
.end method

.method private static native hook0(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
.end method

.method public static hookAllConstructors(Ljava/lang/Class;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 186
    invoke-static {v3, p1}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static hookAllMethods(Ljava/lang/Class;Ljava/lang/String;Lde/robv/android/xposed/XC_MethodHook;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ")",
            "Ljava/util/Set<",
            "Lde/robv/android/xposed/XC_MethodHook$Unhook;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 170
    invoke-interface {v3}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-static {v3, p2}, Lde/robv/android/xposed/XposedBridge;->hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static hookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    .locals 3

    .line 136
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    if-eqz p1, :cond_2

    .line 140
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    monitor-enter v0

    .line 141
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    if-nez v1, :cond_1

    .line 143
    new-instance v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    invoke-direct {v1, p0}, Lde/robv/android/xposed/XposedBridge$HookInfo;-><init>(Ljava/lang/reflect/Member;)V

    .line 144
    sget-object v2, Lde/robv/android/xposed/XposedBridge;->callbackMethod:Ljava/lang/reflect/Method;

    invoke-static {v1, p0, v2}, Lde/robv/android/xposed/XposedBridge;->hook0(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iput-object v2, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    .line 147
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 145
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to hook method"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v0, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$Unhook;

    invoke-direct {v0, p1, p0}, Lde/robv/android/xposed/XC_MethodHook$Unhook;-><init>(Lde/robv/android/xposed/XC_MethodHook;Ljava/lang/reflect/Member;)V

    return-object v0

    .line 149
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 137
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs invokeConstructor(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:TS;>(TT;",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 287
    invoke-static {p0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    array-length v0, p2

    if-nez v0, :cond_0

    const/4 p2, 0x0

    .line 291
    :cond_0
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeConstructor0(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 289
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "varargs parameters are not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native invokeConstructor0(Ljava/lang/Object;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method private static invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 254
    instance-of v0, p0, Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 255
    check-cast p0, Ljava/lang/reflect/Method;

    .line 256
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 257
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 260
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 261
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static invokeOriginalMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p2, :cond_0

    .line 237
    sget-object p2, Lde/robv/android/xposed/XposedBridge;->EMPTY_ARRAY:[Ljava/lang/Object;

    .line 239
    :cond_0
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/robv/android/xposed/XposedBridge$HookInfo;

    if-eqz v0, :cond_1

    .line 243
    :try_start_0
    iget-object p0, v0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 245
    :cond_1
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->checkMethod(Ljava/lang/reflect/Member;)V

    .line 246
    invoke-static {p0, p1, p2}, Lde/robv/android/xposed/XposedBridge;->invokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 249
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The class this Constructor belongs to is abstract and cannot be instantiated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isHooked(Ljava/lang/reflect/Member;)Z
    .locals 1

    .line 102
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static native isHooked0(Ljava/lang/reflect/Member;)Z
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 2

    .line 444
    const-string v0, "AliuHook-XposedBridge"

    const-string v1, "Uncaught Exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static makeClassInheritable(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 114
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->makeClassInheritable0(Ljava/lang/Class;)Z

    move-result p0

    return p0

    .line 112
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "class must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native makeClassInheritable0(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public static setBlacklist([Ljava/lang/String;)V
    .locals 1

    .line 91
    sget-boolean v0, Lde/robv/android/xposed/XposedBridge;->blacklistSet:Z

    if-eqz v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->setBlacklist0([Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 93
    sput-boolean p0, Lde/robv/android/xposed/XposedBridge;->blacklistSet:Z

    return-void
.end method

.method private static native setBlacklist0([Ljava/lang/String;)V
.end method

.method private static native unhook0(Ljava/lang/reflect/Member;)Z
.end method

.method public static unhookMethod(Ljava/lang/reflect/Member;Lde/robv/android/xposed/XC_MethodHook;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget-object v0, Lde/robv/android/xposed/XposedBridge;->hookRecords:Ljava/util/Map;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/robv/android/xposed/XposedBridge$HookInfo;

    if-eqz v1, :cond_0

    .line 204
    iget-object v2, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {v2, p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, v1, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 206
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {p0}, Lde/robv/android/xposed/XposedBridge;->unhook0(Ljava/lang/reflect/Member;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 210
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
