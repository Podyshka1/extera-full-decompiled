.class public Lorg/mvel2/ast/Proto$ProtoResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/integration/VariableResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mvel2/ast/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProtoResolver"
.end annotation


# instance fields
.field private knownType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lorg/mvel2/ast/Proto;

.field private variableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 310
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->this$0:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->variableMap:Ljava/util/Map;

    .line 312
    iput-object p3, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/mvel2/ast/Proto;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 315
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->this$0:Lorg/mvel2/ast/Proto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p3, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    .line 317
    iput-object p4, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    .line 318
    iput-object p2, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->variableMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 356
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->variableMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/ast/Proto$Receiver;

    invoke-static {v0}, Lorg/mvel2/ast/Proto$Receiver;->access$200(Lorg/mvel2/ast/Proto$Receiver;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    return-void
.end method

.method public setStaticType(Ljava/lang/Class;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/mvel2/DataConversion;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot convert value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    .line 348
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, v1, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, v1, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {v0, p1, v2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    .line 340
    :cond_0
    new-instance v0, Lorg/mvel2/CompileException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot assign "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to type: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->knownType:Ljava/lang/Class;

    .line 341
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->this$0:Lorg/mvel2/ast/Proto;

    iget-object v2, v1, Lorg/mvel2/ast/ASTNode;->expr:[C

    iget v1, v1, Lorg/mvel2/ast/ASTNode;->start:I

    invoke-direct {v0, p1, v2, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v0

    .line 352
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->variableMap:Ljava/util/Map;

    iget-object v1, p0, Lorg/mvel2/ast/Proto$ProtoResolver;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mvel2/ast/Proto$Receiver;

    invoke-static {v0, p1}, Lorg/mvel2/ast/Proto$Receiver;->access$202(Lorg/mvel2/ast/Proto$Receiver;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
