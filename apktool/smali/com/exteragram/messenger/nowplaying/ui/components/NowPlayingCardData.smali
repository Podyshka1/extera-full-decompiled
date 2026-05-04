.class public final Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;,
        Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;


# instance fields
.field private final accentColor:Ljava/lang/Integer;

.field private final backgroundColor:Ljava/lang/Integer;

.field private final coverBitmap:Landroid/graphics/Bitmap;

.field private final imageLocation:Lorg/telegram/messenger/ImageLocation;

.field private final nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

.field private userEmoji:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->Companion:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;J)V
    .locals 1

    const-string/jumbo v0, "nowPlayingDTO"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    .line 29
    iput-object p2, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    .line 30
    iput-object p3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    .line 31
    iput-object p4, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput-object p5, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    .line 33
    iput-wide p6, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    and-int/lit8 p5, p8, 0x20

    if-eqz p5, :cond_1

    const-wide/16 v0, -0x1

    move-wide v6, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    goto :goto_0

    :cond_1
    move-wide v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 27
    :goto_0
    invoke-direct/range {v0 .. v7}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;-><init>(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/graphics/Bitmap;Lorg/telegram/messenger/ImageLocation;J)V

    return-void
.end method

.method public static final create(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/tgnet/TLRPC$Document;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;)V
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->Companion:Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Companion;->create(Lcom/exteragram/messenger/api/dto/NowPlayingDTO;Lorg/telegram/tgnet/TLRPC$Document;Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData$Callback;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    iget-object v3, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    iget-wide v5, p1, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getAccentColor()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBackgroundColor()Ljava/lang/Integer;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCoverBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getImageLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public final getNowPlayingDTO()Lcom/exteragram/messenger/api/dto/NowPlayingDTO;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    return-object v0
.end method

.method public final getUserEmoji()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    invoke-virtual {v0}, Lcom/exteragram/messenger/api/dto/NowPlayingDTO;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    invoke-static {v1, v2}, Landroidx/camera/camera2/pipe/CameraTimestamp$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setUserEmoji(J)V
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NowPlayingCardData(nowPlayingDTO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->nowPlayingDTO:Lcom/exteragram/messenger/api/dto/NowPlayingDTO;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->accentColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coverBitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->coverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->imageLocation:Lorg/telegram/messenger/ImageLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userEmoji="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/exteragram/messenger/nowplaying/ui/components/NowPlayingCardData;->userEmoji:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
