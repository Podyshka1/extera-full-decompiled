.class public Landroidx/core/graphics/TypefaceCompatApi28Impl;
.super Landroidx/core/graphics/TypefaceCompatApi26Impl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatApi26Impl;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFromFamiliesWithDefault(Ljava/lang/Object;)Landroid/graphics/Typeface;
    .locals 5

    const/4 v0, -0x1

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 51
    :try_start_0
    iget-object v1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mFontFamily:Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    .line 52
    invoke-static {v1, v3, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 53
    iget-object p1, p0, Landroidx/core/graphics/TypefaceCompatApi26Impl;->mCreateFromFamiliesWithDefault:Ljava/lang/reflect/Method;

    const/4 v4, 0x4

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "sans-serif"

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 56
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected obtainCreateFromFamiliesWithDefaultMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x1

    .line 63
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-class p1, Ljava/lang/String;

    aput-object p1, v1, v0

    const/4 p1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, p1

    const/4 p1, 0x3

    aput-object v2, v1, p1

    .line 64
    const-class p1, Landroid/graphics/Typeface;

    const-string v2, "createFromFamiliesWithDefault"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    return-object p1
.end method
