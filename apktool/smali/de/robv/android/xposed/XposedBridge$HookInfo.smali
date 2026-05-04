.class public Lde/robv/android/xposed/XposedBridge$HookInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/robv/android/xposed/XposedBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HookInfo"
.end annotation


# instance fields
.field backup:Ljava/lang/reflect/Member;

.field final callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet<",
            "Lde/robv/android/xposed/XC_MethodHook;",
            ">;"
        }
    .end annotation
.end field

.field private final isStatic:Z

.field private final method:Ljava/lang/reflect/Member;

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-direct {v0}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;-><init>()V

    iput-object v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    .line 354
    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->method:Ljava/lang/reflect/Member;

    .line 355
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    iput-boolean v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->isStatic:Z

    .line 356
    instance-of v0, p1, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 357
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 367
    new-instance v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;

    invoke-direct {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;-><init>()V

    .line 368
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->method:Ljava/lang/reflect/Member;

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    .line 370
    iget-boolean v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->isStatic:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 371
    iput-object v2, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 372
    iput-object p1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    goto :goto_0

    .line 374
    :cond_0
    aget-object v1, p1, v3

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 375
    array-length v1, p1

    sub-int/2addr v1, v4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 376
    array-length v5, p1

    sub-int/2addr v5, v4

    invoke-static {p1, v4, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 379
    :goto_0
    iget-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->callbacks:Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;

    invoke-virtual {p1}, Lde/robv/android/xposed/XposedBridge$CopyOnWriteSortedSet;->getSnapshot()[Ljava/lang/Object;

    move-result-object p1

    .line 380
    array-length v1, p1

    if-nez v1, :cond_1

    .line 385
    :try_start_0
    iget-object p1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    iget-object v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v0, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {p1, v1, v0}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 388
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    move v5, v3

    .line 395
    :cond_2
    :try_start_1
    aget-object v6, p1, v5

    check-cast v6, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v6, v0}, Lde/robv/android/xposed/XC_MethodHook;->beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    iget-boolean v6, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-eqz v6, :cond_3

    add-int/2addr v5, v4

    goto :goto_1

    :catchall_0
    move-exception v6

    .line 397
    invoke-static {v6}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$smlog(Ljava/lang/Throwable;)V

    .line 399
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    .line 400
    iput-boolean v3, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v1, :cond_2

    .line 410
    :goto_1
    iget-boolean v1, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->returnEarly:Z

    if-nez v1, :cond_4

    .line 412
    :try_start_2
    iget-object v1, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->backup:Ljava/lang/reflect/Member;

    iget-object v2, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    iget-object v3, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$sminvokeMethod(Ljava/lang/reflect/Member;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 414
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    sub-int/2addr v5, v4

    .line 420
    :cond_5
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 421
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 424
    :try_start_3
    aget-object v3, p1, v5

    check-cast v3, Lde/robv/android/xposed/XC_MethodHook;

    invoke-virtual {v3, v0}, Lde/robv/android/xposed/XC_MethodHook;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v3

    .line 426
    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->-$$Nest$smlog(Ljava/lang/Throwable;)V

    if-nez v2, :cond_6

    .line 429
    invoke-virtual {v0, v1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V

    goto :goto_3

    .line 431
    :cond_6
    invoke-virtual {v0, v2}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setThrowable(Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_5

    .line 435
    invoke-virtual {v0}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResultOrThrowable()Ljava/lang/Object;

    move-result-object p1

    .line 436
    iget-object v0, p0, Lde/robv/android/xposed/XposedBridge$HookInfo;->returnType:Ljava/lang/Class;

    if-eqz v0, :cond_7

    .line 437
    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_7
    return-object p1
.end method
