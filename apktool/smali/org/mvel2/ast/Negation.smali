.class public Lorg/mvel2/ast/Negation;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private stmt:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 34
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 35
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 36
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 37
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_1

    .line 40
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p3

    check-cast p3, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p3, p0, Lorg/mvel2/ast/Negation;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {p3}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/mvel2/ast/Negation;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    .line 41
    invoke-interface {p3}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lorg/mvel2/util/ParseTools;->boxPrimitive(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p3

    const-class p4, Ljava/lang/Boolean;

    invoke-virtual {p3, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    new-instance p3, Lorg/mvel2/CompileException;

    const-string/jumbo p4, "negation operator cannot be applied to non-boolean type"

    invoke-direct {p3, p4, p1, p2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p3

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 64
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 53
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p2, v0, v1, p1, p3}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 59
    :goto_0
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    const-string/jumbo v1, "negation operator applied to non-boolean expression"

    invoke-direct {p2, v1, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2

    .line 56
    :goto_1
    new-instance p2, Lorg/mvel2/CompileException;

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    const-string/jumbo v1, "negation operator applied to a null value"

    invoke-direct {p2, v1, p3, v0, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p2
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/mvel2/ast/Negation;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mvel2/ast/Negation;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method
