.class public final Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;

    invoke-direct {v0}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;-><init>()V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;->INSTANCE:Landroidx/camera/camera2/pipe/compat/Camera2CaptureSessionsModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideSessionFactory(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;
    .locals 3

    const-string v0, "androidMProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidMHighSpeedProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidNProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidPProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidExtensionProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "graphConfig"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p6}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result v0

    sget-object v1, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getEXTENSION-2uNL3no()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result v0

    const-string v2, "get(...)"

    if-eqz v0, :cond_1

    .line 78
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_0

    .line 81
    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot use Extension sessions below Android S"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p5, v0, :cond_2

    .line 85
    invoke-interface {p4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p1

    .line 88
    :cond_2
    invoke-virtual {p6}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getSessionMode-2uNL3no()I

    move-result p4

    invoke-virtual {v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v0

    invoke-static {p4, v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->equals-impl0(II)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 89
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p1

    :cond_3
    const/16 p2, 0x18

    if-lt p5, p2, :cond_4

    .line 93
    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p1

    .line 96
    :cond_4
    invoke-virtual {p6}, Landroidx/camera/camera2/pipe/CameraGraph$Config;->getInput()Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_5

    .line 97
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/camera/camera2/pipe/compat/CaptureSessionFactory;

    return-object p1

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Reprocessing is not supported on Android M"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
