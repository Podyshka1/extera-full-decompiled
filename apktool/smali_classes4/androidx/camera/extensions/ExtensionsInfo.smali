.class final Landroidx/camera/extensions/ExtensionsInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY_VENDOR_EXTENDER:Landroidx/camera/extensions/internal/VendorExtender;


# instance fields
.field private final mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

.field private final mCameraProvider:Landroidx/camera/core/CameraProvider;

.field private mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Landroidx/camera/extensions/ExtensionsInfo$1;

    invoke-direct {v0}, Landroidx/camera/extensions/ExtensionsInfo$1;-><init>()V

    sput-object v0, Landroidx/camera/extensions/ExtensionsInfo;->EMPTY_VENDOR_EXTENDER:Landroidx/camera/extensions/internal/VendorExtender;

    return-void
.end method

.method constructor <init>(Landroidx/camera/core/CameraProvider;Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCameraProvider:Landroidx/camera/core/CameraProvider;

    .line 70
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1f

    if-lt p1, v0, :cond_0

    .line 71
    new-instance p1, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    const-class v0, Landroid/hardware/camera2/CameraManager;

    .line 72
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    invoke-direct {p1, p2}, Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;-><init>(Landroid/hardware/camera2/CameraManager;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mCamera2ExtensionsInfo:Landroidx/camera/extensions/internal/Camera2ExtensionsInfo;

    .line 77
    :goto_0
    new-instance p1, Landroidx/camera/extensions/ExtensionsInfo$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/camera/extensions/ExtensionsInfo$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/extensions/ExtensionsInfo;)V

    iput-object p1, p0, Landroidx/camera/extensions/ExtensionsInfo;->mVendorExtenderFactory:Landroidx/camera/extensions/VendorExtenderFactory;

    return-void
.end method
