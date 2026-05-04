.class public final Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Constants3A"
.end annotation


# static fields
.field private static final FRAME_NUMBER_INVALID:J

.field public static final INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

.field private static final METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final METERING_REGIONS_EMPTY:[Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->INSTANCE:Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;

    const/4 v0, 0x0

    .line 329
    new-array v1, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    sput-object v1, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_EMPTY:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 336
    new-instance v2, Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/camera2/params/MeteringRectangle;

    aput-object v2, v1, v0

    sput-object v1, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

    const-wide/16 v0, -0x1

    .line 339
    invoke-static {v0, v1}, Landroidx/camera/camera2/pipe/FrameNumber;->constructor-impl(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->FRAME_NUMBER_INVALID:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMETERING_REGIONS_DEFAULT()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .line 335
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;->METERING_REGIONS_DEFAULT:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method
