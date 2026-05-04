.class public Lorg/mvel2/ast/Substatement;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private statement:Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>([CIIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 32
    invoke-direct {p0, p5}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 33
    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 34
    iput p2, p0, Lorg/mvel2/ast/ASTNode;->start:I

    .line 35
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 37
    iput p4, p0, Lorg/mvel2/ast/ASTNode;->fields:I

    and-int/lit8 p4, p4, 0x10

    if-eqz p4, :cond_0

    .line 38
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/Substatement;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    .line 39
    invoke-interface {p1}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    :cond_0
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 48
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p2, v0, v1, p1, p3}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/mvel2/ast/Substatement;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getStatement()Lorg/mvel2/compiler/ExecutableStatement;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mvel2/ast/Substatement;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 57
    iget-object v0, p0, Lorg/mvel2/ast/Substatement;->statement:Lorg/mvel2/compiler/ExecutableStatement;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v4, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
