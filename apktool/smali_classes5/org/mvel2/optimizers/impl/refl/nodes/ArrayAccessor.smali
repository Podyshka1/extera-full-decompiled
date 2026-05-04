.class public Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private index:I

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    return v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 82
    const-class v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 39
    iget v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    :try_start_0
    iget p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 50
    :catch_0
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument of type \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not an Array"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setIndex(I)V
    .locals 0

    .line 70
    iput p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 56
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 57
    iget v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    iget p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    invoke-static {p1, p2, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    return-object p4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Array Accessor -> ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
