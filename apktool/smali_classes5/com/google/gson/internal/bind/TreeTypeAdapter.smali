.class public final Lcom/google/gson/internal/bind/TreeTypeAdapter;
.super Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;,
        Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;
    }
.end annotation


# instance fields
.field private final context:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

.field private volatile delegate:Lcom/google/gson/TypeAdapter;

.field final gson:Lcom/google/gson/Gson;

.field private final nullSafe:Z

.field private final serializer:Lcom/google/gson/JsonSerializer;

.field private final skipPastForGetDelegateAdapter:Lcom/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/google/gson/reflect/TypeToken;


# direct methods
.method public constructor <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 83
    invoke-direct/range {v0 .. v6}, Lcom/google/gson/internal/bind/TreeTypeAdapter;-><init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonSerializer;Lcom/google/gson/JsonDeserializer;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/TypeAdapterFactory;Z)V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter;-><init>()V

    .line 53
    new-instance p2, Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;-><init>(Lcom/google/gson/internal/bind/TreeTypeAdapter;Lcom/google/gson/internal/bind/TreeTypeAdapter$1;)V

    iput-object p2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->context:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    .line 69
    iput-object p1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    .line 71
    iput-object p3, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    .line 72
    iput-object p4, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    .line 73
    iput-object p5, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->skipPastForGetDelegateAdapter:Lcom/google/gson/TypeAdapterFactory;

    .line 74
    iput-boolean p6, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->nullSafe:Z

    return-void
.end method

.method private delegate()Lcom/google/gson/TypeAdapter;
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->skipPastForGetDelegateAdapter:Lcom/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->getDelegateAdapter(Lcom/google/gson/TypeAdapterFactory;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    :cond_0
    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
    .locals 3

    .line 140
    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 141
    :goto_0
    new-instance v1, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v0, v2}, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v1
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;
    .locals 3

    .line 150
    new-instance v0, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/google/gson/reflect/TypeToken;ZLjava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public getSerializationDelegate()Lcom/google/gson/TypeAdapter;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->serializer:Lcom/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->delegate()Lcom/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_0
    iget-boolean v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->nullSafe:Z

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 105
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->typeToken:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gson/internal/bind/TreeTypeAdapter;->context:Lcom/google/gson/internal/bind/TreeTypeAdapter$GsonContextImpl;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p2

    .line 109
    invoke-static {p2, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    return-void
.end method
