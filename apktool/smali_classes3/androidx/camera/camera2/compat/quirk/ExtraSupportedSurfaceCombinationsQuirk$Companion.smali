.class public final Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFullYuvPrivYuvConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;
    .locals 8

    .line 145
    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 147
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    move-object v7, v2

    .line 146
    invoke-virtual {v0, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 151
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 152
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 150
    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 156
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-object v2, v7

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    return-object v0
.end method

.method public final createFullYuvYuvYuvConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;
    .locals 7

    .line 163
    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 165
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 164
    invoke-virtual {v0, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 168
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 167
    invoke-virtual {v0, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 171
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    return-object v0
.end method

.method public final createLevel3PrivPrivYuvSubsetConfiguration$camera_camera2()Landroidx/camera/core/impl/SurfaceCombination;
    .locals 7

    .line 185
    new-instance v0, Landroidx/camera/core/impl/SurfaceCombination;

    invoke-direct {v0}, Landroidx/camera/core/impl/SurfaceCombination;-><init>()V

    .line 187
    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig;->Companion:Landroidx/camera/core/impl/SurfaceConfig$Companion;

    .line 188
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->PRIV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    .line 189
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 187
    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v3

    .line 186
    invoke-virtual {v0, v3}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 193
    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    .line 196
    sget-object v2, Landroidx/camera/core/impl/SurfaceConfig$ConfigType;->YUV:Landroidx/camera/core/impl/SurfaceConfig$ConfigType;

    sget-object v3, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static/range {v1 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$Companion;->create$default(Landroidx/camera/core/impl/SurfaceConfig$Companion;Landroidx/camera/core/impl/SurfaceConfig$ConfigType;Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;Landroidx/camera/core/impl/StreamUseCase;ILjava/lang/Object;)Landroidx/camera/core/impl/SurfaceConfig;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Landroidx/camera/core/impl/SurfaceCombination;->addSurfaceConfig(Landroidx/camera/core/impl/SurfaceConfig;)Z

    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->isSamsungS7$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk$Companion;->supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()Z

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

.method public final isSamsungS7$camera_camera2()Z
    .locals 3

    .line 116
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "heroqltevzw"

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    const-string v1, "heroqltetmo"

    invoke-static {v1, v0, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public final supportExtraLevel3ConfigurationsGoogleDevice$camera_camera2()Z
    .locals 2

    .line 120
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isGoogleDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toUpperCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->access$getSUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_GOOGLE_MODELS$cp()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final supportExtraLevel3ConfigurationsSamsungDevice$camera_camera2()Z
    .locals 6

    .line 128
    sget-object v0, Landroidx/camera/camera2/compat/quirk/Device;->INSTANCE:Landroidx/camera/camera2/compat/quirk/Device;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/Device;->isSamsungDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "toUpperCase(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/camera/camera2/compat/quirk/ExtraSupportedSurfaceCombinationsQuirk;->access$getSUPPORT_EXTRA_LEVEL_3_CONFIGURATIONS_SAMSUNG_MODELS$cp()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 136
    invoke-static {v0, v3, v1, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method
