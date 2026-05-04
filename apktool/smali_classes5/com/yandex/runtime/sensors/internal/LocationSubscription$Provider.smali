.class public final enum Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/runtime/sensors/internal/LocationSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

.field public static final enum GPS:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

.field public static final enum NETWORK:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

.field public static final enum PASSIVE:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    const-string v1, "gps"

    const-string v2, "GPS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->GPS:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    .line 24
    new-instance v1, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    const-string v2, "network"

    const-string v4, "NETWORK"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->NETWORK:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    .line 25
    new-instance v2, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    const-string v4, "passive"

    const-string v6, "PASSIVE"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->PASSIVE:Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    const/4 v4, 0x3

    .line 22
    new-array v4, v4, [Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    aput-object v0, v4, v3

    aput-object v1, v4, v5

    aput-object v2, v4, v7

    sput-object v4, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->$VALUES:[Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;
    .locals 1

    .line 22
    const-class v0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    return-object p0
.end method

.method public static values()[Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;
    .locals 1

    .line 22
    sget-object v0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->$VALUES:[Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    invoke-virtual {v0}, [Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/yandex/runtime/sensors/internal/LocationSubscription$Provider;->value:Ljava/lang/String;

    return-object v0
.end method
