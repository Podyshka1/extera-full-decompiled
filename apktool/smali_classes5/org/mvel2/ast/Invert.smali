.class public Lorg/mvel2/ast/Invert;
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

    if-eqz p4, :cond_0

    .line 40
    invoke-static {p1, p2, p3, p5}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/mvel2/compiler/ExecutableStatement;

    iput-object p1, p0, Lorg/mvel2/ast/Invert;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    const-class p2, Ljava/lang/Integer;

    const/4 p3, 0x1

    invoke-static {p5, p1, p2, p3}, Lorg/mvel2/util/CompilerTools;->expectType(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/Accessor;Ljava/lang/Class;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 49
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, p0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p2, v0, v1, p1, p3}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    .line 50
    instance-of p2, p1, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 51
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 54
    :cond_0
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "was expecting type: Integer; but found type: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const-string p1, "null"

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v0, p0, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {p2, p1, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mvel2/ast/Invert;->stmt:Lorg/mvel2/compiler/ExecutableStatement;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    not-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
