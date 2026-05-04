.class public final Lcom/google/firebase/sessions/SessionData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/SessionData$$serializer;,
        Lcom/google/firebase/sessions/SessionData$Companion;
    }
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;

.field public static final Companion:Lcom/google/firebase/sessions/SessionData$Companion;


# instance fields
.field private final backgroundTime:Lcom/google/firebase/sessions/Time;

.field private final processDataMap:Ljava/util/Map;

.field private final sessionDetails:Lcom/google/firebase/sessions/SessionDetails;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/firebase/sessions/SessionData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/sessions/SessionData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/firebase/sessions/SessionData;->Companion:Lcom/google/firebase/sessions/SessionData$Companion;

    .line 29
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v3, Lcom/google/firebase/sessions/ProcessData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/ProcessData$$serializer;

    invoke-direct {v0, v2, v3}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x1

    const/4 v0, 0x1

    if-eq v0, p5, :cond_0

    .line 29
    sget-object p5, Lcom/google/firebase/sessions/SessionData$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionData$$serializer;

    invoke-virtual {p5}, Lcom/google/firebase/sessions/SessionData$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p5

    invoke-static {p1, v0, p5}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    and-int/lit8 p2, p1, 0x2

    const/4 p5, 0x0

    if-nez p2, :cond_1

    iput-object p5, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object p5, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    .line 32
    iput-object p2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    .line 33
    iput-object p3, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 30
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/google/firebase/sessions/SessionData;Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/firebase/sessions/SessionData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;->copy(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)Lcom/google/firebase/sessions/SessionData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic write$Self$com_google_firebase_firebase_sessions(Lcom/google/firebase/sessions/SessionData;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 4

    .line 29
    sget-object v0, Lcom/google/firebase/sessions/SessionData;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/google/firebase/sessions/SessionDetails$$serializer;->INSTANCE:Lcom/google/firebase/sessions/SessionDetails$$serializer;

    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    if-eqz v2, :cond_1

    :goto_0
    sget-object v2, Lcom/google/firebase/sessions/Time$$serializer;->INSTANCE:Lcom/google/firebase/sessions/Time$$serializer;

    iget-object v3, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    :goto_1
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final copy(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)Lcom/google/firebase/sessions/SessionData;
    .locals 1

    const-string/jumbo v0, "sessionDetails"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/google/firebase/sessions/SessionData;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/firebase/sessions/SessionData;-><init>(Lcom/google/firebase/sessions/SessionDetails;Lcom/google/firebase/sessions/Time;Ljava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/firebase/sessions/SessionData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/firebase/sessions/SessionData;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    iget-object v3, p1, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBackgroundTime()Lcom/google/firebase/sessions/Time;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    return-object v0
.end method

.method public final getProcessDataMap()Ljava/util/Map;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    return-object v0
.end method

.method public final getSessionDetails()Lcom/google/firebase/sessions/SessionDetails;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/SessionDetails;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/sessions/Time;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionData(sessionDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->sessionDetails:Lcom/google/firebase/sessions/SessionDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->backgroundTime:Lcom/google/firebase/sessions/Time;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processDataMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/sessions/SessionData;->processDataMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
