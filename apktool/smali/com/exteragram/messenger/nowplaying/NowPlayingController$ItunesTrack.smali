.class public final Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/nowplaying/NowPlayingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ItunesTrack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$$serializer;,
        Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$Companion;


# instance fields
.field private final artistName:Ljava/lang/String;

.field private final artworkUrl100:Ljava/lang/String;

.field private final collectionName:Ljava/lang/String;

.field private final previewUrl:Ljava/lang/String;

.field private final trackName:Ljava/lang/String;

.field private final trackTimeMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->Companion:Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x0

    if-nez p8, :cond_0

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    return-void

    :cond_5
    iput-object p7, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    return-void
.end method

.method public static final synthetic write$Self$TMessagesProj_fullAfatRelease(Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 3

    const/4 v0, 0x0

    .line 282
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    if-eqz v1, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    if-eqz v1, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_2
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_3
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v0, 0x4

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_4
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/4 v0, 0x5

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    if-eqz v1, :cond_b

    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    iget-object p0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    invoke-interface {p1, p2, v0, v1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    iget-object p1, p1, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getArtistName()Ljava/lang/String;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public final getArtworkUrl100()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectionName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackName()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ItunesTrack(trackName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artistName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", collectionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->collectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", artworkUrl100="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->artworkUrl100:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->previewUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", trackTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/NowPlayingController$ItunesTrack;->trackTimeMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
