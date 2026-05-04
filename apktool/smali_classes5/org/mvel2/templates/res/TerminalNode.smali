.class public Lorg/mvel2/templates/res/TerminalNode;
.super Lorg/mvel2/templates/res/Node;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/mvel2/templates/res/Node;-><init>()V

    .line 30
    iput p1, p0, Lorg/mvel2/templates/res/Node;->begin:I

    .line 31
    iput p2, p0, Lorg/mvel2/templates/res/Node;->end:I

    return-void
.end method


# virtual methods
.method public demarcate(Lorg/mvel2/templates/res/Node;[C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/mvel2/templates/res/Node;->next:Lorg/mvel2/templates/res/Node;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/templates/res/Node;->eval(Lorg/mvel2/templates/TemplateRuntime;Lorg/mvel2/templates/util/TemplateOutputStream;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
