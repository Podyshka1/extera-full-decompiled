.class public Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# instance fields
.field private coercionRequired:Z

.field private field:Ljava/lang/reflect/Field;

.field private nextNode:Lorg/mvel2/compiler/AccessorNode;

.field private nullHandler:Lorg/mvel2/integration/PropertyHandler;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Lorg/mvel2/integration/PropertyHandler;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    .line 36
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    .line 37
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nullHandler:Lorg/mvel2/integration/PropertyHandler;

    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 43
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nullHandler:Lorg/mvel2/integration/PropertyHandler;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2, p3}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p1

    .line 54
    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setField(Ljava/lang/reflect/Field;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    .line 100
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 61
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    .line 63
    :try_start_0
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, p1, p2, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    .line 67
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p4

    .line 71
    :cond_1
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p4

    .line 83
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_1
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->coercionRequired:Z

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unable to bind property"

    invoke-direct {p1, p2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
