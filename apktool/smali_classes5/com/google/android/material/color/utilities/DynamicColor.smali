.class public final Lcom/google/android/material/color/utilities/DynamicColor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final background:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;"
        }
    .end annotation
.end field

.field public final contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

.field private final hctCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/Hct;",
            ">;"
        }
    .end annotation
.end field

.field public final isBackground:Z

.field public final name:Ljava/lang/String;

.field public final opacity:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final palette:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;"
        }
    .end annotation
.end field

.field public final secondBackground:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;"
        }
    .end annotation
.end field

.field public final tone:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public final toneDeltaPair:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CVVhFDc2ooBbGADpOace6TmxBDU(Lcom/google/android/material/color/utilities/Hct;Lcom/google/android/material/color/utilities/DynamicScheme;)Ljava/lang/Double;
    .locals 0

    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/color/utilities/Hct;->getTone()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HYD-TTRX49hWk5qNJTOhVJLMxRg(Lcom/google/android/material/color/utilities/TonalPalette;Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/TonalPalette;
    .locals 0

    .line 0
    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Lcom/google/android/material/color/utilities/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    .line 113
    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 114
    iput-boolean p4, p0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    .line 115
    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    .line 116
    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    .line 117
    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 118
    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/DynamicColor;",
            ">;",
            "Lcom/google/android/material/color/utilities/ContrastCurve;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/ToneDeltaPair;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    .line 132
    iput-object p1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    .line 134
    iput-object p3, p0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    .line 135
    iput-boolean p4, p0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    .line 136
    iput-object p5, p0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    .line 137
    iput-object p6, p0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    .line 138
    iput-object p7, p0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    .line 139
    iput-object p8, p0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    .line 140
    iput-object p9, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    return-void
.end method

.method public static enableLightForeground(D)D
    .locals 1

    .line 492
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->toneAllowsLightForeground(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide p0, 0x4048800000000000L    # 49.0

    :cond_0
    return-wide p0
.end method

.method public static foregroundTone(DD)D
    .locals 10

    .line 461
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->lighterUnsafe(DD)D

    move-result-wide v0

    .line 462
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/material/color/utilities/Contrast;->darkerUnsafe(DD)D

    move-result-wide v2

    .line 463
    invoke-static {v0, v1, p0, p1}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v4

    .line 464
    invoke-static {v2, v3, p0, p1}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v6

    .line 465
    invoke-static {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result p0

    if-eqz p0, :cond_1

    sub-double p0, v4, v6

    .line 476
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double p0, p0, v8

    if-gez p0, :cond_0

    cmpg-double p0, v4, p2

    if-gez p0, :cond_0

    cmpg-double p0, v6, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    cmpl-double p1, v4, p2

    if-gez p1, :cond_2

    cmpl-double p1, v4, v6

    if-gez p1, :cond_2

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_1
    cmpl-double p0, v6, p2

    if-gez p0, :cond_3

    cmpl-double p0, v6, v4

    if-ltz p0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-wide v0

    :cond_3
    :goto_2
    return-wide v2
.end method

.method public static fromArgb(Ljava/lang/String;I)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 2

    .line 230
    invoke-static {p1}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 231
    invoke-static {p1}, Lcom/google/android/material/color/utilities/TonalPalette;->fromInt(I)Lcom/google/android/material/color/utilities/TonalPalette;

    move-result-object p1

    .line 232
    new-instance v1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/color/utilities/TonalPalette;)V

    new-instance p1, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/google/android/material/color/utilities/DynamicColor$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/color/utilities/Hct;)V

    invoke-static {p0, v1, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object p0

    return-object p0
.end method

.method public static fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;)",
            "Lcom/google/android/material/color/utilities/DynamicColor;"
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static fromPalette(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;Z)Lcom/google/android/material/color/utilities/DynamicColor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Lcom/google/android/material/color/utilities/TonalPalette;",
            ">;",
            "Ljava/util/function/Function<",
            "Lcom/google/android/material/color/utilities/DynamicScheme;",
            "Ljava/lang/Double;",
            ">;Z)",
            "Lcom/google/android/material/color/utilities/DynamicColor;"
        }
    .end annotation

    .line 209
    new-instance v0, Lcom/google/android/material/color/utilities/DynamicColor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/color/utilities/DynamicColor;-><init>(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/Function;ZLjava/util/function/Function;Ljava/util/function/Function;Lcom/google/android/material/color/utilities/ContrastCurve;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static toneAllowsLightForeground(D)Z
    .locals 2

    .line 514
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x31

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static tonePrefersLightForeground(D)Z
    .locals 2

    .line 509
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    const-wide/16 v0, 0x3c

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getArgb(Lcom/google/android/material/color/utilities/DynamicScheme;)I
    .locals 5

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->getHct(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result v0

    .line 243
    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->opacity:Ljava/util/function/Function;

    if-nez v1, :cond_0

    return v0

    .line 246
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x406fe00000000000L    # 255.0

    mul-double/2addr v1, v3

    .line 247
    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int p1, v1

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v1, v2, p1}, Lcom/google/android/material/color/utilities/MathUtils;->clampInt(III)I

    move-result p1

    const v1, 0xffffff

    and-int/2addr v0, v1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v0

    return p1
.end method

.method public getHct(Lcom/google/android/material/color/utilities/DynamicScheme;)Lcom/google/android/material/color/utilities/Hct;
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/utilities/Hct;

    if-eqz v0, :cond_0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v0

    .line 270
    iget-object v2, p0, Lcom/google/android/material/color/utilities/DynamicColor;->palette:Ljava/util/function/Function;

    invoke-interface {v2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/TonalPalette;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/material/color/utilities/TonalPalette;->getHct(D)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/color/utilities/DynamicColor;->hctCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 282
    iget-wide v2, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-gez v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    .line 285
    :goto_0
    iget-object v7, v0, Lcom/google/android/material/color/utilities/DynamicColor;->toneDeltaPair:Ljava/util/function/Function;

    if-eqz v7, :cond_13

    .line 286
    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/ToneDeltaPair;

    .line 287
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getRoleA()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v16

    .line 288
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getRoleB()Lcom/google/android/material/color/utilities/DynamicColor;

    move-result-object v17

    .line 289
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getDelta()D

    move-result-wide v18

    move-wide/from16 v20, v4

    .line 290
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getPolarity()Lcom/google/android/material/color/utilities/TonePolarity;

    move-result-object v4

    .line 291
    invoke-virtual {v7}, Lcom/google/android/material/color/utilities/ToneDeltaPair;->getStayTogether()Z

    move-result v5

    .line 293
    iget-object v7, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    invoke-interface {v7, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/material/color/utilities/DynamicColor;

    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    .line 294
    invoke-virtual {v7, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v8

    .line 296
    sget-object v7, Lcom/google/android/material/color/utilities/TonePolarity;->NEARER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-eq v4, v7, :cond_2

    sget-object v7, Lcom/google/android/material/color/utilities/TonePolarity;->LIGHTER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-ne v4, v7, :cond_1

    iget-boolean v7, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v7, :cond_2

    :cond_1
    sget-object v7, Lcom/google/android/material/color/utilities/TonePolarity;->DARKER:Lcom/google/android/material/color/utilities/TonePolarity;

    if-ne v4, v7, :cond_3

    iget-boolean v4, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v4, :cond_3

    :cond_2
    move v3, v6

    :cond_3
    if-eqz v3, :cond_4

    move-object/from16 v4, v16

    goto :goto_1

    :cond_4
    move-object/from16 v4, v17

    :goto_1
    if-eqz v3, :cond_5

    move-object/from16 v3, v17

    goto :goto_2

    :cond_5
    move-object/from16 v3, v16

    .line 302
    :goto_2
    iget-object v6, v0, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/material/color/utilities/DynamicColor;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 303
    iget-boolean v7, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->isDark:Z

    if-eqz v7, :cond_6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_6
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 306
    :goto_3
    iget-object v7, v4, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    iget-wide v14, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v7, v14, v15}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v14

    .line 307
    iget-object v7, v3, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    const-wide v24, 0x4048800000000000L    # 49.0

    iget-wide v12, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v7, v12, v13}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v12

    .line 311
    iget-object v4, v4, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v4, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    move v7, v5

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 314
    invoke-static {v8, v9, v4, v5}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v26

    cmpl-double v26, v26, v14

    if-ltz v26, :cond_7

    goto :goto_4

    .line 316
    :cond_7
    invoke-static {v8, v9, v14, v15}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v4

    .line 318
    :goto_4
    iget-object v3, v3, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v3, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    move/from16 v26, v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 321
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v27

    cmpl-double v3, v27, v12

    if-ltz v3, :cond_8

    goto :goto_5

    .line 323
    :cond_8
    invoke-static {v8, v9, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v1

    :goto_5
    if-eqz v26, :cond_9

    .line 328
    invoke-static {v8, v9, v14, v15}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v4

    .line 329
    invoke-static {v8, v9, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v1

    :cond_9
    sub-double v8, v1, v4

    mul-double/2addr v8, v10

    cmpg-double v3, v8, v18

    if-gez v3, :cond_b

    mul-double v1, v18, v10

    add-double v30, v4, v1

    const-wide/16 v26, 0x0

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    .line 335
    invoke-static/range {v26 .. v31}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v8

    sub-double v12, v8, v4

    mul-double/2addr v12, v10

    cmpg-double v3, v12, v18

    if-gez v3, :cond_a

    const-wide/high16 v28, 0x4059000000000000L    # 100.0

    sub-double v30, v8, v1

    const-wide/16 v26, 0x0

    .line 339
    invoke-static/range {v26 .. v31}, Lcom/google/android/material/color/utilities/MathUtils;->clampDouble(DDD)D

    move-result-wide v4

    :cond_a
    move-wide v1, v8

    :cond_b
    cmpg-double v3, v22, v4

    if-gtz v3, :cond_d

    cmpg-double v3, v4, v16

    if-gez v3, :cond_d

    cmpl-double v3, v10, v20

    if-lez v3, :cond_c

    mul-double v18, v18, v10

    add-double v3, v18, v16

    .line 349
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    :goto_6
    move-wide/from16 v4, v16

    goto :goto_8

    :cond_c
    mul-double v18, v18, v10

    add-double v3, v18, v24

    .line 352
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    :goto_7
    move-wide v12, v1

    move-wide/from16 v4, v24

    goto :goto_8

    :cond_d
    cmpg-double v3, v22, v1

    if-gtz v3, :cond_11

    cmpg-double v3, v1, v16

    if-gez v3, :cond_11

    if-eqz v7, :cond_f

    cmpl-double v3, v10, v20

    if-lez v3, :cond_e

    mul-double v18, v18, v10

    add-double v3, v18, v16

    .line 360
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    goto :goto_6

    :cond_e
    mul-double v18, v18, v10

    add-double v3, v18, v24

    .line 363
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    goto :goto_7

    :cond_f
    cmpl-double v1, v10, v20

    if-lez v1, :cond_10

    move-wide/from16 v12, v16

    goto :goto_8

    :cond_10
    move-wide/from16 v12, v24

    goto :goto_8

    :cond_11
    move-wide v12, v1

    :goto_8
    if-eqz v6, :cond_12

    return-wide v4

    :cond_12
    return-wide v12

    :cond_13
    move/from16 v26, v2

    move-wide/from16 v20, v4

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    const-wide/high16 v22, 0x4049000000000000L    # 50.0

    const-wide v24, 0x4048800000000000L    # 49.0

    .line 379
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->tone:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 381
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    if-nez v2, :cond_14

    return-wide v4

    .line 385
    :cond_14
    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v2, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v7

    .line 387
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->contrastCurve:Lcom/google/android/material/color/utilities/ContrastCurve;

    iget-wide v12, v1, Lcom/google/android/material/color/utilities/DynamicScheme;->contrastLevel:D

    invoke-virtual {v2, v12, v13}, Lcom/google/android/material/color/utilities/ContrastCurve;->get(D)D

    move-result-wide v12

    .line 389
    invoke-static {v7, v8, v4, v5}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v14

    cmpl-double v2, v14, v12

    if-ltz v2, :cond_15

    goto :goto_9

    .line 393
    :cond_15
    invoke-static {v7, v8, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v4

    :goto_9
    if-eqz v26, :cond_16

    .line 397
    invoke-static {v7, v8, v12, v13}, Lcom/google/android/material/color/utilities/DynamicColor;->foregroundTone(DD)D

    move-result-wide v4

    .line 400
    :cond_16
    iget-boolean v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->isBackground:Z

    if-eqz v2, :cond_18

    cmpg-double v2, v22, v4

    if-gtz v2, :cond_18

    cmpg-double v2, v4, v16

    if-gez v2, :cond_18

    move-wide/from16 v14, v24

    .line 402
    invoke-static {v14, v15, v7, v8}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v4

    cmpl-double v2, v4, v12

    if-ltz v2, :cond_17

    goto :goto_a

    :cond_17
    move-wide/from16 v14, v16

    goto :goto_a

    :cond_18
    move-wide v14, v4

    .line 409
    :goto_a
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    if-eqz v2, :cond_21

    .line 412
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->background:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v2, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v4

    .line 413
    iget-object v2, v0, Lcom/google/android/material/color/utilities/DynamicColor;->secondBackground:Ljava/util/function/Function;

    invoke-interface {v2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/DynamicColor;

    invoke-virtual {v2, v1}, Lcom/google/android/material/color/utilities/DynamicColor;->getTone(Lcom/google/android/material/color/utilities/DynamicScheme;)D

    move-result-wide v1

    .line 415
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 416
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 418
    invoke-static {v7, v8, v14, v15}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v18

    cmpl-double v9, v18, v12

    if-ltz v9, :cond_19

    .line 419
    invoke-static {v10, v11, v14, v15}, Lcom/google/android/material/color/utilities/Contrast;->ratioOfTones(DD)D

    move-result-wide v18

    cmpl-double v9, v18, v12

    if-ltz v9, :cond_19

    goto :goto_c

    .line 425
    :cond_19
    invoke-static {v7, v8, v12, v13}, Lcom/google/android/material/color/utilities/Contrast;->lighter(DD)D

    move-result-wide v7

    .line 429
    invoke-static {v10, v11, v12, v13}, Lcom/google/android/material/color/utilities/Contrast;->darker(DD)D

    move-result-wide v9

    .line 432
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    cmpl-double v12, v7, v16

    if-eqz v12, :cond_1a

    .line 434
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    cmpl-double v13, v9, v16

    if-eqz v13, :cond_1b

    .line 437
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_1b
    invoke-static {v4, v5}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 442
    invoke-static {v1, v2}, Lcom/google/android/material/color/utilities/DynamicColor;->tonePrefersLightForeground(D)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_b

    .line 446
    :cond_1c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_1d

    .line 447
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    return-wide v1

    :cond_1d
    if-nez v13, :cond_1e

    return-wide v20

    :cond_1e
    return-wide v9

    :cond_1f
    :goto_b
    if-nez v12, :cond_20

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    return-wide v1

    :cond_20
    return-wide v7

    :cond_21
    :goto_c
    return-wide v14
.end method
