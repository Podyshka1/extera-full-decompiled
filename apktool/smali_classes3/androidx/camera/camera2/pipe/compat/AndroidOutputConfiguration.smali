.class public final Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/camera2/pipe/compat/OutputConfigurationWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;


# instance fields
.field private final maxSharedSurfaceCount:I

.field private final output:Landroid/hardware/camera2/params/OutputConfiguration;

.field private final physicalCameraId:Ljava/lang/String;

.field private final surface:Landroid/view/Surface;

.field private final surfaceSharing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->Companion:Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;)V
    .locals 1

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    .line 145
    iput-boolean p2, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surfaceSharing:Z

    .line 146
    iput p3, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->maxSharedSurfaceCount:I

    .line 147
    iput-object p4, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->physicalCameraId:Ljava/lang/String;

    .line 334
    invoke-virtual {p1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->surface:Landroid/view/Surface;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;ZILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSurface(Landroid/view/Surface;)V
    .locals 3

    const-string/jumbo v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-lt v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/compat/Api26Compat;->addSurfaces(Landroid/hardware/camera2/params/OutputConfiguration;Landroid/view/Surface;)V

    :cond_0
    return-void

    .line 254
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSurface"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not supported on API "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (requires API "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 371
    iget-object v0, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrapAs(Lkotlin/reflect/KClass;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Landroidx/camera/camera2/pipe/compat/AndroidCameraCaptureSession$$ExternalSyntheticApiModelOutline0;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/camera/camera2/pipe/compat/AndroidOutputConfiguration;->output:Landroid/hardware/camera2/params/OutputConfiguration;

    const-string v0, "null cannot be cast to non-null type T of androidx.camera.camera2.pipe.compat.AndroidOutputConfiguration.unwrapAs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
