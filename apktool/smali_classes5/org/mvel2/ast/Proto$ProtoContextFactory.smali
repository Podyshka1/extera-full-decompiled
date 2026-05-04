.class public Lorg/mvel2/ast/Proto$ProtoContextFactory;
.super Lorg/mvel2/integration/impl/MapVariableResolverFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProtoContextFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mvel2/ast/Proto;

.field private final variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mvel2/util/SimpleIndexHashMapWrapper<",
            "Ljava/lang/String;",
            "Lorg/mvel2/integration/VariableResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Lorg/mvel2/util/SimpleIndexHashMapWrapper;)V
    .locals 1

    .line 196
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    .line 197
    invoke-direct {p0, p2}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;-><init>(Ljava/util/Map;)V

    .line 198
    new-instance p1, Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;-><init>(Lorg/mvel2/util/SimpleIndexHashMapWrapper;Z)V

    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    return-void
.end method


# virtual methods
.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 0

    .line 258
    iget-object p2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {p2, p1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->getByIndex(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/mvel2/integration/VariableResolver;

    if-nez p2, :cond_0

    .line 261
    new-instance p2, Lorg/mvel2/integration/impl/SimpleValueResolver;

    invoke-direct {p2, p3}, Lorg/mvel2/integration/impl/SimpleValueResolver;-><init>(Ljava/lang/Object;)V

    .line 262
    iget-object p3, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {p3, p1, p2}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->putAtIndex(ILjava/lang/Object;)V

    goto :goto_0

    .line 265
    :cond_0
    invoke-interface {p2, p3}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    .line 269
    :goto_0
    iget-object p2, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->indexedVariableResolvers:[Lorg/mvel2/integration/VariableResolver;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 1
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

    .line 247
    iget-object p4, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->getByIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/integration/VariableResolver;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 248
    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 249
    :cond_1
    new-instance p3, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "variable already defined within scope: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object p4, p2, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p2, p2, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p3, p1, p4, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p3

    .line 252
    :cond_2
    :goto_1
    invoke-virtual {p0, p2}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->createIndexedVariable(ILjava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;)Lorg/mvel2/integration/VariableResolver;
    .locals 3

    .line 206
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/mvel2/UnresolveablePropertyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 210
    :catch_0
    new-instance v0, Lorg/mvel2/ast/Proto$ProtoResolver;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;
    .locals 3
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

    .line 219
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/mvel2/ast/Proto$ProtoContextFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0
    :try_end_0
    .catch Lorg/mvel2/UnresolveablePropertyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "variable already defined within scope: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v0, p3, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p3, p3, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p1, v0, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 229
    :cond_1
    :goto_1
    new-instance v0, Lorg/mvel2/ast/Proto$ProtoResolver;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-direct {v0, v1, v2, p1, p3}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->addResolver(Ljava/lang/String;Lorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolver;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getIndexedVariableNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->getByIndex(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mvel2/integration/VariableResolver;

    return-object p1
.end method

.method public getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;
    .locals 4

    .line 289
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/integration/VariableResolver;

    if-eqz v0, :cond_0

    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    new-instance v1, Lorg/mvel2/ast/Proto$ProtoResolver;

    iget-object v2, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v3, p0, Lorg/mvel2/integration/impl/MapVariableResolverFactory;->variables:Ljava/util/Map;

    invoke-direct {v1, v2, v3, p1}, Lorg/mvel2/ast/Proto$ProtoResolver;-><init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/mvel2/integration/impl/BaseVariableResolverFactory;->nextFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_2

    .line 298
    invoke-interface {v0, p1}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    return-object p1

    .line 301
    :cond_2
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

.method public setIndexedVariableNames([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIndexedVariableResolver(ILorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->putAtIndex(ILjava/lang/Object;)V

    return-object p2
.end method

.method public variableIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoContextFactory;->variableResolvers:Lorg/mvel2/util/SimpleIndexHashMapWrapper;

    invoke-virtual {v0, p1}, Lorg/mvel2/util/SimpleIndexHashMapWrapper;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
