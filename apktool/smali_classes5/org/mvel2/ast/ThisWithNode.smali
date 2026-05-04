.class public Lorg/mvel2/ast/ThisWithNode;
.super Lorg/mvel2/ast/WithNode;
.source "SourceFile"


# direct methods
.method public constructor <init>([CIIIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p7}, Lorg/mvel2/ast/WithNode;-><init>([CIIIIILorg/mvel2/ParserContext;)V

    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lorg/mvel2/ast/ThisWithNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    if-eqz p2, :cond_2

    .line 39
    iget-object v0, p0, Lorg/mvel2/ast/WithNode;->withExpressions:[Lorg/mvel2/ast/WithNode$ParmValuePair;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 40
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getSetExpression()Ljava/io/Serializable;

    move-result-object v4

    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, p2, p3, v3}, Lorg/mvel2/MVEL;->executeSetExpression(Ljava/io/Serializable;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    goto :goto_1

    .line 44
    :cond_0
    invoke-virtual {v3}, Lorg/mvel2/ast/WithNode$ParmValuePair;->getStatement()Lorg/mvel2/compiler/ExecutableStatement;

    move-result-object v3

    invoke-interface {v3, p2, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    .line 37
    :cond_2
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    const-string v0, "with-block against null pointer (this)"

    invoke-direct {p1, v0, p2, p3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method
