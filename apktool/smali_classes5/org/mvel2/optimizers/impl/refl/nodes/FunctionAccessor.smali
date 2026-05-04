.class public Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;
.source "SourceFile"


# instance fields
.field private function:Lorg/mvel2/ast/FunctionInstance;

.field private parameters:[Lorg/mvel2/compiler/Accessor;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/FunctionInstance;[Lorg/mvel2/compiler/Accessor;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/FunctionInstance;

    .line 32
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/Accessor;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 58
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 4

    .line 38
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/Accessor;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 39
    array-length v0, v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 41
    iget-object v3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->parameters:[Lorg/mvel2/compiler/Accessor;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_2

    .line 46
    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/FunctionInstance;

    invoke-virtual {v2, p1, p2, p3, v1}, Lorg/mvel2/ast/FunctionInstance;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :cond_2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;->function:Lorg/mvel2/ast/FunctionInstance;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/mvel2/ast/FunctionInstance;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "can\'t write to function"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
