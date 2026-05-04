.class public final synthetic Lcom/google/firebase/sessions/SessionData$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/SessionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "serializer"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/SessionData$$serializer;

    invoke-direct {v0}, Lcom/google/firebase/sessions/SessionData$$serializer;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/SessionData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

    .line 29
    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.google.firebase.sessions.SessionData"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string/jumbo v0, "sessionDetails"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string v0, "backgroundTime"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    const-string/jumbo v0, "processDataMap"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement(Ljava/lang/String;Z)V

    sput-object v1, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 6

    .line 29
    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    aput-object v0, v3, v2

    return-object v3
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/google/firebase/sessions/SessionData;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/sessions/SessionData;->access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-interface {v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSequentially()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    invoke-interface {v0, v1, v6, v3, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/sessions/SessionDetails;

    sget-object v6, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-interface {v0, v1, v5, v6, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/sessions/Time;

    aget-object v2, v2, v4

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const/4 v4, 0x7

    move-object v15, v2

    move-object v13, v3

    move v12, v4

    move-object v14, v5

    goto :goto_1

    :cond_0
    move v10, v5

    move v3, v6

    move-object v8, v7

    move-object v9, v8

    :goto_0
    if-eqz v10, :cond_5

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    if-eqz v11, :cond_3

    if-eq v11, v5, :cond_2

    if-ne v11, v4, :cond_1

    aget-object v11, v2, v4

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v0, v1, v4, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    or-int/lit8 v3, v3, 0x4

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {v0, v11}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    throw v0

    :cond_2
    sget-object v11, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    invoke-interface {v0, v1, v5, v11, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/sessions/Time;

    or-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_3
    sget-object v11, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    invoke-interface {v0, v1, v6, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/sessions/SessionDetails;

    or-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v10, v6

    goto :goto_0

    :cond_5
    move v12, v3

    move-object v13, v7

    move-object v14, v8

    move-object v15, v9

    :goto_1
    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/CompositeDecoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v11, Lcom/google/firebase/sessions/SessionData;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Lcom/google/firebase/sessions/SessionData;-><init>(ILcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v11
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/firebase/sessions/SessionData$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lcom/google/firebase/sessions/SessionData;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object v0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/google/firebase/sessions/SessionData;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/google/firebase/sessions/SessionData$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->beginStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/google/firebase/sessions/SessionData;->write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionData;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->endStructure(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p2, Lcom/google/firebase/sessions/SessionData;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/SessionData$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lcom/google/firebase/sessions/SessionData;)V

    return-void
.end method

.method public typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 29
    invoke-static {p0}, Lkotlinx/serialization/internal/GeneratedSerializer$DefaultImpls;->typeParametersSerializers(Lkotlinx/serialization/internal/GeneratedSerializer;)[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method
