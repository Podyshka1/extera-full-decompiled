.class public final Landroidx/camera/camera2/pipe/core/Log;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG_LOGGABLE:Z

.field private static final ERROR_LOGGABLE:Z

.field private static final INFO_LOGGABLE:Z

.field public static final INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

.field private static final WARN_LOGGABLE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/core/Log;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/core/Log;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    const/4 v0, 0x1

    .line 42
    sput-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->DEBUG_LOGGABLE:Z

    .line 43
    sput-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->INFO_LOGGABLE:Z

    .line 44
    sput-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->WARN_LOGGABLE:Z

    .line 46
    sput-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->ERROR_LOGGABLE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEBUG_LOGGABLE()Z
    .locals 1

    .line 41
    sget-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->DEBUG_LOGGABLE:Z

    return v0
.end method

.method public final getERROR_LOGGABLE()Z
    .locals 1

    .line 45
    sget-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->ERROR_LOGGABLE:Z

    return v0
.end method

.method public final getINFO_LOGGABLE()Z
    .locals 1

    .line 43
    sget-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->INFO_LOGGABLE:Z

    return v0
.end method

.method public final getWARN_LOGGABLE()Z
    .locals 1

    .line 44
    sget-boolean v0, Landroidx/camera/camera2/pipe/core/Log;->WARN_LOGGABLE:Z

    return v0
.end method
