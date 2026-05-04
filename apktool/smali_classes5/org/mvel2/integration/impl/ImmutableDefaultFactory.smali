.class public Lorg/mvel2/integration/impl/ImmutableDefaultFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/integration/VariableResolverFactory;


# instance fields
.field private tiltFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private throwError()V
    .locals 2

    .line 32
    new-instance v0, Lorg/mvel2/ScriptRuntimeException;

    const-string v1, "cannot assign variables; no variable resolver factory available."

    invoke-direct {v0, v1}, Lorg/mvel2/ScriptRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/mvel2/integration/VariableResolver;"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 0
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

    .line 46
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getKnownVariables()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextFactory()Lorg/mvel2/integration/VariableResolverFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 69
    new-instance v0, Lorg/mvel2/UnresolveablePropertyException;

    invoke-direct {v0, p1}, Lorg/mvel2/UnresolveablePropertyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isIndexedFactory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isResolveable(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setIndexedVariableResolver(ILorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->throwError()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNextFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;
    .locals 1

    .line 65
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "cannot chain to this factory"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTiltFlag(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->tiltFlag:Z

    return-void
.end method

.method public tiltFlag()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lorg/mvel2/integration/impl/ImmutableDefaultFactory;->tiltFlag:Z

    return v0
.end method

.method public variableIndexOf(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
