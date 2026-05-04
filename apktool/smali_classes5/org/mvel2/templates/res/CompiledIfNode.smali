.class public Lorg/mvel2/templates/res/CompiledIfNode;
.super Lorg/mvel2/templates/res/IfNode;
.source "SourceFile"


# instance fields
.field private ce:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(ILjava/lang/String;[CIILorg/mvel2/ParserContext;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lorg/mvel2/templates/res/IfNode;-><init>(ILjava/lang/String;[CII)V

    move-object p1, p0

    .line 36
    :goto_0
    iget p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    iget p5, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    if-le p2, p5, :cond_0

    aget-char p2, p3, p2

    invoke-static {p2}, Lorg/mvel2/util/ParseTools;->isWhitespace(C)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    goto :goto_0

    .line 37
    :cond_0
    iget p2, p1, Lorg/mvel2/templates/res/Node;->cStart:I

    iget p5, p1, Lorg/mvel2/templates/res/Node;->cEnd:I

    if-eq p2, p5, :cond_1

    sub-int/2addr p5, p4

    .line 38
    invoke-static {p3, p2, p5, p6}, Lorg/mvel2/MVEL;->compileExpression([CIILorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object p2

    iput-object p2, p1, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    :cond_1
    return-void
.end method


# virtual methods
.method public eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/mvel2/templates/res/CompiledIfNode;->ce:Ljava/io/Serializable;

    if-eqz v0, :cond_2

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, p3, p4, v1}, Lorg/mvel2/MVEL;->executeExpression(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/mvel2/templates/res/IfNode;->trueNode:Lorg/mvel2/templates/res/Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
