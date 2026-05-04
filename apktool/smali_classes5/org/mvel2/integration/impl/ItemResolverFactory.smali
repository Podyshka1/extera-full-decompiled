.class public Lorg/mvel2/integration/impl/ItemResolverFactory;
.super Lorg/mvel2/integration/impl/BaseVariableResolverFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;
    }
.end annotation


# instance fields
.field private final resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;


# direct methods
.method public constructor <init>(Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    .line 30
    iput-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    return-void
.end method


# virtual methods
.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 34
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/ItemResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    invoke-virtual {p1, p2}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->setValue(Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/ItemResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 48
    iget-object p3, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p3, p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "variable already defined in scope: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 53
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/ItemResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public isResolveable(Ljava/lang/String;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/mvel2/integration/impl/ItemResolverFactory;->resolver:Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;

    invoke-virtual {v0}, Lorg/mvel2/integration/impl/ItemResolverFactory$ItemResolver;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
