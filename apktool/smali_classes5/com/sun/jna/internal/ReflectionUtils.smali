.class public abstract Lcom/sun/jna/internal/ReflectionUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

.field private static final LOG:Ljava/util/logging/Logger;

.field private static final METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

.field private static final METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

.field private static final METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

.field private static final METHOD_TYPE:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-class v0, Lcom/sun/jna/internal/ReflectionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    .line 67
    const-string v0, "java.lang.invoke.MethodHandles"

    invoke-static {v0}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    const-string v1, "java.lang.invoke.MethodHandle"

    invoke-static {v1}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 69
    const-string v2, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v2}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 70
    const-string v3, "java.lang.invoke.MethodType"

    invoke-static {v3}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 72
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Method;

    const-string v7, "isDefault"

    invoke-static {v6, v7, v5}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

    .line 73
    const-string v5, "lookup"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-static {v0, v5, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    .line 74
    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Class;

    aput-object v8, v7, v4

    const-string v9, "in"

    invoke-static {v2, v9, v7}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    sput-object v7, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

    const/4 v7, 0x2

    .line 75
    new-array v9, v7, [Ljava/lang/Class;

    aput-object v6, v9, v4

    aput-object v8, v9, v5

    const-string v6, "unreflectSpecial"

    invoke-static {v2, v6, v9}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

    const/4 v6, 0x4

    .line 76
    new-array v6, v6, [Ljava/lang/Class;

    aput-object v8, v6, v4

    const-class v9, Ljava/lang/String;

    aput-object v9, v6, v5

    aput-object v3, v6, v7

    const/4 v9, 0x3

    aput-object v8, v6, v9

    const-string v9, "findSpecial"

    invoke-static {v2, v9, v6}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

    .line 77
    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, Ljava/lang/Object;

    aput-object v9, v6, v4

    const-string v9, "bindTo"

    invoke-static {v1, v9, v6}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

    .line 78
    new-array v6, v5, [Ljava/lang/Class;

    const-class v9, [Ljava/lang/Object;

    aput-object v9, v6, v4

    const-string v9, "invokeWithArguments"

    invoke-static {v1, v9, v6}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

    .line 79
    new-array v1, v7, [Ljava/lang/Class;

    aput-object v8, v1, v4

    aput-object v2, v1, v5

    const-string v2, "privateLookupIn"

    invoke-static {v0, v2, v1}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

    .line 80
    new-array v0, v7, [Ljava/lang/Class;

    aput-object v8, v0, v4

    const-class v1, [Ljava/lang/Class;

    aput-object v1, v0, v5

    const-string v1, "methodType"

    invoke-static {v3, v1, v0}, Lcom/sun/jna/internal/ReflectionUtils;->lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_TYPE:Ljava/lang/reflect/Method;

    return-void
.end method

.method private static createLookup()Ljava/lang/Object;
    .locals 2

    .line 195
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static createPrivateLookupIn(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 191
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_PRIVATE_LOOKUP_IN:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getConstructorLookupClass()Ljava/lang/reflect/Constructor;
    .locals 4

    .line 59
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "java.lang.invoke.MethodHandles$Lookup"

    invoke-static {v0}, Lcom/sun/jna/internal/ReflectionUtils;->lookupClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 61
    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/sun/jna/internal/ReflectionUtils;->lookupDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    .line 63
    :cond_0
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->CONSTRUCTOR_LOOKUP_CLASS:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public static getMethodHandle(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 4

    .line 164
    invoke-static {}, Lcom/sun/jna/internal/ReflectionUtils;->createLookup()Ljava/lang/Object;

    move-result-object v0

    .line 166
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sun/jna/internal/ReflectionUtils;->createPrivateLookupIn(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-static {v0, p0}, Lcom/sun/jna/internal/ReflectionUtils;->mhViaFindSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 170
    :catch_0
    invoke-static {}, Lcom/sun/jna/internal/ReflectionUtils;->getConstructorLookupClass()Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    invoke-static {v0, p0}, Lcom/sun/jna/internal/ReflectionUtils;->mhViaUnreflectSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static varargs invokeDefaultMethod(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 209
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_BIND_TO:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 210
    sget-object p1, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_INVOKE_WITH_ARGUMENTS:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static isDefault(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 134
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_IS_DEFAULT:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 143
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_2

    .line 145
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 146
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 144
    :cond_2
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 140
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static lookupClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .line 117
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 119
    sget-object v1, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to lookup class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static varargs lookupDeclaredConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    const-string v4, "Failed to lookup method: <init>#{1}({2})"

    if-nez p0, :cond_0

    .line 85
    sget-object v5, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 86
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v2

    .line 85
    invoke-virtual {v5, v6, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 94
    :catch_0
    sget-object v5, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 95
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    aput-object p1, v1, v2

    .line 94
    invoke-virtual {v5, v6, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3
.end method

.method private static varargs lookupMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 101
    const-string v5, "Failed to lookup method: {0}#{1}({2})"

    if-nez p0, :cond_0

    .line 102
    sget-object v6, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 103
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    .line 102
    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 109
    :catch_0
    sget-object v6, Lcom/sun/jna/internal/ReflectionUtils;->LOG:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 110
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    .line 109
    invoke-virtual {v6, v7, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method

.method private static mhViaFindSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 9

    .line 177
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_FIND_SPECIAL:Ljava/lang/reflect/Method;

    .line 179
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 180
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_TYPE:Ljava/lang/reflect/Method;

    .line 181
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v4, 0x1

    aput-object v5, v7, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 182
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v8

    aput-object v2, v5, v4

    aput-object v3, v5, v6

    const/4 v1, 0x3

    aput-object p1, v5, v1

    .line 177
    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static mhViaUnreflectSpecial(Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 5

    .line 186
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_IN:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 187
    sget-object v0, Lcom/sun/jna/internal/ReflectionUtils;->METHOD_HANDLES_LOOKUP_UNREFLECT_SPECIAL:Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v1, v3, v2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
