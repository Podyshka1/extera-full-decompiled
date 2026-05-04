.class public Lorg/mvel2/optimizers/impl/refl/nodes/ArrayLength;
.super Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 44
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/BaseAccessor;->nextNode:Lorg/mvel2/compiler/AccessorNode;

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 35
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
