.class public Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private coercionRequired:Z

.field private final method:Ljava/lang/reflect/Method;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private primitive:Z

.field private targetType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->coercionRequired:Z

    .line 58
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    .line 60
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->targetType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    iput-boolean p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->primitive:Z

    return-void
.end method

.method private executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 85
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->targetType:Ljava/lang/Class;

    invoke-static {p3, v0}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to invoke method"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 25
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->coercionRequired:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->targetType:Ljava/lang/Class;

    invoke-static {p4, v4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    .line 31
    :cond_0
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    if-nez p4, :cond_1

    iget-boolean v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->primitive:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->targetType:Ljava/lang/Class;

    invoke-static {v4}, Lorg/mvel2/util/PropertyTools;->getPrimitiveInitialValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, p4

    :goto_0
    new-array v5, v2, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 49
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "error calling method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "."

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    if-eqz p1, :cond_2

    .line 35
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 36
    sget-object v3, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->EMPTY:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-static {v3, v4, v5, v6, v2}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 38
    invoke-direct {p0, v3, p1, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez v0, :cond_3

    .line 43
    iput-boolean v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->coercionRequired:Z

    .line 44
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to bind property"

    invoke-direct {p1, p2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
