.class public Lorg/mvel2/ast/FunctionInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final function:Lorg/mvel2/ast/Function;


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Function;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/mvel2/ast/FunctionInstance;->function:Lorg/mvel2/ast/Function;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/mvel2/ast/FunctionInstance;->function:Lorg/mvel2/ast/Function;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/mvel2/ast/Function;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFunction()Lorg/mvel2/ast/Function;
    .locals 1

    .line 16
    iget-object v0, p0, Lorg/mvel2/ast/FunctionInstance;->function:Lorg/mvel2/ast/Function;

    return-object v0
.end method
