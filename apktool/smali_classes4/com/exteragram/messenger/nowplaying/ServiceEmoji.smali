.class public final enum Lcom/exteragram/messenger/nowplaying/ServiceEmoji;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

.field public static final Companion:Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;

.field public static final enum MUSIC:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

.field public static final enum SPOTIFY:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

.field public static final enum TELEGRAM:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;


# instance fields
.field private final documentId:J


# direct methods
.method private static final synthetic $values()[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    sget-object v1, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->MUSIC:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->SPOTIFY:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->TELEGRAM:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v1, 0x0

    const-wide v2, 0x492894d60000786aL    # 2.7409166175579942E44

    const-string v4, "MUSIC"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->MUSIC:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    .line 5
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v1, 0x1

    const-wide v2, 0x49296608000081e9L    # 2.832034026949377E44

    const-string v4, "SPOTIFY"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->SPOTIFY:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    .line 6
    new-instance v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    const/4 v1, 0x2

    const-wide v2, 0x49e898b500007786L    # 1.1233700727545844E48

    const-string v4, "TELEGRAM"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->TELEGRAM:Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    invoke-static {}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->$values()[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->$VALUES:[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->Companion:Lcom/exteragram/messenger/nowplaying/ServiceEmoji$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-wide p3, p0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->documentId:J

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/nowplaying/ServiceEmoji;
    .locals 1

    const-class v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;
    .locals 1

    sget-object v0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->$VALUES:[Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/nowplaying/ServiceEmoji;

    return-object v0
.end method


# virtual methods
.method public final getDocumentId()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/exteragram/messenger/nowplaying/ServiceEmoji;->documentId:J

    return-wide v0
.end method
