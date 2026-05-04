.class public final Landroidx/camera/camera2/pipe/core/SystemClockOffsets;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;


# instance fields
.field private final realtimeNsToMonotonicNs:J

.field private final realtimeNsToUtcMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->Companion:Landroidx/camera/camera2/pipe/core/SystemClockOffsets$Companion;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->realtimeNsToUtcMs:J

    iput-wide p3, p0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->realtimeNsToMonotonicNs:J

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final getRealtimeNsToMonotonicNs()J
    .locals 2

    .line 40
    iget-wide v0, p0, Landroidx/camera/camera2/pipe/core/SystemClockOffsets;->realtimeNsToMonotonicNs:J

    return-wide v0
.end method
