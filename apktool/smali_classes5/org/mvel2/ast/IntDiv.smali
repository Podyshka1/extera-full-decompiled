.class public Lorg/mvel2/ast/IntDiv;
.super Lorg/mvel2/ast/BinaryOperation;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ast/IntOptimized;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 1

    const/4 v0, 0x2

    .line 10
    invoke-direct {p0, v0, p3}, Lorg/mvel2/ast/BinaryOperation;-><init>(ILorg/mvel2/ParserContext;)V

    .line 11
    iput-object p1, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    .line 12
    iput-object p2, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 34
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 23
    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 24
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr v0, p1

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 17
    iget-object v0, p0, Lorg/mvel2/ast/BooleanNode;->left:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/mvel2/ast/BooleanNode;->right:Lorg/mvel2/ast/ASTNode;

    .line 18
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr v0, p1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setRight(Lorg/mvel2/ast/ASTNode;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lorg/mvel2/ast/BooleanNode;->setRight(Lorg/mvel2/ast/ASTNode;)V

    return-void
.end method
