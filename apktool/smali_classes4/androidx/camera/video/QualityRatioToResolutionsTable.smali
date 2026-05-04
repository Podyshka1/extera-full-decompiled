.class Landroidx/camera/video/QualityRatioToResolutionsTable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;
    }
.end annotation


# static fields
.field private static final sAspectRatioMap:Ljava/util/Map;

.field private static final sQualityRangeMap:Ljava/util/Map;


# instance fields
.field private final mTable:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$BWym1p_PZQBPBEAVCQA3TsEDLwg(ILandroid/util/Size;Landroid/util/Size;)I
    .locals 0

    .line 154
    invoke-static {p1}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p1

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 155
    invoke-static {p2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result p2

    sub-int/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/video/QualityRatioToResolutionsTable;->sQualityRangeMap:Ljava/util/Map;

    .line 70
    sget-object v1, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    const/16 v2, 0x870

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x10df

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v1, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    const/16 v2, 0x438

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x59f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    const/16 v2, 0x2d0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x437

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v1, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    const/16 v2, 0xf1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x2cf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/camera/video/QualityRatioToResolutionsTable;->sAspectRatioMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_4_3:Landroid/util/Rational;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/camera/core/impl/utils/AspectRatioUtil;->ASPECT_RATIO_16_9:Landroid/util/Rational;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/camera/video/QualityRatioToResolutionsTable;->mTable:Ljava/util/Map;

    .line 88
    sget-object v0, Landroidx/camera/video/QualityRatioToResolutionsTable;->sQualityRangeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/Quality;

    .line 89
    iget-object v2, p0, Landroidx/camera/video/QualityRatioToResolutionsTable;->mTable:Ljava/util/Map;

    const/4 v3, -0x1

    invoke-static {v1, v3}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->of(Landroidx/camera/video/Quality;I)Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v2, Landroidx/camera/video/QualityRatioToResolutionsTable;->sAspectRatioMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 91
    iget-object v4, p0, Landroidx/camera/video/QualityRatioToResolutionsTable;->mTable:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->of(Landroidx/camera/video/Quality;I)Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, p2}, Landroidx/camera/video/QualityRatioToResolutionsTable;->addProfileSizesToTable(Ljava/util/Map;)V

    .line 108
    invoke-direct {p0, p1}, Landroidx/camera/video/QualityRatioToResolutionsTable;->addResolutionsToTable(Ljava/util/List;)V

    .line 109
    invoke-direct {p0, p2}, Landroidx/camera/video/QualityRatioToResolutionsTable;->sortQualityRatioRow(Ljava/util/Map;)V

    return-void
.end method

.method private addProfileSizesToTable(Ljava/util/Map;)V
    .locals 3

    .line 124
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/video/Quality;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroidx/camera/video/QualityRatioToResolutionsTable;->getQualityRatioRow(Landroidx/camera/video/Quality;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addResolutionsToTable(Ljava/util/List;)V
    .locals 3

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 131
    invoke-static {v0}, Landroidx/camera/video/QualityRatioToResolutionsTable;->findMappedQuality(Landroid/util/Size;)Landroidx/camera/video/Quality;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {v0}, Landroidx/camera/video/QualityRatioToResolutionsTable;->findMappedAspectRatio(Landroid/util/Size;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/camera/video/QualityRatioToResolutionsTable;->getQualityRatioRow(Landroidx/camera/video/Quality;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 140
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findMappedAspectRatio(Landroid/util/Size;)Ljava/lang/Integer;
    .locals 4

    .line 171
    sget-object v0, Landroidx/camera/video/QualityRatioToResolutionsTable;->sAspectRatioMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Rational;

    sget-object v3, Landroidx/camera/core/internal/utils/SizeUtil;->RESOLUTION_QVGA:Landroid/util/Size;

    invoke-static {p0, v2, v3}, Landroidx/camera/core/impl/utils/AspectRatioUtil;->hasMatchingAspectRatio(Landroid/util/Size;Landroid/util/Rational;Landroid/util/Size;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findMappedQuality(Landroid/util/Size;)Landroidx/camera/video/Quality;
    .locals 4

    .line 162
    sget-object v0, Landroidx/camera/video/QualityRatioToResolutionsTable;->sQualityRangeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 163
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/camera/video/Quality;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getQualityRatioRow(Landroidx/camera/video/Quality;I)Ljava/util/List;
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/camera/video/QualityRatioToResolutionsTable;->mTable:Ljava/util/Map;

    invoke-static {p1, p2}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->of(Landroidx/camera/video/Quality;I)Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private sortQualityRatioRow(Ljava/util/Map;)V
    .locals 4

    .line 145
    iget-object v0, p0, Landroidx/camera/video/QualityRatioToResolutionsTable;->mTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;

    invoke-virtual {v2}, Landroidx/camera/video/QualityRatioToResolutionsTable$QualityRatio;->getQuality()Landroidx/camera/video/Quality;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Size;

    if-nez v2, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {v2}, Landroidx/camera/core/internal/utils/SizeUtil;->getArea(Landroid/util/Size;)I

    move-result v2

    .line 153
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    new-instance v3, Landroidx/camera/video/QualityRatioToResolutionsTable$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroidx/camera/video/QualityRatioToResolutionsTable$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method getResolutions(Landroidx/camera/video/Quality;I)Ljava/util/List;
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2}, Landroidx/camera/video/QualityRatioToResolutionsTable;->getQualityRatioRow(Landroidx/camera/video/Quality;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1
.end method
