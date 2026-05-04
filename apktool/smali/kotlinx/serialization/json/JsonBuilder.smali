.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private allowComments:Z

.field private allowSpecialFloatingPointValues:Z

.field private allowStructuredMapKeys:Z

.field private allowTrailingComma:Z

.field private classDiscriminator:Ljava/lang/String;

.field private classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

.field private coerceInputValues:Z

.field private decodeEnumsCaseInsensitive:Z

.field private encodeDefaults:Z

.field private explicitNulls:Z

.field private ignoreUnknownKeys:Z

.field private isLenient:Z

.field private prettyPrint:Z

.field private prettyPrintIndent:Ljava/lang/String;

.field private serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field private useAlternativeNames:Z

.field private useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;)V
    .locals 1

    const-string/jumbo v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getEncodeDefaults()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    .line 423
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getExplicitNulls()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    .line 446
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    .line 460
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->isLenient()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    .line 481
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrint()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    .line 492
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getPrettyPrintIndent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    .line 524
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getCoerceInputValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    .line 537
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminatorMode()Lkotlinx/serialization/json/ClassDiscriminatorMode;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    .line 558
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    .line 568
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 599
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getDecodeEnumsCaseInsensitive()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    .line 608
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowTrailingComma()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    .line 624
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowComments()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    .line 643
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowSpecialFloatingPointValues()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    .line 650
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getAllowStructuredMapKeys()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    .line 659
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism()Z

    move-result v0

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    .line 668
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_json()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 21

    move-object/from16 v0, p0

    .line 672
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    if-eqz v1, :cond_2

    .line 673
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    sget-object v2, Lkotlinx/serialization/json/ClassDiscriminatorMode;->POLYMORPHIC:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "useArrayPolymorphism option can only be used if classDiscriminatorMode in a default POLYMORPHIC state."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 673
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 681
    :cond_2
    :goto_0
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    const-string v2, "    "

    if-nez v1, :cond_4

    .line 682
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Indent should not be specified when default printing mode is used"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :cond_4
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 687
    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1069
    :goto_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_6

    const/16 v4, 0xa

    if-ne v3, v4, :cond_5

    goto :goto_2

    .line 689
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 693
    :cond_7
    :goto_3
    new-instance v3, Lkotlinx/serialization/json/JsonConfiguration;

    .line 694
    iget-boolean v4, v0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    iget-boolean v5, v0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    iget-boolean v6, v0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    .line 695
    iget-boolean v7, v0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    iget-boolean v8, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    iget-boolean v9, v0, Lkotlinx/serialization/json/JsonBuilder;->explicitNulls:Z

    iget-object v10, v0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    .line 696
    iget-boolean v11, v0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    iget-boolean v12, v0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    .line 697
    iget-object v13, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    iget-boolean v14, v0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    iget-boolean v15, v0, Lkotlinx/serialization/json/JsonBuilder;->useAlternativeNames:Z

    .line 698
    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->decodeEnumsCaseInsensitive:Z

    iget-boolean v2, v0, Lkotlinx/serialization/json/JsonBuilder;->allowTrailingComma:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Lkotlinx/serialization/json/JsonBuilder;->allowComments:Z

    move/from16 v19, v1

    iget-object v1, v0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminatorMode:Lkotlinx/serialization/json/ClassDiscriminatorMode;

    const/16 v16, 0x0

    move-object/from16 v20, v1

    move/from16 v18, v2

    .line 693
    invoke-direct/range {v3 .. v20}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZLjava/lang/String;ZZLjava/lang/String;ZZLkotlinx/serialization/json/JsonNamingStrategy;ZZZLkotlinx/serialization/json/ClassDiscriminatorMode;)V

    return-object v3
.end method

.method public final getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 668
    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public final setIgnoreUnknownKeys(Z)V
    .locals 0

    .line 446
    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    return-void
.end method
