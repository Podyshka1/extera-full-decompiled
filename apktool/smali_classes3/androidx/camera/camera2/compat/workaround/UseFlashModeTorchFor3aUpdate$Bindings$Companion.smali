.class public final Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate$Bindings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideUseFlashModeTorchFor3aUpdate(Landroidx/camera/camera2/compat/quirk/CameraQuirks;)Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdate;
    .locals 1

    const-string v0, "cameraQuirks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Landroidx/camera/camera2/compat/quirk/CameraQuirks;->getQuirks()Landroidx/camera/core/impl/Quirks;

    move-result-object p1

    const-class v0, Landroidx/camera/camera2/compat/quirk/TorchFlashRequiredFor3aUpdateQuirk;

    invoke-virtual {p1, v0}, Landroidx/camera/core/impl/Quirks;->contains(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    sget-object p1, Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;->INSTANCE:Landroidx/camera/camera2/compat/workaround/UseFlashModeTorchFor3aUpdateImpl;

    return-object p1

    .line 42
    :cond_0
    sget-object p1, Landroidx/camera/camera2/compat/workaround/NotUseFlashModeTorchFor3aUpdate;->INSTANCE:Landroidx/camera/camera2/compat/workaround/NotUseFlashModeTorchFor3aUpdate;

    return-object p1
.end method
