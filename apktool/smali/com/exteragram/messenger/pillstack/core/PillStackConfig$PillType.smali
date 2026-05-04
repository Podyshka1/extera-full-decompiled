.class public final enum Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/pillstack/core/PillStackConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PillType"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum BTC:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum PROXY:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum TON:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum USD:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

.field public static final enum WEATHER:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;


# instance fields
.field public final id:I


# direct methods
.method private static synthetic $values()[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;
    .locals 3

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->WEATHER:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->TON:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->BTC:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->USD:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->PROXY:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "WEATHER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->WEATHER:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 37
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "TON"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->TON:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 38
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "BTC"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->BTC:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 39
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "USD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->USD:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 40
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "CACHE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->CACHE:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 41
    new-instance v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    const-string v1, "PROXY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->PROXY:Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    .line 35
    invoke-static {}, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->$values()[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    move-result-object v0

    sput-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->$VALUES:[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;
    .locals 1

    .line 35
    const-class v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    return-object p0
.end method

.method public static values()[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;
    .locals 1

    .line 35
    sget-object v0, Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->$VALUES:[Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    invoke-virtual {v0}, [Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/exteragram/messenger/pillstack/core/PillStackConfig$PillType;

    return-object v0
.end method
