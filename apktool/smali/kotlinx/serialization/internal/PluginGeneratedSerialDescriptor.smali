.class public Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;
.implements Lkotlinx/serialization/internal/CachedNames;


# instance fields
.field private final _hashCode$delegate:Lkotlin/Lazy;

.field private added:I

.field private final childSerializers$delegate:Lkotlin/Lazy;

.field private classAnnotations:Ljava/util/List;

.field private final elementsCount:I

.field private final elementsOptionality:[Z

.field private final generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

.field private indices:Ljava/util/Map;

.field private final names:[Ljava/lang/String;

.field private final propertiesAnnotations:[Ljava/util/List;

.field private final serialName:Ljava/lang/String;

.field private final typeParameterDescriptors$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$cDPWE4SK_6AyKNo6PzcexLAZOkg(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->_hashCode_delegate$lambda$3(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lHVbRHJZFJeOCNqxR0MeP9mvMTI(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors_delegate$lambda$2(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r9j3qqfSiBWrCfo_6pw28Hdd2Aw(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 0
    invoke-static {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->childSerializers_delegate$lambda$0(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V
    .locals 1

    const-string/jumbo v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    .line 20
    iput p3, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    const/4 p1, -0x1

    .line 25
    iput p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    .line 26
    new-array p1, p3, [Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    const-string v0, "[UNINITIALIZED]"

    aput-object v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 27
    iget p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    new-array p2, p1, [Ljava/util/List;

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    .line 31
    new-array p1, p1, [Z

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    .line 34
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    .line 36
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda0;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->childSerializers$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda1;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors$delegate:Lkotlin/Lazy;

    .line 44
    new-instance p2, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$$ExternalSyntheticLambda2;-><init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->_hashCode$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final _hashCode_delegate$lambda$3(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)I
    .locals 1

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;->hashCodeImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    return p0
.end method

.method private final buildIndices()Ljava/util/Map;
    .locals 5

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    iget-object v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 88
    iget-object v3, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final childSerializers_delegate$lambda$0(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/KSerializer;
    .locals 0

    .line 36
    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/internal/GeneratedSerializer;->childSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lkotlinx/serialization/internal/PluginHelperInterfacesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method

.method private final getChildSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 36
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->childSerializers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method private final get_hashCode()I
    .locals 1

    .line 44
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->_hashCode$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final typeParameterDescriptors_delegate$lambda$2(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 4

    .line 40
    iget-object p0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->generatedSerializer:Lkotlinx/serialization/internal/GeneratedSerializer;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/serialization/internal/GeneratedSerializer;->typeParametersSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 150
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 40
    invoke-interface {v3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    .line 151
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :cond_1
    invoke-static {v0}, Lkotlinx/serialization/internal/Platform_commonKt;->compactArray(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addElement(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    iget v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->added:I

    aput-object p1, v0, v1

    .line 48
    iget-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    aput-boolean p2, p1, v1

    .line 49
    iget-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    const/4 p2, 0x0

    aput-object p2, p1, v1

    .line 50
    iget p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    .line 51
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->buildIndices()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 109
    :cond_1
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 110
    :cond_2
    check-cast p1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    .line 94
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 111
    :cond_3
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-eq p1, v1, :cond_4

    return v2

    .line 112
    :cond_4
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_7

    .line 113
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    .line 114
    :cond_5
    invoke-interface {p0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v4

    invoke-interface {v3, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1

    .line 23
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->classAnnotations:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getElementAnnotations(I)Ljava/util/List;
    .locals 1

    .line 81
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->propertiesAnnotations:[Ljava/util/List;

    .line 16
    aget-object p1, v0, p1

    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 76
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->getChildSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    .line 16
    aget-object p1, v0, p1

    .line 76
    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x3

    return p1
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->names:[Ljava/lang/String;

    .line 16
    aget-object p1, v0, p1

    return-object p1
.end method

.method public final getElementsCount()I
    .locals 1

    .line 20
    iget v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsCount:I

    return v0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 1

    .line 22
    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    return-object v0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->serialName:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNames()Ljava/util/Set;
    .locals 1

    .line 32
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->indices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeParameterDescriptors$kotlinx_serialization_core()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    .line 39
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->typeParameterDescriptors$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 97
    invoke-direct {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->get_hashCode()I

    move-result v0

    return v0
.end method

.method public isElementOptional(I)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->elementsOptionality:[Z

    .line 21
    aget-boolean p1, v0, p1

    return p1
.end method

.method public isInline()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;->$default$isInline(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    return v0
.end method

.method public isNullable()Z
    .locals 1

    .line 15
    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$-CC;->$default$isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;->toStringImpl(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
