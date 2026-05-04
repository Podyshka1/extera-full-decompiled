.class public Lorg/mvel2/compiler/CompiledExpression;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mvel2/compiler/ExecutableStatement;


# instance fields
.field private convertableIngressEgress:Z

.field private final firstNode:Lorg/mvel2/ast/ASTNode;

.field private knownEgressType:Ljava/lang/Class;

.field private knownIngressType:Ljava/lang/Class;

.field private final literalOnly:Z

.field private optimized:Z

.field private final parserConfiguration:Lorg/mvel2/ParserConfiguration;

.field private final sourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/mvel2/util/ASTLinkedList;Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/ParserConfiguration;Z)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    .line 47
    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNode()Lorg/mvel2/ast/ASTNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    .line 48
    iput-object p2, p0, Lorg/mvel2/compiler/CompiledExpression;->sourceName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->isSingleNode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/mvel2/util/ASTLinkedList;->firstNonSymbol()Lorg/mvel2/ast/ASTNode;

    move-result-object p1

    invoke-virtual {p1}, Lorg/mvel2/ast/ASTNode;->getEgressType()Ljava/lang/Class;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    .line 50
    iput-boolean p5, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    .line 51
    iput-object p4, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-void
.end method

.method private setupOptimizers()V
    .locals 1

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    return-void
.end method


# virtual methods
.method public computeTypeConversionRule()V
    .locals 2

    .line 83
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    :cond_0
    return-void
.end method

.method public getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0, p2}, Lorg/mvel2/ParserConfiguration;->getVariableFactory(Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/integration/VariableResolverFactory;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lorg/mvel2/MVELRuntime;->execute(ZLorg/mvel2/compiler/CompiledExpression;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirstNode()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    return-object v0
.end method

.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getKnownIngressType()Ljava/lang/Class;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    return-object v0
.end method

.method public getParserConfiguration()Lorg/mvel2/ParserConfiguration;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 89
    iget-boolean p2, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez p2, :cond_0

    .line 90
    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    .line 92
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-static {}, Lorg/mvel2/optimizers/OptimizerFactory;->clearThreadAccessorOptimizer()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/OptimizerFactory;->clearThreadAccessorOptimizer()V

    .line 96
    throw p1

    .line 98
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->optimized:Z

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lorg/mvel2/compiler/CompiledExpression;->setupOptimizers()V

    .line 105
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {}, Lorg/mvel2/optimizers/OptimizerFactory;->clearThreadAccessorOptimizer()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lorg/mvel2/optimizers/OptimizerFactory;->clearThreadAccessorOptimizer()V

    .line 109
    throw p1

    .line 111
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/mvel2/compiler/CompiledExpression;->getDirectValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public intOptimized()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConvertableIngressEgress()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->convertableIngressEgress:Z

    return v0
.end method

.method public isEmptyStatement()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExplicitCast()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lorg/mvel2/ast/TypeCast;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImportInjectionRequired()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->parserConfiguration:Lorg/mvel2/ParserConfiguration;

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->hasImports()Z

    move-result v0

    return v0
.end method

.method public isLiteralOnly()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lorg/mvel2/compiler/CompiledExpression;->literalOnly:Z

    return v0
.end method

.method public isSingleNode()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setKnownEgressType(Ljava/lang/Class;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownEgressType:Ljava/lang/Class;

    return-void
.end method

.method public setKnownIngressType(Ljava/lang/Class;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/mvel2/compiler/CompiledExpression;->knownIngressType:Ljava/lang/Class;

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    iget-object v1, p0, Lorg/mvel2/compiler/CompiledExpression;->firstNode:Lorg/mvel2/ast/ASTNode;

    :goto_0
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, v1, Lorg/mvel2/ast/ASTNode;->nextASTNode:Lorg/mvel2/ast/ASTNode;

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
