.class public Lorg/mvel2/templates/res/IfNode;
.super Lorg/mvel2/templates/res/Node;
.source "SourceFile"


# instance fields
.field protected elseNode:Lorg/mvel2/templates/res/Node;

.field protected trueNode:Lorg/mvel2/templates/res/Node;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CII)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/Node;-><init>(ILjava/lang/String;[CII)V

    move-object p1, p0

    .line 33
    :goto_0
    iget p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    iget p4, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    if-le p2, p4, :cond_0

    aget-char p2, p3, p2

    invoke-static {p2}, Lorg/mvel2/util/ParseTools;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    .line 53
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    .line 54
    iget-object p1, p0, Lorg/mvel2/templates/res/Node;->terminus:Lorg/mvel2/templates/res/Node;

    iput-object p1, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    const/4 p1, 0x1

    return p1
.end method

.method public eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 7

    .line 59
    iget v0, p0, Lorg/mvel2/templates/res/Node;->cEnd:I

    iget v2, p0, Lorg/mvel2/templates/res/Node;->cStart:I

    if-eq v0, v2, :cond_2

    iget-object v1, p0, Lorg/mvel2/templates/res/Node;->contents:[C

    sub-int v3, v0, v2

    const-class v6, Ljava/lang/Boolean;

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/mvel2/MVEL;->eval([CIILjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p3, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2, v4, v5}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    move-object v4, p3

    move-object v5, p4

    .line 60
    :goto_0
    iget-object p3, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    invoke-virtual {p3, p1, p2, v4, v5}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getElseNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->elseNode:Lorg/mvel2/templates/res/Node;

    return-object v0
.end method

.method public getTrueNode()Lorg/mvel2/templates/res/Node;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    return-object v0
.end method

.method public setElseNode(Lorg/mvel2/templates/res/ExpressionNode;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->elseNode:Lorg/mvel2/templates/res/Node;

    return-void
.end method

.method public setTrueNode(Lorg/mvel2/templates/res/ExpressionNode;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    return-void
.end method
