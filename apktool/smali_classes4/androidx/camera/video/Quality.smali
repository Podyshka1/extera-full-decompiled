.class public abstract Landroidx/camera/video/Quality;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/Quality$ConstantQuality;
    }
.end annotation


# static fields
.field public static final FHD:Landroidx/camera/video/Quality;

.field public static final HD:Landroidx/camera/video/Quality;

.field public static final HIGHEST:Landroidx/camera/video/Quality;

.field public static final LOWEST:Landroidx/camera/video/Quality;

.field static final NONE:Landroidx/camera/video/Quality;

.field private static final QUALITIES:Ljava/util/Set;

.field private static final QUALITIES_ORDER_BY_SIZE:Ljava/util/List;

.field public static final SD:Landroidx/camera/video/Quality;

.field public static final UHD:Landroidx/camera/video/Quality;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 71
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x2d0

    const/16 v2, 0x1e0

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    invoke-direct {v3, v4, v2}, Landroid/util/Size;-><init>(II)V

    const/4 v2, 0x2

    new-array v4, v2, [Landroid/util/Size;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    .line 75
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    const/16 v6, 0x7d2

    .line 71
    const-string v7, "SD"

    invoke-static {v4, v6, v7, v3}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v3

    sput-object v3, Landroidx/camera/video/Quality;->SD:Landroidx/camera/video/Quality;

    .line 84
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x500

    invoke-direct {v6, v7, v1}, Landroid/util/Size;-><init>(II)V

    .line 88
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v6, 0x5

    const/16 v7, 0x7d3

    .line 84
    const-string v8, "HD"

    invoke-static {v6, v7, v8, v1}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v1

    sput-object v1, Landroidx/camera/video/Quality;->HD:Landroidx/camera/video/Quality;

    .line 97
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    .line 101
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x6

    const/16 v9, 0x7d4

    .line 97
    const-string v10, "FHD"

    invoke-static {v8, v9, v10, v7}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v7

    sput-object v7, Landroidx/camera/video/Quality;->FHD:Landroidx/camera/video/Quality;

    .line 110
    new-instance v9, Landroid/util/Size;

    const/16 v10, 0xf00

    const/16 v11, 0x870

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    .line 114
    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/16 v10, 0x8

    const/16 v11, 0x7d5

    .line 110
    const-string v12, "UHD"

    invoke-static {v10, v11, v12, v9}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v9

    sput-object v9, Landroidx/camera/video/Quality;->UHD:Landroidx/camera/video/Quality;

    .line 125
    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/16 v11, 0x7d0

    .line 121
    const-string v12, "LOWEST"

    invoke-static {v5, v11, v12, v10}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v11

    sput-object v11, Landroidx/camera/video/Quality;->LOWEST:Landroidx/camera/video/Quality;

    const/16 v12, 0x7d1

    .line 132
    const-string v13, "HIGHEST"

    invoke-static {v0, v12, v13, v10}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v12

    sput-object v12, Landroidx/camera/video/Quality;->HIGHEST:Landroidx/camera/video/Quality;

    const/4 v13, -0x1

    .line 139
    const-string v14, "NONE"

    invoke-static {v13, v13, v14, v10}, Landroidx/camera/video/Quality$ConstantQuality;->of(IILjava/lang/String;Ljava/util/List;)Landroidx/camera/video/Quality$ConstantQuality;

    move-result-object v10

    sput-object v10, Landroidx/camera/video/Quality;->NONE:Landroidx/camera/video/Quality;

    .line 142
    new-instance v10, Ljava/util/HashSet;

    new-array v8, v8, [Landroidx/camera/video/Quality;

    aput-object v11, v8, v5

    aput-object v12, v8, v0

    aput-object v3, v8, v2

    const/4 v11, 0x3

    aput-object v1, v8, v11

    aput-object v7, v8, v4

    aput-object v9, v8, v6

    .line 143
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v10, Landroidx/camera/video/Quality;->QUALITIES:Ljava/util/Set;

    .line 146
    new-array v4, v4, [Landroidx/camera/video/Quality;

    aput-object v9, v4, v5

    aput-object v7, v4, v0

    aput-object v1, v4, v2

    aput-object v3, v4, v11

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/video/Quality;->QUALITIES_ORDER_BY_SIZE:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/camera/video/Quality$1;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroidx/camera/video/Quality;-><init>()V

    return-void
.end method

.method static containsQuality(Landroidx/camera/video/Quality;)Z
    .locals 1

    .line 149
    sget-object v0, Landroidx/camera/video/Quality;->QUALITIES:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getSortedQualities()Ljava/util/List;
    .locals 2

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/camera/video/Quality;->QUALITIES_ORDER_BY_SIZE:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
