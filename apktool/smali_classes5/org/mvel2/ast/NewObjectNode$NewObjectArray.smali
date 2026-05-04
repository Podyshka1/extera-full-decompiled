.class public Lorg/mvel2/ast/NewObjectNode$NewObjectArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/compiler/Accessor;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/NewObjectNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewObjectArray"
.end annotation


# instance fields
.field private arrayType:Ljava/lang/Class;

.field private sizes:[Lorg/mvel2/compiler/ExecutableStatement;


# direct methods
.method public constructor <init>(Ljava/lang/Class;[Lorg/mvel2/compiler/ExecutableStatement;)V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->arrayType:Ljava/lang/Class;

    .line 330
    iput-object p2, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->sizes:[Lorg/mvel2/compiler/ExecutableStatement;

    return-void
.end method


# virtual methods
.method public getKnownEgressType()Ljava/lang/Class;
    .locals 2

    .line 348
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->arrayType:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 5

    .line 334
    iget-object v0, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->sizes:[Lorg/mvel2/compiler/ExecutableStatement;

    array-length v0, v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 336
    iget-object v3, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->sizes:[Lorg/mvel2/compiler/ExecutableStatement;

    aget-object v3, v3, v2

    invoke-interface {v3, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Ljava/lang/Integer;

    invoke-static {v3, v4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_0
    iget-object p1, p0, Lorg/mvel2/ast/NewObjectNode$NewObjectArray;->arrayType:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
