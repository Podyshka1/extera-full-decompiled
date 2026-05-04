.class public Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private nextNode:Lorg/mvel2/compiler/AccessorNode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 54
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {p1, p2, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, p2, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "assignment to reserved variable \'this\' not permitted"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
