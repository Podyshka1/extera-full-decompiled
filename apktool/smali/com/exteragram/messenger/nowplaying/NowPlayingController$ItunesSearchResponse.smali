.class public final Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/nowplaying/NowPlayingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItunesSearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$serializer;,
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;
    }
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlin/Lazy;

.field public static final Companion:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;


# instance fields
.field private final resultCount:I

.field private final results:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$caHQxLf036BBbASIMNd493wK1zE()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 0
    invoke-static {}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->_childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->Companion:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$Companion;

    .line 276
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->$childSerializers:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p1, 0x3

    const/4 v0, 0x3

    if-eq v0, p4, :cond_0

    .line 276
    sget-object p4, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$serializer;->INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$serializer;

    invoke-virtual {p4}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p4

    invoke-static {p1, v0, p4}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    return-void
.end method

.method private static final synthetic _childSerializers$_anonymous_()Lkotlinx/serialization/KSerializer;
    .locals 2

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$$serializer;->INSTANCE:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlin/Lazy;
    .locals 1

    .line 276
    sget-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->$childSerializers:[Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic write$Self$TMessagesProj_fullAfatRelease(Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    .line 276
    sget-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->$childSerializers:[Lkotlin/Lazy;

    const/4 v1, 0x0

    iget v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;

    iget v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    iget v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    iget-object p1, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getResults()Ljava/util/List;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItunesSearchResponse(resultCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->resultCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", results="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesSearchResponse;->results:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
