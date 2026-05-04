.class public Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;
.super Lorg/mvel2/integration/impl/BaseVariableResolverFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 38
    array-length p1, p1

    invoke-static {p2, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->createResolvers([Ljava/lang/Object;I)[Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 43
    new-instance v0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;

    invoke-direct {v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>()V

    iput-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 44
    invoke-interface {v0, p3}, Lorg/mvel2/integration/VariableResolverFactory;->setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    .line 45
    array-length p1, p1

    invoke-static {p2, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->createResolvers([Ljava/lang/Object;I)[Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Lorg/mvel2/integration/VariableResolver;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    return-void
.end method

.method private static createResolvers([Ljava/lang/Object;I)[Lorg/mvel2/integration/VariableResolver;
    .locals 4

    .line 50
    new-array v0, p1, [Lorg/mvel2/integration/VariableResolver;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 52
    array-length v2, p0

    if-lt v1, v2, :cond_0

    new-instance v2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/mvel2/integration/impl/IndexVariableResolver;

    invoke-direct {v2, v1, p0}, Lorg/mvel2/integration/impl/IndexVariableResolver;-><init>(I[Ljava/lang/Object;)V

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    const/4 v0, 0x0

    .line 109
    :goto_0
    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 110
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object p1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->variableResolvers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 58
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p2, p1

    .line 59
    invoke-interface {p1, p3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->getResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    :cond_0
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

    .line 76
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->getResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    instance-of v0, p1, Lorg/mvel2/integration/impl/SimpleSTValueResolver;

    if-eqz v0, :cond_0

    .line 79
    move-object v0, p1

    check-cast v0, Lorg/mvel2/integration/impl/SimpleSTValueResolver;

    invoke-virtual {v0, p3}, Lorg/mvel2/integration/impl/SimpleSTValueResolver;->setStaticType(Ljava/lang/Class;)V

    .line 81
    :cond_0
    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-object p1
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getKnownVariables()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 90
    invoke-direct {p0, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->getResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1

    .line 96
    :cond_1
    new-instance v0, Lorg/mvel2/UnresolveablePropertyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to resolve variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/mvel2/UnresolveablePropertyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIndexedFactory()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isResolveable(Ljava/lang/String;)Z
    .locals 1

    .line 100
    invoke-virtual {p0, p1}, Lorg/mvel2/integration/impl/IndexedVariableResolverFactory;->isTarget(Ljava/lang/String;)Z

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
    .locals 5

    .line 118
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableNames:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 119
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method
