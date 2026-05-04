.class public final Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/FinalizeSessionOnCloseQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBehavior-Bm6Tfm4()I
    .locals 5

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "getDefault(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "cph"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getIMMEDIATE-Bm6Tfm4()I

    move-result v0

    return v0

    .line 53
    :cond_0
    sget-object v0, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;->Companion:Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;->getOFF-Bm6Tfm4()I

    move-result v0

    return v0
.end method

.method public final isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
