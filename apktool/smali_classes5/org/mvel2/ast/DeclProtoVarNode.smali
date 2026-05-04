.class public Lorg/mvel2/ast/DeclProtoVarNode;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/ast/Assignment;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/mvel2/ast/Proto;ILorg/mvel2/ParserContext;)V
    .locals 0

    .line 34
    invoke-direct {p0, p4}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 35
    const-class p2, Lorg/mvel2/ast/Proto$ProtoInstance;

    iput-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    .line 36
    iput-object p1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-static {p1}, Lorg/mvel2/util/ParseTools;->checkNameSafety(Ljava/lang/String;)V

    and-int/lit8 p2, p3, 0x10

    if-eqz p2, :cond_0

    .line 39
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const/4 p3, 0x1

    invoke-virtual {p4, p1, p2, p3}, Lorg/mvel2/ParserContext;->addVariable(Ljava/lang/String;Ljava/lang/Class;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAssignmentVar()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getExpression()[C
    .locals 1

    const/4 v0, 0x0

    .line 65
    new-array v0, v0, [C

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object p1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    return-object v0

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "variable defined within scope: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 44
    iget-object p1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->egressType:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-interface {p3, p1, v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->createVariable(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/integration/VariableResolver;

    return-object v0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "variable defined within scope: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isAssignment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNewDeclaration()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setValueStatement(Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 1

    .line 77
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "illegal operation"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "var:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/DeclProtoVarNode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
