.class public final enum Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/runtime/sensors/internal/BleSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScanApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

.field public static final enum NEW:Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

.field public static final enum OLD:Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;


# instance fields
.field private final scanApi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    const-string v1, "NewScanApi"

    const-string v2, "NEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->NEW:Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    .line 34
    new-instance v1, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    const-string v2, "OldScanApi"

    const-string v4, "OLD"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->OLD:Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    const/4 v2, 0x2

    .line 32
    new-array v2, v2, [Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->$VALUES:[Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

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

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->scanApi:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;
    .locals 1

    .line 32
    const-class v0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    return-object p0
.end method

.method public static values()[Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;
    .locals 1

    .line 32
    sget-object v0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->$VALUES:[Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    invoke-virtual {v0}, [Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yandex/runtime/sensors/internal/BleSubscription$ScanApi;->scanApi:Ljava/lang/String;

    return-object v0
.end method
