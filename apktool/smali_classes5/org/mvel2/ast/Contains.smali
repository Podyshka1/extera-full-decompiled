.class public Lorg/mvel2/ast/Contains;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private stmt:Lorg/mvel2/ast/ASTNode;

.field private stmt2:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 31
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 32
    iput-object p1, p0, Lorg/mvel2/ast/Contains;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 33
    iput-object p2, p0, Lorg/mvel2/ast/Contains;->stmt2:Lorg/mvel2/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 45
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getFirstStatement()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/mvel2/ast/Contains;->stmt:Lorg/mvel2/ast/ASTNode;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    .line 41
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/mvel2/ast/Contains;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/Contains;->stmt2:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/mvel2/util/ParseTools;->containsCheck(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getSecondStatement()Lorg/mvel2/ast/ASTNode;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/mvel2/ast/Contains;->stmt2:Lorg/mvel2/ast/ASTNode;

    return-object v0
.end method
