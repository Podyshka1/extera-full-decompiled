.class public abstract Lkotlinx/serialization/json/internal/JsonNamesMapKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final JsonDeserializationNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

.field private static final JsonSerializationNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;


# direct methods
.method public static synthetic $r8$lambda$MZFfFnzrR-EJ2cxu83R-MhpDhIk(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->deserializationNamesMap$lambda$3(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->JsonDeserializationNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    .line 16
    new-instance v0, Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->JsonSerializationNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    return-void
.end method

.method private static final buildDeserializationNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;
    .locals 10

    .line 31
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->decodeCaseInsensitive(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    .line 33
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 34
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p1, :cond_6

    .line 35
    invoke-interface {p0, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementAnnotations(I)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 808
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 817
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Lkotlinx/serialization/json/JsonNames;

    if-eqz v7, :cond_0

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_1
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->singleOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/json/JsonNames;

    const-string/jumbo v5, "toLowerCase(...)"

    if-eqz v4, :cond_3

    invoke-interface {v4}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 13472
    array-length v6, v4

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v8, v4, v7

    if-eqz v1, :cond_2

    .line 36
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, p0, v8, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->buildDeserializationNamesMap$putOrThrow(Ljava/util/Map;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 40
    invoke-interface {p0, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_5

    .line 44
    invoke-static {v0, p0, v4, v3}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->buildDeserializationNamesMap$putOrThrow(Ljava/util/Map;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v0
.end method

.method private static final buildDeserializationNamesMap$putOrThrow(Ljava/util/Map;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;I)V
    .locals 4

    .line 20
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "enum value"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "property"

    .line 21
    :goto_0
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 22
    :cond_1
    new-instance v1, Lkotlinx/serialization/json/internal/JsonException;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The suggested name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, p3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is already one of the names for "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p0, p2}, Lkotlin/collections/MapsKt;->getValue(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-interface {p1, p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, " in "

    .line 23
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-direct {v1, p0}, Lkotlinx/serialization/json/internal/JsonException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static final decodeCaseInsensitive(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getDecodeEnumsCaseInsensitive()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    sget-object p1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final deserializationNamesMap(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lkotlinx/serialization/json/JsonSchemaCacheKt;->getSchemaCache(Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->JsonDeserializationNamesKey:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    new-instance v2, Lkotlinx/serialization/json/internal/JsonNamesMapKt$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt$$ExternalSyntheticLambda0;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)V

    invoke-virtual {v0, p1, v1, v2}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;->getOrPut(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method private static final deserializationNamesMap$lambda$3(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->buildDeserializationNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final getJsonElementName(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;I)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 66
    invoke-interface {p0, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getJsonNameIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->decodeCaseInsensitive(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexSlowPath(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 88
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/JsonNamingStrategy;

    .line 90
    invoke-interface {p0, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->getUseAlternativeNames()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v0

    .line 97
    :cond_2
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->getJsonNameIndexSlowPath(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final getJsonNameIndexSlowPath(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;Ljava/lang/String;)I
    .locals 0

    .line 73
    invoke-static {p1, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->deserializationNamesMap(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public static final ignoreUnknownKeys(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration;->getIgnoreUnknownKeys()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getAnnotations()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 1761
    instance-of p1, p0, Ljava/util/Collection;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1762
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/annotation/Annotation;

    .line 154
    instance-of p1, p1, Lkotlinx/serialization/json/JsonIgnoreUnknownKeys;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final namingStrategy(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/JsonNamingStrategy;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    sget-object v0, Lkotlinx/serialization/descriptors/StructureKind$CLASS;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$CLASS;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lkotlinx/serialization/json/Json;->getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonConfiguration;->getNamingStrategy()Lkotlinx/serialization/json/JsonNamingStrategy;

    :cond_0
    return-object v0
.end method
