.class public Lorg/mvel2/ast/Convertable;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private clsStmt:Lorg/mvel2/ast/ASTNode;

.field private stmt:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 1

    .line 13
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 14
    iput-object p1, p0, Lorg/mvel2/ast/Convertable;->stmt:Lorg/mvel2/ast/ASTNode;

    .line 15
    iput-object p2, p0, Lorg/mvel2/ast/Convertable;->clsStmt:Lorg/mvel2/ast/ASTNode;

    .line 16
    const-class p1, Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p3, p2, p1, v0}, Lorg/mvel2/util/CompilerTools;->expectType(Lorg/mvel2/ParserContext;Lorg/mvel2/ast/ASTNode;Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 45
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/Convertable;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 32
    :cond_0
    iget-object v1, p0, Lorg/mvel2/ast/Convertable;->clsStmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/mvel2/DataConversion;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not a class reference: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/Convertable;->clsStmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {p3}, Lorg/mvel2/ast/ASTNode;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 20
    iget-object v0, p0, Lorg/mvel2/ast/Convertable;->stmt:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v1, p0, Lorg/mvel2/ast/Convertable;->clsStmt:Lorg/mvel2/ast/ASTNode;

    .line 22
    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 21
    invoke-static {p1, p2}, Lorg/mvel2/DataConversion;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
