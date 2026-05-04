.class public final Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final custom-EP6OhB0(I)I
    .locals 2

    .line 313
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getNORMAL-2uNL3no()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;->getHIGH_SPEED-2uNL3no()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 316
    invoke-static {p1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$constructor-impl(I)I

    move-result p1

    return p1

    .line 314
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/core/Log;->INSTANCE:Landroidx/camera/camera2/pipe/core/Log;

    .line 82
    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/core/Log;->getERROR_LOGGABLE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Custom operating mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " conflicts with standard modes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 82
    const-string v0, "CXCP"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEXTENSION-2uNL3no()I
    .locals 1

    .line 310
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getEXTENSION$cp()I

    move-result v0

    return v0
.end method

.method public final getHIGH_SPEED-2uNL3no()I
    .locals 1

    .line 309
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getHIGH_SPEED$cp()I

    move-result v0

    return v0
.end method

.method public final getNORMAL-2uNL3no()I
    .locals 1

    .line 308
    invoke-static {}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->access$getNORMAL$cp()I

    move-result v0

    return v0
.end method
