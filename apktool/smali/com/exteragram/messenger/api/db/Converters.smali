.class public final Lcom/exteragram/messenger/api/db/Converters;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/exteragram/messenger/api/db/Converters;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final fromBadgeDTO(Lcom/exteragram/messenger/api/dto/BadgeDTO;)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/Converters;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final fromBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final fromNowPlayingInfoDTO(Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;)Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/Converters;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toBadgeDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/BadgeDTO;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/Converters;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/dto/BadgeDTO;

    return-object p1
.end method

.method public final toBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 1

    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final toNowPlayingInfoDTO(Ljava/lang/String;)Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/exteragram/messenger/api/db/Converters;->gson:Lcom/google/gson/Gson;

    const-class v1, Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/exteragram/messenger/api/dto/NowPlayingInfoDTO;

    return-object p1
.end method
