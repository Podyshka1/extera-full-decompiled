.class public final Lcom/google/firebase/sessions/SessionDataSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/core/Serializer;


# instance fields
.field private final sessionGenerator:Lcom/google/firebase/sessions/SessionGenerator;


# direct methods
.method public constructor <init>(Lcom/google/firebase/sessions/SessionGenerator;)V
    .locals 1

    const-string/jumbo v0, "sessionGenerator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionDataSerializer;->sessionGenerator:Lcom/google/firebase/sessions/SessionGenerator;

    return-void
.end method


# virtual methods
.method public getDefaultValue()Lcom/google/firebase/sessions/SessionData;
    .locals 6

    .line 45
    new-instance v0, Lcom/google/firebase/sessions/SessionData;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionDataSerializer;->sessionGenerator:Lcom/google/firebase/sessions/SessionGenerator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/firebase/sessions/SessionGenerator;->generateNewSession(Lcom/google/firebase/sessions/SessionDetails;)Lcom/google/firebase/sessions/SessionDetails;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDataSerializer;->getDefaultValue()Lcom/google/firebase/sessions/SessionData;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Ljava/io/InputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 49
    :try_start_0
    sget-object p2, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    invoke-static {p1}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->decodeToString([B)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-virtual {p2}, Lkotlinx/serialization/json/Json;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    sget-object v0, Lcom/google/firebase/sessions/SessionData;->Companion:Lcom/google/firebase/sessions/SessionData$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/SessionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p2, v0, p1}, Lkotlinx/serialization/json/Json;->decodeFromString(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/sessions/SessionData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 51
    new-instance p2, Landroidx/datastore/core/CorruptionException;

    const-string v0, "Cannot parse session data"

    invoke-direct {p2, v0, p1}, Landroidx/datastore/core/CorruptionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeTo(Lcom/google/firebase/sessions/SessionData;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 56
    sget-object p3, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    sget-object v0, Lcom/google/firebase/sessions/SessionData;->Companion:Lcom/google/firebase/sessions/SessionData$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/SessionData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {p3, v0, p1}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 57
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic writeTo(Ljava/lang/Object;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lcom/google/firebase/sessions/SessionData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionDataSerializer;->writeTo(Lcom/google/firebase/sessions/SessionData;Ljava/io/OutputStream;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
