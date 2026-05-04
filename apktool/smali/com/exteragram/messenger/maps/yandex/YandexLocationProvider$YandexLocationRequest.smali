.class public final Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/ILocationServiceProvider$ILocationRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YandexLocationRequest"
.end annotation


# instance fields
.field private desiredAccuracy:D

.field private interval:J

.field private final minDistance:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 153
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->minDistance:D

    .line 154
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->desiredAccuracy:D

    const-wide/16 v0, 0x3e8

    .line 155
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->interval:J

    return-void
.end method


# virtual methods
.method public setFastestInterval(J)V
    .locals 2

    .line 182
    iget-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->interval:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->interval:J

    return-void
.end method

.method public setInterval(J)V
    .locals 0

    .line 177
    iput-wide p1, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->interval:J

    return-void
.end method

.method public setPriority(I)V
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    const-wide v0, 0x407f400000000000L    # 500.0

    .line 170
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->desiredAccuracy:D

    return-void

    :cond_1
    const-wide v0, 0x4072c00000000000L    # 300.0

    .line 167
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->desiredAccuracy:D

    return-void

    :cond_2
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 164
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->desiredAccuracy:D

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    .line 161
    iput-wide v0, p0, Lcom/exteragram/messenger/maps/yandex/YandexLocationProvider$YandexLocationRequest;->desiredAccuracy:D

    return-void
.end method
