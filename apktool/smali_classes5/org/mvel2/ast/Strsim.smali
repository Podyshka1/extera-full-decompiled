.class public Lorg/mvel2/ast/Strsim;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private soundslike:Lorg/mvel2/ast/ASTNode;

.field private stmt:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 15
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 16
    iput-object p1, p0, Lorg/mvel2/ast/Strsim;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 17
    iput-object p2, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    .line 18
    const-class p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p3, p2, p1, v0}, Lorg/mvel2/util/CompilerTools;->expectType(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 43
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 28
    const-string v0, "not a string: "

    :try_start_0
    iget-object v1, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lorg/mvel2/ast/Strsim;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v2, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 34
    invoke-static {v1, p1}, Lorg/mvel2/util/ParseTools;->similarity(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 32
    :cond_0
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/Strsim;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/Strsim;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object p3

    invoke-virtual {p0}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v1

    invoke-direct {p1, p2, p3, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    new-instance p1, Lorg/mvel2/CompileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getExpr()[C

    move-result-object p3

    iget-object v0, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0}, Lorg/mvel2/ast/ASTNode;->getStart()I

    move-result v0

    invoke-direct {p1, p2, p3, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 22
    iget-object v0, p0, Lorg/mvel2/ast/Strsim;->soundslike:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/Strsim;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 23
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 22
    invoke-static {v0, p1}, Lorg/mvel2/util/ParseTools;->similarity(Ljava/lang/String;Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
