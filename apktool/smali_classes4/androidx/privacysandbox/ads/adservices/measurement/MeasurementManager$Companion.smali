.class public final Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final obtain(Landroid/content/Context;)Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdServicesInfo.version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v2, "MeasurementManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v0

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 147
    new-instance v0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi33Ext5Impl;

    invoke-direct {v0, p1}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerApi33Ext5Impl;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {v1}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    .line 149
    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;

    new-instance v1, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion$obtain$1;

    invoke-direct {v1, p1}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager$Companion$obtain$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1, v2, v1}, Landroidx/privacysandbox/ads/adservices/internal/BackCompatManager;->getManager(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManager;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
