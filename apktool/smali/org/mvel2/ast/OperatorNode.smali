.class public Lorg/mvel2/ast/OperatorNode;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private operator:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;[CILorg/mvel2/ParserContext;)V
    .locals 0

    .line 31
    invoke-direct {p0, p4}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 33
    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    .line 34
    iput-object p1, p0, Lorg/mvel2/ast/OperatorNode;->operator:Ljava/lang/Integer;

    iput-object p1, p0, Lorg/mvel2/ast/ASTNode;->literal:Ljava/lang/Object;

    .line 35
    iput p3, p0, Lorg/mvel2/ast/ASTNode;->start:I

    return-void
.end method


# virtual methods
.method public getOperator()Ljava/lang/Integer;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/mvel2/ast/OperatorNode;->operator:Ljava/lang/Integer;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 55
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal use of operator: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/OperatorNode;->operator:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lorg/mvel2/debug/DebugTools;->getOperatorSymbol(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 51
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "illegal use of operator: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/OperatorNode;->operator:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p3}, Lorg/mvel2/debug/DebugTools;->getOperatorSymbol(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method public isOperator()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public isOperator(Ljava/lang/Integer;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/mvel2/ast/OperatorNode;->operator:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
