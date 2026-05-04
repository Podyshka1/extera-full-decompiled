.class public abstract Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/CameraGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperatingMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

.field private static final EXTENSION:I

.field private static final HIGH_SPEED:I

.field private static final NORMAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;

    const/4 v0, 0x0

    .line 308
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->NORMAL:I

    const/4 v0, 0x1

    .line 309
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->HIGH_SPEED:I

    const/4 v0, 0x2

    .line 310
    invoke-static {v0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->EXTENSION:I

    return-void
.end method

.method public static final synthetic access$constructor-impl(I)I
    .locals 0

    .line 305
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->constructor-impl(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getEXTENSION$cp()I
    .locals 1

    .line 305
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->EXTENSION:I

    return v0
.end method

.method public static final synthetic access$getHIGH_SPEED$cp()I
    .locals 1

    .line 305
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->HIGH_SPEED:I

    return v0
.end method

.method public static final synthetic access$getNORMAL$cp()I
    .locals 1

    .line 305
    sget v0, Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;->NORMAL:I

    return v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OperatingMode(mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
