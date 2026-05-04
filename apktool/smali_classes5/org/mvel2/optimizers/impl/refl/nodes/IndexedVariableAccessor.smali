.class public Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private register:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->register:I

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 60
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 34
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->register:I

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    iget p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->register:I

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 43
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->register:I

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    iget p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;->register:I

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p4}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object p4
.end method
