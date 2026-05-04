.class public Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private index:Lorg/mvel2/compiler/ExecutableStatement;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method


# virtual methods
.method public getIndex()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 71
    const-class v0, Ljava/lang/Character;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 37
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 38
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v1, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public setIndex(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 46
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v2, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array Accessor -> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;->index:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
