.class public final Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;-><init>()V

    return-void
.end method

.method private final isAffectedModel(Ljava/util/List;)Z
    .locals 5

    .line 56
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "MODEL"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "toUpperCase(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v0, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private final isAffectedSamsungDevices()Z
    .locals 1

    .line 48
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->access$getAFFECTED_SAMSUNG_MODEL$cp()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;->isAffectedModel(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final isAffectedXiaoMiDevices()Z
    .locals 1

    .line 52
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk;->access$getAFFECTED_XIAOMI_MODEL$cp()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;->isAffectedModel(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final load()Z
    .locals 1

    .line 44
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;->isAffectedSamsungDevices()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ZslDisablerQuirk$Companion;->isAffectedXiaoMiDevices()Z

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
