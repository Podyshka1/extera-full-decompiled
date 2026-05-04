.class public final Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;-><init>()V

    return-void
.end method

.method private final isAPI33()Z
    .locals 2

    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedOnePlusDevices()Z
    .locals 1

    .line 86
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOnePlusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAPI33()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedOnePlusModel()Z
    .locals 3

    .line 98
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_ONE_PLUS_MODELS$cp()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isAffectedOppoDevices()Z
    .locals 1

    .line 90
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOppoModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAPI33()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedOppoModel()Z
    .locals 3

    .line 102
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_OPPO_MODELS$cp()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isAffectedPixelBuild()Z
    .locals 1

    .line 106
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTd1aBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final isAffectedPixelDevices()Z
    .locals 1

    .line 78
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedPixelModel()Z
    .locals 3

    .line 94
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk;->access$getAFFECTED_PIXEL_MODELS$cp()Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toLowerCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final isAffectedSamsungDevices()Z
    .locals 1

    .line 74
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedXiaomiDevices()Z
    .locals 2

    .line 82
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isRedmiDevice()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isXiaomiDevice()Z

    move-result v0

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTkq1Build()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isTp1aBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private final isTd1aBuild()Z
    .locals 3

    .line 114
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TD1A"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final isTkq1Build()Z
    .locals 3

    .line 118
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TKQ1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private final isTp1aBuild()Z
    .locals 3

    .line 110
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v1, "ID"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "TP1A"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedSamsungDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedPixelDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedXiaomiDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOppoDevices()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/InvalidVideoProfilesQuirk$Companion;->isAffectedOnePlusDevices()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
