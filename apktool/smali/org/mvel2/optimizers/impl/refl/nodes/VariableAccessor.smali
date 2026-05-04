.class public Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private property:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 72
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getProperty()Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    if-eqz p3, :cond_1

    .line 36
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 34
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "cannot access property in optimized accessor: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setProperty(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 49
    :cond_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;->property:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p4}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object p4
.end method
