.class public final Landroidx/work/Constraints$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contentUriTriggers:Ljava/util/Set;

.field private requiredNetworkRequest:Landroidx/work/impl/utils/NetworkRequestCompat;

.field private requiredNetworkType:Landroidx/work/NetworkType;

.field private requiresBatteryNotLow:Z

.field private requiresCharging:Z

.field private requiresDeviceIdle:Z

.field private requiresStorageNotLow:Z

.field private triggerContentMaxDelay:J

.field private triggerContentUpdateDelay:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Landroidx/work/impl/utils/NetworkRequestCompat;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkRequest:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 322
    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    const-wide/16 v0, -0x1

    .line 327
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 328
    iput-wide v0, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    .line 329
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Constraints;
    .locals 15

    .line 536
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Landroidx/work/Constraints$Builder;->contentUriTriggers:Ljava/util/Set;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 538
    iget-wide v1, p0, Landroidx/work/Constraints$Builder;->triggerContentUpdateDelay:J

    .line 539
    iget-wide v3, p0, Landroidx/work/Constraints$Builder;->triggerContentMaxDelay:J

    move-wide v10, v1

    move-wide v12, v3

    :goto_0
    move-object v14, v0

    goto :goto_1

    .line 541
    :cond_0
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-wide/16 v1, -0x1

    move-wide v10, v1

    move-wide v12, v10

    goto :goto_0

    .line 547
    :goto_1
    iget-object v4, p0, Landroidx/work/Constraints$Builder;->requiredNetworkRequest:Landroidx/work/impl/utils/NetworkRequestCompat;

    .line 548
    iget-object v5, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 549
    iget-boolean v6, p0, Landroidx/work/Constraints$Builder;->requiresCharging:Z

    .line 550
    iget-boolean v7, p0, Landroidx/work/Constraints$Builder;->requiresDeviceIdle:Z

    .line 551
    iget-boolean v8, p0, Landroidx/work/Constraints$Builder;->requiresBatteryNotLow:Z

    .line 552
    iget-boolean v9, p0, Landroidx/work/Constraints$Builder;->requiresStorageNotLow:Z

    .line 546
    new-instance v3, Landroidx/work/Constraints;

    invoke-direct/range {v3 .. v14}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    return-object v3
.end method

.method public final setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;
    .locals 2

    const-string/jumbo v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iput-object p1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkType:Landroidx/work/NetworkType;

    .line 383
    new-instance p1, Landroidx/work/impl/utils/NetworkRequestCompat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Landroidx/work/impl/utils/NetworkRequestCompat;-><init>(Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/work/Constraints$Builder;->requiredNetworkRequest:Landroidx/work/impl/utils/NetworkRequestCompat;

    return-object p0
.end method
