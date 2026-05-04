.class public final Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;
.super Landroidx/camera/camera2/pipe/compat/CameraState;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;->INSTANCE:Landroidx/camera/camera2/pipe/compat/CameraStateUnopened;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Landroidx/camera/camera2/pipe/compat/CameraState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
