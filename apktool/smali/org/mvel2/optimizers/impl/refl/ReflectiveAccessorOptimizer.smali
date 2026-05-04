.class public Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;
.super Lorg/mvel2/optimizers/AbstractOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/mvel2/optimizers/AccessorOptimizer;


# static fields
.field private static final DONE:I = -0x1

.field private static final EMPTYARG:[Ljava/lang/Object;

.field private static final EMPTYCLS:[Ljava/lang/Class;

.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private ctx:Ljava/lang/Object;

.field private currNode:Lorg/mvel2/compiler/AccessorNode;

.field private first:Z

.field private ingressType:Ljava/lang/Class;

.field private returnType:Ljava/lang/Class;

.field private rootNode:Lorg/mvel2/compiler/AccessorNode;

.field private thisRef:Ljava/lang/Object;

.field private val:Ljava/lang/Object;

.field private variableFactory:Lorg/mvel2/integration/VariableResolverFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 111
    const-class v0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->LOG:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 124
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    .line 125
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->EMPTYCLS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 132
    invoke-direct {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    return-void
.end method

.method private constructor <init>(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/AbstractOptimizer;-><init>(Lorg/mvel2/ParserContext;)V

    const/4 p1, 0x1

    .line 127
    iput-boolean p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    .line 141
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 142
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p4, p3

    .line 143
    :goto_0
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    add-int/2addr p3, p4

    .line 144
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    .line 145
    iput-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 146
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 147
    iput-object p6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    return-void
.end method

.method private _getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;
    .locals 10

    .line 1133
    instance-of v0, p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1134
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mvel2/compiler/Accessor;

    .line 1137
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 1138
    invoke-direct {p0, v2, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_0

    .line 1141
    :cond_0
    const-class p1, Ljava/util/List;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 1143
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/collection/ListCreator;

    invoke-direct {p1, v0}, Lorg/mvel2/optimizers/impl/refl/collection/ListCreator;-><init>([Lorg/mvel2/compiler/Accessor;)V

    return-object p1

    .line 1145
    :cond_1
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 1146
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Lorg/mvel2/compiler/Accessor;

    .line 1147
    new-array v0, v0, [Lorg/mvel2/compiler/Accessor;

    .line 1150
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1151
    invoke-direct {p0, v4, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;

    move-result-object v5

    aput-object v5, v2, v1

    add-int/lit8 v5, v1, 0x1

    .line 1152
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;

    move-result-object v4

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_1

    .line 1155
    :cond_2
    const-class p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 1157
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/collection/MapCreator;

    invoke-direct {p1, v2, v0}, Lorg/mvel2/optimizers/impl/refl/collection/MapCreator;-><init>([Lorg/mvel2/compiler/Accessor;[Lorg/mvel2/compiler/Accessor;)V

    return-object p1

    .line 1159
    :cond_3
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 1160
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Lorg/mvel2/compiler/Accessor;

    const/16 v2, 0x5b

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 1165
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move v5, v1

    .line 1166
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1170
    :cond_4
    const-class p2, [Ljava/lang/Object;

    move v5, v3

    .line 1174
    :cond_5
    :try_start_0
    invoke-static {p2}, Lorg/mvel2/util/ParseTools;->getBaseComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    if-le v5, v3, :cond_6

    .line 1175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sub-int/2addr v5, v3

    invoke-static {v2, v5}, Lorg/mvel2/util/ParseTools;->repeatChar(CI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "L"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    const/4 v6, 0x0

    invoke-static {v6, v2, v5}, Lorg/mvel2/util/ParseTools;->findClass(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_6
    move-object v2, p2

    .line 1178
    :goto_3
    check-cast p1, [Ljava/lang/Object;

    array-length v5, p1

    move v6, v1

    :goto_4
    if-ge v1, v5, :cond_7

    aget-object v7, p1, v1

    .line 1179
    iget-object v8, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    add-int/lit8 v9, v6, 0x1

    invoke-direct {p0, v7, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;

    move-result-object v7

    aput-object v7, v0, v6

    invoke-static {v8, v7, v4, v3}, Lorg/mvel2/util/CompilerTools;->expectType(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/Accessor;Ljava/lang/Class;Z)V

    add-int/lit8 v1, v1, 0x1

    move v6, v9

    goto :goto_4

    .line 1182
    :cond_7
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/collection/ArrayCreator;

    invoke-static {p2}, Lorg/mvel2/util/ParseTools;->getSubComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/mvel2/optimizers/impl/refl/collection/ArrayCreator;-><init>([Lorg/mvel2/compiler/Accessor;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1185
    :goto_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this error should never throw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/mvel2/util/ParseTools;->getBaseComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1189
    :cond_8
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Object;

    iput-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 1190
    :cond_9
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1191
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/collection/ExprValueAccessor;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    iget-object v5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/optimizers/impl/refl/collection/ExprValueAccessor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)V

    return-object v1

    .line 1194
    :cond_a
    new-instance v2, Lorg/mvel2/optimizers/impl/refl/collection/ExprValueAccessor;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    iget-object v6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    const-class v4, Ljava/lang/Object;

    invoke-direct/range {v2 .. v7}, Lorg/mvel2/optimizers/impl/refl/collection/ExprValueAccessor;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)V

    return-object v2
.end method

.method private addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V
    .locals 1

    .line 463
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    if-nez v0, :cond_0

    .line 464
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-void

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-interface {v0, p1}, Lorg/mvel2/compiler/AccessorNode;->setNextNode(Lorg/mvel2/compiler/AccessorNode;)Lorg/mvel2/compiler/AccessorNode;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    return-void
.end method

.method private compileConstructor([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/AccessorNode;
    .locals 11

    move-object v7, p3

    .line 1258
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-static {p1, v1, v2}, Lorg/mvel2/util/ParseTools;->captureContructorAndResidual([CII)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1259
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lorg/mvel2/util/ParseTools;->parseMethodOrConstructor([C)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    .line 1262
    new-instance v5, Ljava/lang/String;

    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    const/16 v9, 0x28

    invoke-static {v9, v6, v8, p1}, Lorg/mvel2/util/ArrayTools;->findFirst(CII[C)I

    move-result v6

    invoke-static {p1, v2, v6}, Lorg/mvel2/util/ParseTools;->subset([CII)[C

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 1263
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p3, v5, v0}, Lorg/mvel2/util/ParseTools;->findClass(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    .line 1265
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/mvel2/compiler/ExecutableStatement;

    move v6, v2

    .line 1267
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 1268
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v8, v9}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lorg/mvel2/compiler/ExecutableStatement;

    aput-object v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1271
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v8, v6, [Ljava/lang/Object;

    move v9, v2

    .line 1272
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 1273
    aget-object v10, v5, v9

    invoke-interface {v10, p2, p3}, Lorg/mvel2/compiler/ExecutableStatement;->getValue(Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1276
    :cond_1
    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v3}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v3

    invoke-static {v8, v0, v3}, Lorg/mvel2/util/ParseTools;->getBestConstructorCandidate([Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v9

    if-nez v9, :cond_4

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    :goto_2
    if-ge v2, v6, :cond_3

    .line 1281
    aget-object v3, v8, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v6, :cond_2

    .line 1282
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1285
    :cond_3
    new-instance v2, Lorg/mvel2/CompileException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find constructor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {v2, v0, v1, v3}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v2

    :cond_4
    :goto_3
    if-ge v2, v6, :cond_5

    .line 1290
    aget-object v0, v8, v2

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v10

    invoke-static {v3, v2, v10}, Lorg/mvel2/util/Varargs;->paramTypeVarArgsSafe([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1292
    :cond_5
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v2

    invoke-static {v0, v8, v2}, Lorg/mvel2/util/Varargs;->normalizeArgsForVarArgs([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    .line 1294
    new-instance v8, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;

    invoke-direct {v8, v9, v5}, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;-><init>(Ljava/lang/reflect/Constructor;[Lorg/mvel2/compiler/ExecutableStatement;)V

    .line 1296
    array-length v2, v1

    if-le v2, v4, :cond_6

    .line 1297
    new-instance v2, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;

    move-object v3, v1

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    aget-object v5, v3, v4

    .line 1298
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 1299
    invoke-virtual {v9, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    move-object v6, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;-><init>(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 1300
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iput-object v1, v0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ingressType:Ljava/lang/Class;

    .line 1303
    invoke-direct {v0, v8}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->setRootNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1304
    invoke-direct {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->compileGetChain()Lorg/mvel2/compiler/Accessor;

    .line 1305
    invoke-direct {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getRootNode()Lorg/mvel2/compiler/AccessorNode;

    move-result-object v1

    .line 1307
    invoke-virtual {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getResultOptPass()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->val:Ljava/lang/Object;

    return-object v1

    :cond_6
    return-object v8

    :cond_7
    move-object v3, v1

    .line 1313
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lorg/mvel2/ParserContext;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_4

    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 1314
    :goto_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v2, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->EMPTYCLS:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1315
    new-instance v8, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/ConstructorAccessor;-><init>(Ljava/lang/reflect/Constructor;[Lorg/mvel2/compiler/ExecutableStatement;)V

    .line 1317
    array-length v2, v3

    if-le v2, v4, :cond_9

    .line 1319
    new-instance v2, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    aget-object v6, v3, v4

    .line 1320
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    move-object v7, p3

    move-object v1, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;-><init>(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 1321
    invoke-direct {v0, v8}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->setRootNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1322
    invoke-direct {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->compileGetChain()Lorg/mvel2/compiler/Accessor;

    .line 1323
    invoke-direct {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getRootNode()Lorg/mvel2/compiler/AccessorNode;

    move-result-object v1

    .line 1325
    invoke-virtual {v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getResultOptPass()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->val:Ljava/lang/Object;

    return-object v1

    :cond_9
    return-object v8
.end method

.method private compileGetChain()Lorg/mvel2/compiler/Accessor;
    .locals 13

    .line 356
    const-string v1, ": "

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 357
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 360
    :try_start_0
    sget-boolean v2, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    const/16 v3, 0x2e

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v2, :cond_9

    .line 361
    :goto_0
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v2, v8, :cond_13

    .line 362
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->nextSubToken()I

    move-result v2

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v5, :cond_1

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v5, v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :catch_3
    move-exception v0

    move-object v5, v0

    goto/16 :goto_c

    :catch_4
    move-exception v0

    move-object v6, v0

    goto/16 :goto_d

    :catch_5
    move-exception v0

    move-object v6, v0

    goto/16 :goto_e

    .line 370
    :cond_1
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getCollectionProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 367
    :cond_2
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 364
    :cond_3
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 379
    :goto_1
    iput-boolean v7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 381
    :cond_4
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v2, v8, :cond_8

    .line 382
    iget-boolean v9, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    if-eqz v9, :cond_6

    .line 383
    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v10, v9, v2

    if-ne v10, v3, :cond_5

    move v10, v6

    goto :goto_2

    :cond_5
    move v10, v7

    .line 384
    :goto_2
    new-instance v11, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;

    add-int v12, v2, v10

    sub-int/2addr v8, v2

    sub-int/2addr v8, v10

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v11, v9, v12, v8, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;-><init>([CIILorg/mvel2/ParserContext;)V

    invoke-direct {p0, v11}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v0, :cond_6

    goto/16 :goto_8

    :cond_6
    if-eqz v0, :cond_7

    goto :goto_3

    .line 387
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 389
    :cond_8
    :goto_3
    iput-boolean v7, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    goto/16 :goto_0

    .line 394
    :cond_9
    :goto_4
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v2, v8, :cond_13

    .line 395
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->nextSubToken()I

    move-result v2

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_c

    if-eq v2, v5, :cond_b

    if-eq v2, v4, :cond_a

    goto :goto_5

    .line 406
    :cond_a
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 403
    :cond_b
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getCollectionPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 400
    :cond_c
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 397
    :cond_d
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->capture()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    :goto_5
    iput-boolean v7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    if-eqz v0, :cond_e

    .line 413
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 414
    :cond_e
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v8, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    if-ge v2, v8, :cond_12

    .line 415
    iget-boolean v9, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    if-eqz v9, :cond_10

    .line 416
    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v10, v9, v2

    if-ne v10, v3, :cond_f

    move v10, v6

    goto :goto_6

    :cond_f
    move v10, v7

    .line 417
    :goto_6
    new-instance v11, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;

    add-int v12, v2, v10

    sub-int/2addr v8, v2

    sub-int/2addr v8, v10

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v11, v9, v12, v8, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/NullSafe;-><init>([CIILorg/mvel2/ParserContext;)V

    invoke-direct {p0, v11}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v0, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v0, :cond_11

    goto :goto_7

    .line 420
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 422
    :cond_12
    :goto_7
    iput-boolean v7, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    goto :goto_4

    .line 426
    :cond_13
    :goto_8
    iput-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->val:Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 457
    :goto_9
    sget-object v1, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->LOG:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, ""

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 458
    new-instance v1, Lorg/mvel2/CompileException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw v1

    .line 454
    :goto_a
    new-instance v1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "null pointer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {v2, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v1

    .line 451
    :goto_b
    throw v0

    .line 447
    :goto_c
    new-instance v1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {v2, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": array index out of bounds."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct/range {v1 .. v6}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v1

    .line 443
    :goto_d
    new-instance v2, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v7, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {v3, v4, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct/range {v2 .. v7}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v2

    .line 430
    :goto_e
    sget-boolean v0, Lorg/mvel2/MVEL;->INVOKED_METHOD_EXCEPTIONS_BUBBLE:Z

    if-eqz v0, :cond_15

    .line 431
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_14

    .line 432
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 435
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 439
    :cond_15
    new-instance v2, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v7, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {v3, v4, v5, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v5, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object v7, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct/range {v2 .. v7}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw v2
.end method

.method private getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .line 496
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lorg/mvel2/ParserContext;->getVarOrInputTypeOrNull(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 497
    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrongTyping()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    iput-object v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 501
    :cond_1
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    if-eqz v0, :cond_5

    .line 502
    const-string/jumbo v0, "this"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;

    invoke-direct {p1}, Lorg/mvel2/optimizers/impl/refl/nodes/ThisValueAccessor;-><init>()V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 504
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    return-object p1

    .line 506
    :cond_2
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_5

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 509
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolverFactory;->isIndexedFactory()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isTarget(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 511
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->variableIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p1, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedVariableAccessor;-><init>(I)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 513
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    if-nez p1, :cond_3

    .line 515
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->setIndexedVariableResolver(ILorg/mvel2/integration/VariableResolver;)Lorg/mvel2/integration/VariableResolver;

    .line 518
    :cond_3
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, v0}, Lorg/mvel2/integration/VariableResolverFactory;->getIndexedVariableResolver(I)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 521
    :cond_4
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;

    invoke-direct {p1, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/VariableAccessor;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 523
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p1, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object p1

    invoke-interface {p1}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 531
    :cond_5
    instance-of v0, p1, Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 532
    sget-boolean v4, Lorg/mvel2/MVEL;->COMPILER_OPT_SUPPORT_JAVA_STYLE_CLASS_LITERALS:Z

    if-eqz v4, :cond_6

    const-string v4, "class"

    .line 533
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-object p1

    .line 537
    :cond_6
    move-object v4, p1

    check-cast v4, Ljava/lang/Class;

    move v5, v1

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    :goto_1
    move v5, v3

    goto :goto_2

    .line 545
    :cond_8
    iget-object v4, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    goto :goto_1

    .line 548
    :goto_2
    invoke-static {v4}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 549
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;

    invoke-static {v4}, Lorg/mvel2/integration/PropertyHandlerFactory;->getPropertyHandler(Ljava/lang/Class;)Lorg/mvel2/integration/PropertyHandler;

    move-result-object v1

    invoke-direct {v0, p2, v4, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/integration/PropertyHandler;)V

    .line 550
    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 551
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v0, p1, p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz v4, :cond_a

    .line 554
    invoke-static {v4, p2}, Lorg/mvel2/util/PropertyTools;->getFieldOrAccessor(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v6

    goto :goto_3

    :cond_a
    move-object v6, v2

    :goto_3
    if-eqz v6, :cond_b

    if-eqz v5, :cond_b

    .line 556
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_b

    move-object v6, v2

    .line 562
    :cond_b
    instance-of v5, v6, Ljava/lang/reflect/Method;

    const-string v7, "$"

    if-eqz v5, :cond_13

    if-eqz p1, :cond_c

    .line 564
    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    sget-object v1, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    .line 566
    :cond_c
    :goto_4
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullPropertyHandler()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 567
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessorNH;

    move-object v1, v6

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullPropertyHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessorNH;-><init>(Ljava/lang/reflect/Method;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v2, :cond_11

    .line 568
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullPropertyHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v1, p1, v2}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_6

    .line 571
    :cond_d
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;

    move-object v1, v6

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-direct {v0, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    .line 592
    :goto_5
    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 594
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 596
    new-instance v1, Lorg/mvel2/CompileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name collision between innerclass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; and bean accessor: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->tkStart:I

    invoke-direct {v1, p1, p2, v2}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    :catch_1
    :cond_e
    throw v0

    .line 575
    :catch_2
    move-object v0, v6

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-static {v0}, Lorg/mvel2/util/ParseTools;->determineActualTargetMethod(Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 581
    sget-object p2, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->EMPTYARG:[Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 583
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullPropertyHandler()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 584
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessorNH;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessorNH;-><init>(Ljava/lang/reflect/Method;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez p2, :cond_10

    .line 585
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object p2

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p2, v0, p1, v1}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    goto :goto_6

    .line 588
    :cond_f
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;

    invoke-direct {p1, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/GetterAccessor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    :cond_10
    move-object v2, p2

    .line 605
    :cond_11
    :goto_6
    check-cast v6, Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/ReflectionUtil;->toNonPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    return-object v2

    .line 578
    :cond_12
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not access field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_13
    if-eqz v6, :cond_1a

    .line 609
    move-object p2, v6

    check-cast p2, Ljava/lang/reflect/Field;

    .line 611
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_15

    .line 612
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullPropertyHandler()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 615
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessorNH;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessorNH;-><init>(Ljava/lang/reflect/Field;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v0, :cond_19

    .line 616
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v1, p1, v2}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 619
    :cond_14
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;

    invoke-direct {p1, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_7

    :cond_15
    if-eqz p1, :cond_16

    .line 623
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 624
    :cond_16
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullPropertyHandler()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 625
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessorNH;-><init>(Ljava/lang/reflect/Field;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v2, :cond_18

    .line 626
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v0

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, v1, p1, v2}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    .line 629
    :cond_17
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;

    invoke-direct {p1, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    :cond_18
    move-object v0, v2

    .line 632
    :cond_19
    :goto_7
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/ReflectionUtil;->toNonPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    return-object v0

    .line 635
    :cond_1a
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_1c

    move-object v4, p1

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->nullSafe:Z

    if-eqz v5, :cond_1c

    .line 636
    :cond_1b
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;

    invoke-direct {p1, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 637
    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1c
    if-eqz p1, :cond_1d

    .line 639
    const-string/jumbo v4, "length"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 640
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayLength;

    invoke-direct {p2}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayLength;-><init>()V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 641
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 643
    :cond_1d
    sget-object v4, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 644
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    sget-object v0, Lorg/mvel2/compiler/AbstractParser;->LITERALS:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    return-object p2

    .line 648
    :cond_1e
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->tryStaticAccess()Ljava/lang/Object;

    move-result-object v4

    .line 649
    iput-boolean v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->staticAccess:Z

    if-eqz v4, :cond_21

    .line 651
    instance-of p1, v4, Ljava/lang/Class;

    if-eqz p1, :cond_1f

    .line 652
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {p1, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    return-object v4

    .line 655
    :cond_1f
    instance-of p1, v4, Ljava/lang/reflect/Field;

    if-eqz p1, :cond_20

    .line 656
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;

    check-cast v4, Ljava/lang/reflect/Field;

    invoke-direct {p1, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticVarAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 657
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 660
    :cond_20
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {p1, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    return-object v4

    :cond_21
    if-eqz v0, :cond_28

    .line 665
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 666
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v4, v1

    move v5, v3

    :goto_8
    if-ge v5, v4, :cond_27

    aget-object v6, v1, v5

    .line 667
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 668
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    if-eqz p2, :cond_22

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {p2}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result p2

    if-eqz p2, :cond_25

    goto :goto_9

    :cond_22
    sget-boolean p2, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_NAKED_METH_CALL:Z

    if-eqz p2, :cond_25

    .line 669
    :goto_9
    sget-object p2, Lorg/mvel2/util/ParseTools;->EMPTY_OBJ_ARR:[Ljava/lang/Object;

    invoke-virtual {v6, v2, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 670
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullMethodHandler()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 671
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;

    new-array v1, v3, [Lorg/mvel2/compiler/ExecutableStatement;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object v2

    invoke-direct {v0, v6, v1, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;-><init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez p2, :cond_23

    .line 673
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object p2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p2, v0, p1, v1}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_23
    return-object p2

    .line 676
    :cond_24
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;

    new-array v0, v3, [Lorg/mvel2/compiler/ExecutableStatement;

    invoke-direct {p1, v6, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;-><init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    return-object p2

    .line 681
    :cond_25
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {p1, v6}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    return-object v6

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 688
    :cond_27
    :try_start_2
    iget-object v1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v1, v0, v2}, Lorg/mvel2/util/ParseTools;->findClass(Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/String;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object v0

    .line 689
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {v1, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    .line 696
    :cond_28
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->getParserConfiguration()Lorg/mvel2/ParserConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mvel2/ParserConfiguration;->isAllowNakedMethCall()Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_a

    :cond_29
    sget-boolean v0, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_NAKED_METH_CALL:Z

    if-eqz v0, :cond_2a

    .line 697
    :goto_a
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catch_3
    :cond_2a
    if-nez p1, :cond_2b

    .line 702
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unresolvable property or identifier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, v0, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 705
    :cond_2b
    new-instance v0, Lorg/mvel2/PropertyAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; in class: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {v0, p1, p2, v1, v2}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw v0
.end method

.method private getBeanPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 485
    invoke-static {}, Lorg/mvel2/integration/GlobalListenerFactory;->hasGetListeners()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p1, p2, v0}, Lorg/mvel2/integration/GlobalListenerFactory;->notifyGetListeners(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;)V

    .line 487
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/Notify;

    invoke-direct {v0, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/Notify;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 492
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getCollectionProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 720
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 721
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 724
    iput-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    if-nez p1, :cond_1

    return-object p2

    .line 727
    :cond_1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 729
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 731
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const-string/jumbo v4, "unterminated \'[\'"

    if-eq v2, v3, :cond_d

    const/16 v2, 0x5d

    .line 736
    invoke-virtual {p0, v2}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result v2

    if-nez v2, :cond_c

    .line 739
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    const/4 v3, 0x0

    .line 746
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v3

    goto :goto_0

    :catch_0
    move-object v4, p2

    move v5, v1

    :goto_0
    if-eqz v5, :cond_2

    .line 756
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v4, v6}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lorg/mvel2/compiler/ExecutableStatement;

    iget-object v6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 757
    invoke-interface {v4, v6, v6, v7}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Lorg/mvel2/CompileException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 760
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-virtual {p1, p2}, Lorg/mvel2/CompileException;->setExpr([C)V

    .line 761
    invoke-virtual {p1, v0}, Lorg/mvel2/CompileException;->setCursor(I)V

    .line 762
    throw p1

    :cond_2
    move-object v0, v4

    move-object v4, p2

    .line 766
    :goto_1
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 768
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_4

    if-eqz v5, :cond_3

    .line 770
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;

    invoke-direct {v1, v4, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_2

    .line 773
    :cond_3
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 776
    :goto_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 778
    :cond_4
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_6

    if-eqz v5, :cond_5

    .line 780
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;

    invoke-direct {v1, v4, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_3

    .line 783
    :cond_5
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 786
    :goto_3
    check-cast p1, Ljava/util/List;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 788
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz v5, :cond_7

    .line 790
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;

    invoke-direct {p2, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_4

    .line 793
    :cond_7
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 796
    :goto_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 798
    :cond_8
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_a

    if-eqz v5, :cond_9

    .line 800
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;

    invoke-direct {p2, v4}, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_5

    .line 803
    :cond_9
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p2, v1}, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 806
    :goto_5
    check-cast p1, Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 808
    :cond_a
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_b

    .line 809
    new-instance p2, Lorg/mvel2/ast/TypeDescriptor;

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {p2, v0, v1, v2, v3}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 810
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 811
    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p1, p2, v0, v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p1

    .line 812
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {p2, p1}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 816
    :cond_b
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal use of []: unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p2, p1, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 737
    :cond_c
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p1, v4, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 732
    :cond_d
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p1, v4, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private getCollectionPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .line 822
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 823
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanPropertyAO(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    const/4 p2, 0x0

    .line 826
    iput-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    if-nez p1, :cond_1

    return-object p2

    .line 829
    :cond_1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 831
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 833
    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const-string/jumbo v4, "unterminated \'[\'"

    if-eq v2, v3, :cond_11

    const/16 v2, 0x5d

    .line 838
    invoke-virtual {p0, v2}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result v2

    if-nez v2, :cond_10

    .line 841
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v4, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr v4, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    const/4 v0, 0x0

    .line 848
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v0

    goto :goto_0

    :catch_0
    move-object v3, p2

    move v4, v1

    :goto_0
    if-eqz v4, :cond_2

    .line 857
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iget-object v5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v3, v5}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lorg/mvel2/compiler/ExecutableStatement;

    iget-object v5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 858
    invoke-interface {v3, v5, v5, v6}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v3

    move-object v3, p2

    .line 861
    :goto_1
    iget v6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v6, v1

    iput v6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 863
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 864
    const-class v0, Ljava/util/Map;

    invoke-static {v0}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 865
    invoke-direct {p0, v2, p1, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    if-eqz v4, :cond_4

    .line 869
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;

    invoke-direct {v0, v3, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_2

    .line 872
    :cond_4
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 875
    :goto_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 878
    :cond_5
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_8

    .line 879
    const-class v0, Ljava/util/List;

    invoke-static {v0}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 880
    invoke-direct {p0, v2, p1, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    if-eqz v4, :cond_7

    .line 884
    new-instance v0, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;

    invoke-direct {v0, v3, p2}, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_3

    .line 887
    :cond_7
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 890
    :goto_3
    check-cast p1, Ljava/util/List;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 893
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 894
    const-class p2, Ljava/lang/reflect/Array;

    invoke-static {p2}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 895
    invoke-direct {p0, v2, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_9
    if-eqz v4, :cond_a

    .line 899
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;

    invoke-direct {p2, v3}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_4

    .line 902
    :cond_a
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 905
    :goto_4
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 908
    :cond_b
    instance-of p2, p1, Ljava/lang/CharSequence;

    if-eqz p2, :cond_e

    .line 909
    const-class p2, Ljava/lang/CharSequence;

    invoke-static {p2}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 910
    invoke-direct {p0, v2, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_c
    if-eqz v4, :cond_d

    .line 914
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;

    invoke-direct {p2, v3}, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessorNest;-><init>(Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_5

    .line 917
    :cond_d
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessor;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/IndexedCharSeqAccessor;-><init>(I)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 920
    :goto_5
    check-cast p1, Ljava/lang/CharSequence;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 924
    :cond_e
    new-instance p2, Lorg/mvel2/ast/TypeDescriptor;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr v3, v2

    invoke-direct {p2, v1, v2, v3, v0}, Lorg/mvel2/ast/TypeDescriptor;-><init>([CIII)V

    .line 925
    invoke-virtual {p2}, Lorg/mvel2/ast/TypeDescriptor;->isArray()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 926
    check-cast p1, Ljava/lang/Class;

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {p1, p2, v0, v1}, Lorg/mvel2/ast/TypeDescriptor;->getClassReference(Ljava/lang/Class;Lorg/mvel2/ast/TypeDescriptor;Lorg/mvel2/integration/VariableResolverFactory;Lorg/mvel2/ParserContext;)Ljava/lang/Class;

    move-result-object p1

    .line 927
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;

    invoke-direct {p2, p1}, Lorg/mvel2/optimizers/impl/refl/nodes/StaticReferenceAccessor;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 931
    :cond_f
    new-instance p2, Lorg/mvel2/CompileException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal use of []: unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p2, p1, v0, v1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p2

    .line 839
    :cond_10
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p1, v4, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1

    .line 834
    :cond_11
    new-instance p1, Lorg/mvel2/CompileException;

    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p1, v4, p2, v0}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p1
.end method

.method private getMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13

    .line 946
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 947
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    aget-char v3, v1, v0

    const/16 v4, 0x28

    if-ne v3, v4, :cond_0

    .line 948
    invoke-static {v1, v0, v4}, Lorg/mvel2/util/ParseTools;->balancedCapture([CIC)I

    move-result v1

    iput v1, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v3, v1, v0

    if-le v3, v2, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v5, v0, 0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    invoke-direct {v3, v4, v5, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_0
    const-string v3, ""

    .line 950
    :goto_0
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 956
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 957
    sget-object v0, Lorg/mvel2/util/ParseTools;->EMPTY_OBJ_ARR:[Ljava/lang/Object;

    .line 958
    sget-object v2, Lorg/mvel2/util/ParseTools;->EMPTY_CLS_ARR:[Ljava/lang/Class;

    move-object v10, v0

    move-object v12, v1

    move-object v11, v2

    :goto_1
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    goto/16 :goto_7

    .line 962
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/mvel2/util/ParseTools;->parseParameterList([CII)Ljava/util/List;

    move-result-object v0

    .line 963
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/mvel2/compiler/ExecutableStatement;

    .line 964
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    .line 965
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/Class;

    move v7, v3

    .line 967
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 969
    :try_start_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [C

    iget-object v9, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v8, v9}, Lorg/mvel2/util/ParseTools;->subCompileExpression([CLorg/mvel2/ParserContext;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lorg/mvel2/compiler/ExecutableStatement;

    aput-object v8, v2, v7

    iget-object v9, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v10, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 970
    invoke-interface {v8, v9, v9, v10}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v5, v7
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_0

    .line 976
    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/mvel2/compiler/ExecutableStatement;->isExplicitCast()Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v2, v7

    invoke-interface {v8}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 973
    iget-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-static {p1, p2, v0}, Lorg/mvel2/util/ErrorUtil;->rewriteIfNeeded(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object p1

    throw p1

    .line 979
    :cond_3
    iget-object v0, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-virtual {v0}, Lorg/mvel2/ParserContext;->isStrictTypeEnforcement()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    if-ge v3, v4, :cond_9

    .line 981
    aget-object v0, v2, v3

    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v3

    .line 982
    aget-object v0, v2, v3

    instance-of v1, v0, Lorg/mvel2/compiler/ExecutableLiteral;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/mvel2/compiler/ExecutableLiteral;

    invoke-virtual {v0}, Lorg/mvel2/compiler/ExecutableLiteral;->getLiteral()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 983
    const-class v0, Lorg/mvel2/util/NullType;

    aput-object v0, v6, v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    if-ge v3, v4, :cond_9

    .line 989
    aget-object v0, v6, v3

    if-eqz v0, :cond_6

    goto :goto_6

    .line 991
    :cond_6
    aget-object v0, v2, v3

    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    const-class v7, Ljava/lang/Object;

    if-ne v0, v7, :cond_8

    .line 992
    aget-object v0, v5, v3

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_5
    aput-object v0, v6, v3

    goto :goto_6

    .line 995
    :cond_8
    aget-object v0, v2, v3

    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownEgressType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v6, v3

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move-object v12, v2

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_1

    .line 1001
    :goto_7
    invoke-direct/range {v7 .. v12}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;[Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;[Lorg/mvel2/compiler/ExecutableStatement;)Ljava/lang/Object;
    .locals 9

    .line 1005
    iget-boolean v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->isResolveable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1006
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p2}, Lorg/mvel2/integration/VariableResolverFactory;->getVariableResolver(Ljava/lang/String;)Lorg/mvel2/integration/VariableResolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/mvel2/integration/VariableResolver;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1007
    instance-of v3, v0, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 1008
    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    .line 1009
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1011
    :cond_0
    instance-of v3, v0, Lorg/mvel2/util/MethodStub;

    if-eqz v3, :cond_2

    .line 1012
    check-cast v0, Lorg/mvel2/util/MethodStub;

    invoke-virtual {v0}, Lorg/mvel2/util/MethodStub;->getClassReference()Ljava/lang/Class;

    move-result-object p1

    .line 1013
    invoke-virtual {v0}, Lorg/mvel2/util/MethodStub;->getMethodName()Ljava/lang/String;

    move-result-object p2

    .line 1031
    :goto_0
    iput-boolean v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    :cond_1
    move-object v4, p2

    goto :goto_2

    .line 1015
    :cond_2
    instance-of p4, v0, Lorg/mvel2/ast/FunctionInstance;

    if-eqz p4, :cond_4

    .line 1016
    check-cast v0, Lorg/mvel2/ast/FunctionInstance;

    .line 1017
    invoke-virtual {v0}, Lorg/mvel2/ast/FunctionInstance;->getFunction()Lorg/mvel2/ast/Function;

    move-result-object p4

    invoke-virtual {p4}, Lorg/mvel2/ast/Function;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 1018
    invoke-direct {p0, p1, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->getBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1019
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;

    invoke-direct {p2, p5}, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFunctionAccessor;-><init>([Lorg/mvel2/compiler/Accessor;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_1

    .line 1022
    :cond_3
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;

    invoke-direct {p2, v0, p5}, Lorg/mvel2/optimizers/impl/refl/nodes/FunctionAccessor;-><init>(Lorg/mvel2/ast/FunctionInstance;[Lorg/mvel2/compiler/Accessor;)V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1024
    :goto_1
    iget-object p2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v0, p1, p2, p4, p3}, Lorg/mvel2/ast/FunctionInstance;->call(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1027
    :cond_4
    new-instance p3, Lorg/mvel2/OptimizationFailure;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "attempt to optimize a method call for a reference that does not point to a method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (reference is type: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_5

    .line 1028
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lorg/mvel2/OptimizationFailure;-><init>(Ljava/lang/String;)V

    throw p3

    :goto_2
    if-nez p1, :cond_7

    .line 1034
    iget-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    if-eqz p2, :cond_6

    goto :goto_3

    .line 1035
    :cond_6
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "null pointer or function not found: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p4, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    .line 1039
    :cond_7
    :goto_3
    iget-object p2, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    if-eqz p2, :cond_8

    move-object v5, p2

    move v8, v2

    goto :goto_5

    :cond_8
    instance-of p2, p1, Ljava/lang/Class;

    if-eqz p2, :cond_9

    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    :goto_4
    move v8, p2

    move-object v5, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 1040
    :goto_5
    iput-object v1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 1052
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, p4

    invoke-static/range {v3 .. v8}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 1053
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    goto :goto_6

    :cond_a
    move-object p4, v1

    :goto_6
    if-nez p2, :cond_b

    if-eqz v8, :cond_b

    .line 1060
    const-class p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-static {v3, v4, v5, p2, v2}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;Z)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1061
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    :cond_b
    if-nez p2, :cond_c

    if-eqz p1, :cond_c

    .line 1066
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v5, v0, :cond_c

    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_c

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 1068
    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/mvel2/util/ParseTools;->getBestCandidate([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/reflect/Method;ZZ)Ljava/lang/reflect/Method;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1069
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    :cond_c
    if-nez p2, :cond_11

    .line 1074
    new-instance p2, Lorg/mvel2/util/StringAppender;

    invoke-direct {p2}, Lorg/mvel2/util/StringAppender;-><init>()V

    .line 1075
    const-string/jumbo p4, "size"

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_d

    array-length p4, p3

    if-nez p4, :cond_d

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result p4

    if-eqz p4, :cond_d

    .line 1076
    new-instance p2, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayLength;

    invoke-direct {p2}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayLength;-><init>()V

    invoke-direct {p0, p2}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1077
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1080
    :cond_d
    :goto_7
    array-length p1, p3

    if-ge v2, p1, :cond_10

    .line 1081
    aget-object p1, p3, v2

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_e
    move-object p1, v1

    :goto_8
    invoke-virtual {p2, p1}, Lorg/mvel2/util/StringAppender;->append(Ljava/lang/String;)Lorg/mvel2/util/StringAppender;

    .line 1082
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    if-ge v2, p1, :cond_f

    const-string p1, ", "

    invoke-virtual {p2, p1}, Lorg/mvel2/util/StringAppender;->append(Ljava/lang/String;)Lorg/mvel2/util/StringAppender;

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1085
    :cond_10
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "unable to resolve method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {p2}, Lorg/mvel2/util/StringAppender;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") [arglength="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p4, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    iget-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p1, p2, p3, p4, p5}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1

    :cond_11
    if-eqz p5, :cond_14

    .line 1091
    :goto_9
    array-length v0, p5

    if-ge v2, v0, :cond_15

    .line 1092
    aget-object v0, p5, v2

    .line 1093
    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->getKnownIngressType()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_12

    .line 1094
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    invoke-static {p4, v2, v3}, Lorg/mvel2/util/Varargs;->paramTypeVarArgsSafe([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/mvel2/compiler/ExecutableStatement;->setKnownIngressType(Ljava/lang/Class;)V

    .line 1095
    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->computeTypeConversionRule()V

    .line 1097
    :cond_12
    invoke-interface {v0}, Lorg/mvel2/compiler/ExecutableStatement;->isConvertableIngressEgress()Z

    move-result v0

    if-nez v0, :cond_13

    .line 1098
    aget-object v0, p3, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    invoke-static {p4, v2, v3}, Lorg/mvel2/util/Varargs;->paramTypeVarArgsSafe([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, v2

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1106
    :cond_14
    :goto_a
    array-length v0, p3

    if-ge v2, v0, :cond_15

    .line 1107
    aget-object v0, p3, v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v3

    invoke-static {p4, v2, v3}, Lorg/mvel2/util/Varargs;->paramTypeVarArgsSafe([Ljava/lang/Class;IZ)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1110
    :cond_15
    invoke-static {v5, p2}, Lorg/mvel2/util/ParseTools;->getWidenedTarget(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz p1, :cond_16

    .line 1111
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    invoke-static {p4, p3, v1}, Lorg/mvel2/util/Varargs;->normalizeArgsForVarArgs([Ljava/lang/Class;[Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1113
    :cond_16
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasNullMethodHandler()Z

    move-result p3

    if-eqz p3, :cond_17

    .line 1114
    new-instance p3, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;

    check-cast p5, [Lorg/mvel2/compiler/ExecutableStatement;

    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object p4

    invoke-direct {p3, v0, p5, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessorNH;-><init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, p3}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    if-nez v1, :cond_18

    .line 1115
    invoke-static {}, Lorg/mvel2/integration/PropertyHandlerFactory;->getNullMethodHandler()Lorg/mvel2/integration/PropertyHandler;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {p3, p2, p1, p4}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    .line 1118
    :cond_17
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;

    check-cast p5, [Lorg/mvel2/compiler/ExecutableStatement;

    invoke-direct {p1, v0, p5}, Lorg/mvel2/optimizers/impl/refl/nodes/MethodAccessor;-><init>(Ljava/lang/reflect/Method;[Lorg/mvel2/compiler/ExecutableStatement;)V

    invoke-direct {p0, p1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1124
    :cond_18
    :goto_b
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lorg/mvel2/util/ReflectionUtil;->toNonPrimitiveType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    return-object v1
.end method

.method private getRootNode()Lorg/mvel2/compiler/AccessorNode;
    .locals 1

    .line 1246
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object v0
.end method

.method private getWithProperty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    .line 471
    iput-object v0, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->currType:Ljava/lang/Class;

    .line 472
    iget v1, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    if-ne v1, v2, :cond_0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 474
    :goto_1
    iget v0, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    add-int/lit8 v5, v0, 0x1

    .line 475
    iget-object v1, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget v2, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    const/16 v4, 0x7b

    iget-object v6, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-static {v1, v0, v2, v4, v6}, Lorg/mvel2/util/ParseTools;->balancedCaptureWithLineAccounting([CIICLorg/mvel2/ParserContext;)I

    move-result v0

    .line 477
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;

    iget-object v2, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    iget-object v4, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    add-int/lit8 v6, v0, 0x1

    iput v6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int v6, v0, v5

    iget-object v7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ingressType:Ljava/lang/Class;

    invoke-direct/range {v1 .. v7}, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;-><init>(Lorg/mvel2/ParserContext;Ljava/lang/String;[CIILjava/lang/Class;)V

    .line 478
    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 479
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    iget-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-virtual {v1, p1, v0, v2}, Lorg/mvel2/optimizers/impl/refl/nodes/WithAccessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private propHandler(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1341
    invoke-static {p3}, Lorg/mvel2/integration/PropertyHandlerFactory;->getPropertyHandler(Ljava/lang/Class;)Lorg/mvel2/integration/PropertyHandler;

    move-result-object v0

    .line 1342
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;

    invoke-direct {v1, p1, p3, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1343
    iget-object p3, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/integration/PropertyHandler;->getProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private setRootNode(Lorg/mvel2/compiler/AccessorNode;)V
    .locals 0

    .line 1242
    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    iput-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-void
.end method


# virtual methods
.method public getEgressType()Ljava/lang/Class;
    .locals 1

    .line 1333
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    return-object v0
.end method

.method public getResultOptPass()Ljava/lang/Object;
    .locals 1

    .line 1250
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;
    .locals 1

    .line 1129
    iget-object v0, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    invoke-interface {v0, p1, p2, p3}, Lorg/mvel2/compiler/Accessor;->getValue(Ljava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public isLiteralOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public optimizeAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Class;)Lorg/mvel2/compiler/Accessor;
    .locals 0

    const/4 p8, 0x0

    .line 152
    iput-object p8, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    iput-object p8, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    .line 153
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 154
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int/2addr p4, p3

    .line 155
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    sub-int/2addr p4, p3

    .line 156
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    const/4 p2, 0x1

    .line 159
    iput-boolean p2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    .line 160
    iput-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 161
    iput-object p6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    .line 162
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 163
    iput-object p9, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ingressType:Ljava/lang/Class;

    .line 165
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 167
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->compileGetChain()Lorg/mvel2/compiler/Accessor;

    move-result-object p1

    return-object p1
.end method

.method public optimizeCollection(Lorg/mvel2/ParserContext;Ljava/lang/Object;Ljava/lang/Class;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/Accessor;
    .locals 0

    .line 1202
    iput p5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    iput p5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    add-int p8, p5, p6

    .line 1203
    iput p8, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 1204
    iput-object p3, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    .line 1205
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 1206
    iput-object p9, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 1207
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 1209
    invoke-direct {p0, p2, p3}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->_getAccessor(Ljava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;

    move-result-object p3

    if-eqz p4, :cond_0

    .line 1211
    iget p2, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    if-le p2, p5, :cond_0

    move-object p2, p1

    .line 1212
    new-instance p1, Lorg/mvel2/optimizers/impl/refl/nodes/Union;

    iget p5, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    invoke-direct/range {p1 .. p6}, Lorg/mvel2/optimizers/impl/refl/nodes/Union;-><init>(Lorg/mvel2/ParserContext;Lorg/mvel2/compiler/Accessor;[CII)V

    return-object p1

    :cond_0
    return-object p3
.end method

.method public optimizeObjectCreation(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/Accessor;
    .locals 0

    add-int/2addr p4, p3

    .line 1222
    iput p4, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 1223
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 1224
    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    .line 1227
    :try_start_0
    invoke-direct {p0, p2, p5, p7}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->compileConstructor([CLjava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Lorg/mvel2/compiler/AccessorNode;

    move-result-object p1
    :try_end_0
    .catch Lorg/mvel2/CompileException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1236
    new-instance p3, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "could not create constructor: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p3, p4, p2, p5, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 1233
    new-instance p3, Lorg/mvel2/CompileException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "could not resolve class: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget p5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p3, p4, p2, p5, p1}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;)V

    throw p3

    :catch_2
    move-exception p1

    .line 1230
    iget p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-static {p1, p2, p3}, Lorg/mvel2/util/ErrorUtil;->rewriteIfNeeded(Lorg/mvel2/CompileException;[CI)Lorg/mvel2/CompileException;

    move-result-object p1

    throw p1
.end method

.method public optimizeSetAccessor(Lorg/mvel2/ParserContext;[CIILjava/lang/Object;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;ZLjava/lang/Object;Ljava/lang/Class;)Lorg/mvel2/compiler/Accessor;
    .locals 5

    .line 173
    const-class p8, Ljava/lang/reflect/Array;

    const-class v0, Ljava/util/List;

    const-class v1, Ljava/util/Map;

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->currNode:Lorg/mvel2/compiler/AccessorNode;

    iput-object v2, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    .line 174
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    .line 175
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    const/4 v3, 0x1

    .line 176
    iput-boolean v3, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->first:Z

    add-int/2addr p3, p4

    .line 178
    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 179
    iput-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ctx:Ljava/lang/Object;

    .line 180
    iput-object p6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->thisRef:Ljava/lang/Object;

    .line 181
    iput-object p7, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    .line 182
    iput-object p10, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->ingressType:Ljava/lang/Class;

    .line 186
    invoke-virtual {p0}, Lorg/mvel2/optimizers/AbstractOptimizer;->findLastUnion()I

    move-result p3

    .line 188
    new-instance p4, Lorg/mvel2/compiler/PropertyVerifier;

    iput-object p1, p0, Lorg/mvel2/compiler/AbstractParser;->pCtx:Lorg/mvel2/ParserContext;

    invoke-direct {p4, p2, p1}, Lorg/mvel2/compiler/PropertyVerifier;-><init>([CLorg/mvel2/ParserContext;)V

    const/4 p6, -0x1

    const/4 p7, 0x0

    if-eq p3, p6, :cond_0

    add-int/lit8 p6, p3, 0x1

    .line 191
    invoke-static {p2, p7, p3}, Lorg/mvel2/util/ParseTools;->subset([CII)[C

    move-result-object p3

    .line 193
    array-length v4, p2

    sub-int/2addr v4, p6

    invoke-static {p2, p6, v4}, Lorg/mvel2/util/ParseTools;->subset([CII)[C

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, v2

    :goto_0
    if-eqz p3, :cond_1

    .line 197
    iput-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    array-length p3, p3

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p3, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 199
    invoke-direct {p0}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->compileGetChain()Lorg/mvel2/compiler/Accessor;

    .line 200
    iget-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->val:Ljava/lang/Object;

    .line 203
    :cond_1
    const-string p3, "could not access property: "

    if-eqz p5, :cond_19

    .line 209
    :try_start_0
    iput-object p2, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    array-length p6, p2

    iput p6, p0, Lorg/mvel2/compiler/AbstractParser;->end:I

    iput p6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    .line 211
    iput p7, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 214
    invoke-virtual {p0}, Lorg/mvel2/compiler/AbstractParser;->skipWhitespace()V

    .line 216
    iget-boolean p6, p0, Lorg/mvel2/optimizers/AbstractOptimizer;->collection:Z

    if-eqz p6, :cond_b

    .line 217
    iget p6, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    .line 219
    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->end:I
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo p10, "unterminated \'[\'"

    if-eq p6, p7, :cond_a

    const/16 p7, 0x5d

    .line 222
    :try_start_2
    invoke-virtual {p0, p7}, Lorg/mvel2/optimizers/AbstractOptimizer;->scanTo(C)Z

    move-result p7

    if-nez p7, :cond_9

    .line 225
    new-instance p7, Ljava/lang/String;

    iget p10, p0, Lorg/mvel2/compiler/AbstractParser;->cursor:I

    sub-int/2addr p10, p6

    invoke-direct {p7, p2, p6, p10}, Ljava/lang/String;-><init>([CII)V

    .line 227
    instance-of p6, p5, Ljava/util/Map;

    if-eqz p6, :cond_3

    .line 228
    sget-boolean p6, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    if-eqz p6, :cond_2

    invoke-static {v1}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result p6

    if-eqz p6, :cond_2

    .line 229
    invoke-virtual {p0, p7, p5, v1, p9}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p3, v0

    move-object p8, p3

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object p4, v0

    move-object p10, p1

    :goto_1
    move-object p9, p4

    goto/16 :goto_b

    :catch_2
    move-exception v0

    move-object p4, v0

    move-object p10, p1

    :goto_2
    move-object p9, p4

    goto/16 :goto_c

    .line 233
    :cond_2
    move-object p6, p5

    check-cast p6, Ljava/util/Map;

    iget-object p8, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p7, p5, p8}, Lorg/mvel2/MVEL;->eval(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p4}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object p4

    iput-object p4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-static {p9, p4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p6, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;

    iget-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {p4, p7, p5}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessorNest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 238
    :goto_3
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 240
    :cond_3
    instance-of p6, p5, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    const-class p10, Ljava/lang/Integer;

    if-eqz p6, :cond_5

    .line 241
    :try_start_3
    sget-boolean p6, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    if-eqz p6, :cond_4

    invoke-static {v0}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result p6

    if-eqz p6, :cond_4

    .line 242
    invoke-virtual {p0, p7, p5, v0, p9}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_4

    .line 246
    :cond_4
    move-object p6, p5

    check-cast p6, Ljava/util/List;

    iget-object p8, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p7, p5, p8, p10}, Lorg/mvel2/MVEL;->eval(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    .line 247
    invoke-virtual {p4}, Lorg/mvel2/compiler/PropertyVerifier;->analyze()Ljava/lang/Class;

    move-result-object p4

    iput-object p4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-static {p9, p4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    .line 246
    invoke-interface {p6, p5, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;

    iget-object p5, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->returnType:Ljava/lang/Class;

    invoke-direct {p4, p7, p5}, Lorg/mvel2/optimizers/impl/refl/nodes/ListAccessorNest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 252
    :goto_4
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 254
    :cond_5
    sget-boolean p4, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    if-eqz p4, :cond_6

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 255
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p7, p5, p4, p9}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 256
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 258
    :cond_6
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->isArray()Z

    move-result p4

    if-eqz p4, :cond_8

    .line 259
    sget-boolean p4, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    if-eqz p4, :cond_7

    invoke-static {p8}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 260
    invoke-virtual {p0, p7, p5, p8, p9}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_5

    .line 264
    :cond_7
    iget-object p4, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p7, p5, p4, p10}, Lorg/mvel2/MVEL;->eval(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 265
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-static {p6}, Lorg/mvel2/util/ParseTools;->getBaseComponentType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p6

    invoke-static {p9, p6}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p6

    .line 264
    invoke-static {p5, p4, p6}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 266
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;

    invoke-direct {p4, p7}, Lorg/mvel2/optimizers/impl/refl/nodes/ArrayAccessorNest;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 268
    :goto_5
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 271
    :cond_8
    new-instance p4, Lorg/mvel2/PropertyAccessException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "cannot bind to collection property: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p7, Ljava/lang/String;

    invoke-direct {p7, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ": not a recognized collection type: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct {p4, p5, p6, p7, p1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p4

    .line 223
    :cond_9
    new-instance p4, Lorg/mvel2/PropertyAccessException;

    iget-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p4, p10, p5, p6, p1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p4

    .line 220
    :cond_a
    new-instance p4, Lorg/mvel2/PropertyAccessException;

    iget-object p5, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p6, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p4, p10, p5, p6, p1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p4

    .line 275
    :cond_b
    sget-boolean p4, Lorg/mvel2/MVEL;->COMPILER_OPT_ALLOW_OVERRIDE_ALL_PROPHANDLING:Z

    if-eqz p4, :cond_c

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lorg/mvel2/integration/PropertyHandlerFactory;->hasPropertyHandler(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 276
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p0, p4, p5, p6, p9}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 277
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 280
    :cond_c
    new-instance p4, Ljava/lang/String;

    iget p6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    invoke-direct {p4, p2, p7, p6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    .line 282
    invoke-static {}, Lorg/mvel2/integration/GlobalListenerFactory;->hasSetListeners()Z

    move-result p6

    if-eqz p6, :cond_d

    .line 283
    iget-object p6, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-static {p5, p4, p6, p9}, Lorg/mvel2/integration/GlobalListenerFactory;->notifySetListeners(Ljava/lang/Object;Ljava/lang/String;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)V

    .line 284
    new-instance p6, Lorg/mvel2/optimizers/impl/refl/nodes/Notify;

    invoke-direct {p6, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/Notify;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p6}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 287
    :cond_d
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    if-nez p9, :cond_e

    goto :goto_6

    :cond_e
    move-object v2, p10

    :goto_6
    invoke-static {p6, p4, v2}, Lorg/mvel2/util/PropertyTools;->getFieldOrWriteAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Member;

    move-result-object p6

    .line 289
    instance-of p8, p6, Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, ": to "

    const-string v1, "cannot convert type: "

    if-eqz p8, :cond_12

    .line 290
    :try_start_4
    check-cast p6, Ljava/lang/reflect/Field;

    if-eqz p9, :cond_10

    .line 292
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p4, p7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_10

    .line 293
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-static {p4, p7}, Lorg/mvel2/DataConversion;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 298
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p9, p4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p5, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 299
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFieldAccessor;

    invoke-direct {p4, p6}, Lorg/mvel2/optimizers/impl/refl/nodes/DynamicFieldAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto/16 :goto_8

    .line 294
    :cond_f
    new-instance p4, Lorg/mvel2/CompileException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p4, p5, p6, p7}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p4

    :cond_10
    if-nez p9, :cond_11

    .line 301
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result p4

    if-eqz p4, :cond_11

    .line 302
    invoke-virtual {p6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lorg/mvel2/util/PropertyTools;->getPrimitiveInitialValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p5, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 303
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;

    invoke-direct {p4, p6}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto/16 :goto_8

    .line 306
    :cond_11
    invoke-virtual {p6, p5, p9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;

    invoke-direct {p4, p6}, Lorg/mvel2/optimizers/impl/refl/nodes/FieldAccessor;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto/16 :goto_8

    :cond_12
    if-eqz p6, :cond_16

    .line 311
    check-cast p6, Ljava/lang/reflect/Method;

    if-eqz p9, :cond_14

    .line 313
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    aget-object p4, p4, p7

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p8

    invoke-virtual {p4, p8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-nez p4, :cond_14

    .line 314
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    aget-object p4, p4, p7

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p8

    invoke-static {p4, p8}, Lorg/mvel2/DataConversion;->canConvert(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 319
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    aget-object p4, p4, p7

    invoke-static {p9, p4}, Lorg/mvel2/DataConversion;->convert(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    new-array p8, v3, [Ljava/lang/Object;

    aput-object p4, p8, p7

    invoke-virtual {p6, p5, p8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 315
    :cond_13
    new-instance p4, Lorg/mvel2/CompileException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p8

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p6

    aget-object p6, p6, p7

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p4, p5, p6, p7}, Lorg/mvel2/CompileException;-><init>(Ljava/lang/String;[CI)V

    throw p4

    :cond_14
    if-nez p9, :cond_15

    .line 321
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    aget-object p4, p4, p7

    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result p4

    if-eqz p4, :cond_15

    .line 322
    invoke-virtual {p6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p4

    aget-object p4, p4, p7

    invoke-static {p4}, Lorg/mvel2/util/PropertyTools;->getPrimitiveInitialValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    new-array p8, v3, [Ljava/lang/Object;

    aput-object p4, p8, p7

    invoke-virtual {p6, p5, p8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 325
    :cond_15
    new-array p4, v3, [Ljava/lang/Object;

    aput-object p9, p4, p7

    invoke-virtual {p6, p5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_7
    new-instance p4, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;

    invoke-direct {p4, p6}, Lorg/mvel2/optimizers/impl/refl/nodes/SetterAccessor;-><init>(Ljava/lang/reflect/Method;)V

    invoke-direct {p0, p4}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    goto :goto_8

    .line 330
    :cond_16
    instance-of p6, p5, Ljava/util/Map;

    if-eqz p6, :cond_17

    .line 332
    check-cast p5, Ljava/util/Map;

    invoke-interface {p5, p4, p9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    new-instance p5, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;

    invoke-direct {p5, p4}, Lorg/mvel2/optimizers/impl/refl/nodes/MapAccessor;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p5}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 352
    :goto_8
    iget-object p1, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->rootNode:Lorg/mvel2/compiler/AccessorNode;

    return-object p1

    .line 337
    :cond_17
    :try_start_5
    new-instance p5, Lorg/mvel2/PropertyAccessException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "could not access property ("

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ") in: "

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p5, p4, p6, p7, p1}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p5
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0

    .line 348
    :goto_9
    new-instance p4, Lorg/mvel2/PropertyAccessException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "error binding property: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p5, Ljava/lang/String;

    invoke-direct {p5, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " (value <<"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ">>::"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p9, :cond_18

    const-string/jumbo p2, "null"

    goto :goto_a

    .line 349
    :cond_18
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    :goto_a
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p7, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    move-object p9, p1

    invoke-direct/range {p4 .. p9}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p4

    :catch_3
    move-exception v0

    move-object p10, p1

    move-object p4, v0

    goto/16 :goto_1

    .line 345
    :goto_b
    new-instance p5, Lorg/mvel2/PropertyAccessException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p8, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct/range {p5 .. p10}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p5

    :catch_4
    move-exception v0

    move-object p10, p1

    move-object p4, v0

    goto/16 :goto_2

    .line 342
    :goto_c
    new-instance p5, Lorg/mvel2/PropertyAccessException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    iget-object p7, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p8, p0, Lorg/mvel2/compiler/AbstractParser;->st:I

    invoke-direct/range {p5 .. p10}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILjava/lang/Throwable;Lorg/mvel2/ParserContext;)V

    throw p5

    :cond_19
    move-object p10, p1

    .line 204
    new-instance p1, Lorg/mvel2/PropertyAccessException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    iget p5, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    iget p6, p0, Lorg/mvel2/compiler/AbstractParser;->length:I

    array-length p7, p2

    invoke-static {p6, p7}, Ljava/lang/Math;->min(II)I

    move-result p6

    invoke-direct {p3, p2, p5, p6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; parent is null: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/String;

    iget-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/mvel2/compiler/AbstractParser;->expr:[C

    iget p4, p0, Lorg/mvel2/compiler/AbstractParser;->start:I

    invoke-direct {p1, p2, p3, p4, p10}, Lorg/mvel2/PropertyAccessException;-><init>(Ljava/lang/String;[CILorg/mvel2/ParserContext;)V

    throw p1
.end method

.method public propHandlerSet(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 2

    .line 1347
    invoke-static {p3}, Lorg/mvel2/integration/PropertyHandlerFactory;->getPropertyHandler(Ljava/lang/Class;)Lorg/mvel2/integration/PropertyHandler;

    move-result-object v0

    .line 1348
    new-instance v1, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;

    invoke-direct {v1, p1, p3, v0}, Lorg/mvel2/optimizers/impl/refl/nodes/PropertyHandlerAccessor;-><init>(Ljava/lang/String;Ljava/lang/Class;Lorg/mvel2/integration/PropertyHandler;)V

    invoke-direct {p0, v1}, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->addAccessorNode(Lorg/mvel2/compiler/AccessorNode;)V

    .line 1349
    iget-object p3, p0, Lorg/mvel2/optimizers/impl/refl/ReflectiveAccessorOptimizer;->variableFactory:Lorg/mvel2/integration/VariableResolverFactory;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/mvel2/integration/PropertyHandler;->setProperty(Ljava/lang/String;Ljava/lang/Object;Lorg/mvel2/integration/VariableResolverFactory;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
