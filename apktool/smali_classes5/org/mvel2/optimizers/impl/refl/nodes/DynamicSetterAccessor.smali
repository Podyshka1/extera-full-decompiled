.class public Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/AccessorNode;


# static fields
.field public static final EMPTY:[Ljava/lang/Object;


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private targetType:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->method:Ljava/lang/reflect/Method;

    .line 52
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->targetType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->targetType:Ljava/lang/Class;

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getNextNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 39
    :try_start_0
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->method:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->targetType:Ljava/lang/Class;

    invoke-static {p4, p3}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p4, v0

    invoke-virtual {p2, p1, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 42
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "error binding property"

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicSetterAccessor;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
