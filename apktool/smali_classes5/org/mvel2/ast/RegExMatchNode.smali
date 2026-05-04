.class public Lorg/mvel2/ast/RegExMatchNode;
.super Lorg/mvel2/ast/ASTNode;
.source "SourceFile"


# instance fields
.field private node:Lorg/mvel2/ast/ASTNode;

.field private patternNode:Lorg/mvel2/ast/ASTNode;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ast/ASTNode;Lorg/mvel2/ParserContext;)V
    .locals 0

    .line 33
    invoke-direct {p0, p3}, Lorg/mvel2/ast/ASTNode;-><init>(Lorg/mvel2/ParserContext;)V

    .line 34
    iput-object p1, p0, Lorg/mvel2/ast/RegExMatchNode;->node:Lorg/mvel2/ast/ASTNode;

    .line 35
    iput-object p2, p0, Lorg/mvel2/ast/RegExMatchNode;->patternNode:Lorg/mvel2/ast/ASTNode;

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 48
    const-class v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getReducedValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 3

    .line 43
    iget-object p2, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget-object v0, p0, Lorg/mvel2/ast/RegExMatchNode;->patternNode:Lorg/mvel2/ast/ASTNode;

    iget v1, v0, Lorg/mvel2/ast/ASTNode;->start:I

    iget v0, v0, Lorg/mvel2/ast/ASTNode;->offset:I

    invoke-static {p2, v1, v0, p1, p3}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget-object v1, p0, Lorg/mvel2/ast/RegExMatchNode;->node:Lorg/mvel2/ast/ASTNode;

    iget v2, v1, Lorg/mvel2/ast/ASTNode;->start:I

    iget v1, v1, Lorg/mvel2/ast/ASTNode;->offset:I

    .line 44
    invoke-static {v0, v2, v1, p1, p3}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    .line 43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 39
    iget-object v0, p0, Lorg/mvel2/ast/RegExMatchNode;->patternNode:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/RegExMatchNode;->node:Lorg/mvel2/ast/ASTNode;

    invoke-virtual {v1, p1, p2, p3}, Lorg/mvel2/ast/ASTNode;->getReducedValueAccelerated(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
