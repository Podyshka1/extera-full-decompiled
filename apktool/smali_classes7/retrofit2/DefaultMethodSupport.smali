.class abstract Lretrofit2/DefaultMethodSupport;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static lookupConstructor:Ljava/lang/reflect/Constructor;


# direct methods
.method static invoke(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 38
    sget-object v0, Lretrofit2/DefaultMethodSupport;->lookupConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lretrofit2/DefaultMethodSupport$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 42
    sput-object v0, Lretrofit2/DefaultMethodSupport;->lookupConstructor:Ljava/lang/reflect/Constructor;

    :cond_0
    const/4 v4, -0x1

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lretrofit2/DefaultMethodSupport$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p2}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 48
    invoke-virtual {p0, p3}, Ljava/lang/invoke/MethodHandle;->invokeWithArguments([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
