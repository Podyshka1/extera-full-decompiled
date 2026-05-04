.class public Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;
.source "SourceFile"


# instance fields
.field private conversionType:Ljava/lang/Class;

.field private propertyHandler:Lorg/mvel2/integration/PropertyHandler;

.field private propertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/integration/PropertyHandler;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->conversionType:Ljava/lang/Class;

    .line 16
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyHandler:Lorg/mvel2/integration/PropertyHandler;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 51
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 20
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->conversionType:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/mvel2/MVEL;->getProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-static {p2, p1}, Lorg/mvel2/MVEL;->getProperty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_2

    .line 30
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyHandler:Lorg/mvel2/integration/PropertyHandler;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p3}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 33
    :cond_2
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyHandler:Lorg/mvel2/integration/PropertyHandler;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-interface {p2, v0, p1, p3}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 37
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "unable to access field"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 42
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz p2, :cond_0

    .line 43
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyHandler:Lorg/mvel2/integration/PropertyHandler;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p3}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, p1, p3, p4}, Lorg/mvel2/compiler/Accessor;->setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyHandler:Lorg/mvel2/integration/PropertyHandler;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->propertyName:Ljava/lang/String;

    invoke-interface {p2, v0, p1, p3, p4}, Lorg/mvel2/integration/PropertyHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
