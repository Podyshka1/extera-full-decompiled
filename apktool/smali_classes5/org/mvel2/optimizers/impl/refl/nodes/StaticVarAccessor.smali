.class public Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field field:Ljava/lang/reflect/Field;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 33
    :try_start_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 34
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 41
    :goto_0
    new-instance p2, Lorg/mvel2/OptimizationFailure;

    const-string p3, "unable to access static field"

    invoke-direct {p2, p3, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 59
    :try_start_0
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1, v0, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p4

    :catch_0
    move-exception p1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 67
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "error accessing static variable"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
