.class public Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;
.source "SourceFile"


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;-><init>()V

    .line 176
    invoke-virtual {p0, p1}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->setMethod(Ljava/lang/reflect/Method;)V

    .line 177
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method private executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;
    .locals 6

    .line 131
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    if-nez v0, :cond_0

    sget-object p1, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;->EMPTY:[Ljava/lang/Object;

    return-object p1

    .line 133
    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    .line 134
    :goto_0
    iget v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 135
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result p3

    if-eqz p3, :cond_7

    .line 139
    iget-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    const/4 v2, 0x1

    if-nez p3, :cond_2

    .line 140
    iget p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    sub-int/2addr p1, v2

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object v0

    .line 142
    :cond_2
    array-length v3, p3

    iget v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    if-ne v3, v4, :cond_5

    sub-int/2addr v4, v2

    .line 143
    aget-object p3, p3, v4

    invoke-interface {p3, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    .line 144
    iget p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    sub-int/2addr p2, v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->isArray()Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    move-object p1, p3

    :cond_4
    :goto_1
    aput-object p1, v0, p2

    return-object v0

    .line 146
    :cond_5
    array-length p3, p3

    sub-int/2addr p3, v4

    add-int/2addr p3, v2

    new-array v3, p3, [Ljava/lang/Object;

    :goto_2
    if-ge v1, p3, :cond_6

    .line 147
    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    iget v5, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    invoke-interface {v4, p1, p2}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_6
    iget p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    sub-int/2addr p1, v2

    aput-object v3, v0, p1

    :cond_7
    return-object v0
.end method

.method private executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 10

    .line 88
    const-string v0, ")"

    const-string/jumbo v1, "no"

    const-string/jumbo v2, "yes"

    const-string v3, "; coercionNeeded="

    const-string v4, "; actual target: "

    const-string/jumbo v5, "unable to invoke method (expected target: "

    const-string v6, "::"

    iget-boolean v7, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    if-nez v7, :cond_2

    .line 92
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0, p3, p4, p1}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p3, p4}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p3, p4, p1}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_0
    if-nez v7, :cond_1

    const/4 v0, 0x1

    .line 102
    :try_start_1
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string/jumbo p3, "unable to invoke method"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 112
    :cond_2
    :try_start_2
    iget-object v7, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v7, :cond_3

    .line 113
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v9

    invoke-virtual {p0, v8, p3, p4, v9}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v7, p1, p3, p4}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v8

    invoke-virtual {p0, v7, p3, p4, v8}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 124
    :catch_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    if-eqz p2, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :catch_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    if-eqz p2, :cond_5

    move-object v1, v2

    :cond_5
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getParms()[Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 6

    .line 34
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    const-string v1, "cannot invoke method: "

    if-nez v0, :cond_2

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 37
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2, p3, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2, p3, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 55
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 44
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 45
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 47
    invoke-static {v1}, Lorg/mvel2/util/ParseTools;->getWidenedTarget(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 51
    :cond_1
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 61
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_3

    .line 62
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v4

    invoke-virtual {p0, v3, p2, p3, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_2

    .line 65
    :cond_3
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    invoke-virtual {p0, v2, p2, p3, v3}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object p1

    .line 80
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 69
    :goto_2
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p3, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->executeAndCoerce([Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Z)[Ljava/lang/Object;

    move-result-object v1

    .line 71
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 71
    invoke-static {v1, v3, v4, v5, v2}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {v1}, Lorg/mvel2/util/ParseTools;->getWidenedTarget(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 73
    invoke-direct {p0, v1, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 76
    :cond_4
    throw v0
.end method

.method public setMethod(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    .line 161
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    array-length p1, p1

    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->length:I

    return-void
.end method

.method public setParms([Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parms:[Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 182
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-direct {p0, p2, p3, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeAll(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/reflect/Method;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 196
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "cannot invoke method"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 185
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->parameterTypes:[Ljava/lang/Class;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v0}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->executeOverrideTarget(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/InvokableAccessor;->coercionNeeded:Z

    .line 193
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
