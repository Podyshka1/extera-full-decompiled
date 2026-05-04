.class public abstract Lkotlinx/serialization/json/Json;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/Json$Default;
    }
.end annotation


# static fields
.field public static final Default:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field private final _schemaCache:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

.field private final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final serializersModule:Lkotlinx/serialization/modules/SerializersModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/Json$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    return-void
.end method

.method private constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 75
    iput-object p2, p0, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    .line 83
    new-instance p1, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    invoke-direct {p1}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/Json;->_schemaCache:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V

    return-void
.end method


# virtual methods
.method public final decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, p2}, Lkotlinx/serialization/json/internal/StringJsonLexerKt;->StringJsonLexer(Lkotlinx/serialization/json/Json;Ljava/lang/String;)Lkotlinx/serialization/json/internal/StringJsonLexer;

    move-result-object v4

    .line 148
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;

    sget-object v3, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-interface {p1}, Lkotlinx/serialization/DeserializationStrategy;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/AbstractJsonLexer;Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/internal/StreamingJsonDecoder$DiscriminatorHolder;)V

    .line 149
    invoke-virtual {v1, p1}, Lkotlinx/serialization/json/internal/StreamingJsonDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p1

    .line 150
    invoke-virtual {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->expectEof()V

    return-object p1
.end method

.method public final encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    new-instance v0, Lkotlinx/serialization/json/internal/JsonToStringWriter;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;-><init>()V

    .line 125
    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lkotlinx/serialization/json/internal/JsonStreamsKt;->encodeByWriter(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/InternalJsonWriter;Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->release()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonToStringWriter;->release()V

    throw p1
.end method

.method public final getConfiguration()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 1

    .line 74
    iget-object v0, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    return-object v0
.end method

.method public getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;
    .locals 1

    .line 75
    iget-object v0, p0, Lkotlinx/serialization/json/Json;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-object v0
.end method

.method public final get_schemaCache$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/DescriptorSchemaCache;
    .locals 1

    .line 78
    iget-object v0, p0, Lkotlinx/serialization/json/Json;->_schemaCache:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    return-object v0
.end method
