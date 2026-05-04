.class public final enum Lcom/exteragram/messenger/api/model/NowPlayingServiceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/exteragram/messenger/api/model/NowPlayingServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

.field public static final enum LAST_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

.field public static final enum NONE:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

.field public static final enum STATS_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;


# instance fields
.field private final displayName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    sget-object v1, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->NONE:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->LAST_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->STATS_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 18
    new-instance v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    sget v1, Lorg/telegram/messenger/R$string;->None:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->NONE:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    .line 19
    new-instance v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    const/4 v1, 0x1

    const-string v2, "Last.fm"

    const-string v3, "LAST_FM"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->LAST_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    .line 20
    new-instance v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    const/4 v1, 0x2

    const-string v2, "Stats.fm"

    const-string v3, "STATS_FM"

    invoke-direct {v0, v3, v1, v2}, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->STATS_FM:Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    invoke-static {}, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->$values()[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->$VALUES:[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->displayName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/api/model/NowPlayingServiceType;
    .locals 1

    const-class v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->$VALUES:[Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/api/model/NowPlayingServiceType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/exteragram/messenger/api/model/NowPlayingServiceType;->displayName:Ljava/lang/String;

    return-object v0
.end method
