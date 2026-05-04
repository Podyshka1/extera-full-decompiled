.class public final Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Quirk;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CameraXQuirksClassDetector"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 1

    .line 114
    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x22

    if-eq p2, p1, :cond_0

    const/16 p1, 0x23

    if-eq p2, p1, :cond_0

    if-eqz p3, :cond_1

    .line 119
    :cond_0
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x2d0

    invoke-direct {p1, p2, p2}, Landroid/util/Size;-><init>(II)V

    new-instance p2, Landroid/util/Size;

    const/16 p3, 0x190

    invoke-direct {p2, p3, p3}, Landroid/util/Size;-><init>(II)V

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/util/Size;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const/4 p1, 0x1

    aput-object p2, p3, p1

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 121
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getNokia7PlusExcludedSizes(I)Ljava/util/List;
    .locals 8

    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    .line 242
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0xfc0

    const/16 v1, 0xbd0

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 243
    new-instance v0, Landroid/util/Size;

    const/16 v2, 0xfa0

    const/16 v3, 0xbb8

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 244
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0xcc0

    const/16 v4, 0x990

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 245
    new-instance v3, Landroid/util/Size;

    const/16 v5, 0xc80

    const/16 v6, 0x960

    invoke-direct {v3, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 246
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v1, v1}, Landroid/util/Size;-><init>(II)V

    .line 247
    new-instance v1, Landroid/util/Size;

    const/16 v6, 0xba0

    invoke-direct {v1, v6, v6}, Landroid/util/Size;-><init>(II)V

    .line 248
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v4}, Landroid/util/Size;-><init>(II)V

    const/4 v4, 0x7

    new-array v4, v4, [Landroid/util/Size;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    const/4 p1, 0x1

    aput-object v0, v4, p1

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    aput-object v3, v4, p1

    const/4 p1, 0x4

    aput-object v5, v4, p1

    const/4 p1, 0x5

    aput-object v1, v4, p1

    const/4 p1, 0x6

    aput-object v6, v4, p1

    .line 241
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 251
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 95
    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    if-ne p2, p1, :cond_0

    .line 96
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v0, 0xc30

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    new-instance p2, Landroid/util/Size;

    const/16 v0, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Size;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 98
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    .line 102
    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    if-ne p2, p1, :cond_0

    .line 103
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x1040

    const/16 v0, 0xc30

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    new-instance p2, Landroid/util/Size;

    const/16 v0, 0xfa0

    const/16 v1, 0xbb8

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/util/Size;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 105
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getRedmiNote9ProExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 1

    .line 218
    const-string v0, "0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x100

    if-ne p2, p1, :cond_0

    .line 219
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x2440

    const/16 v0, 0x1b20

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 221
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getSamsungA05sExcludedSizes(I)Ljava/util/List;
    .locals 8

    const/16 v0, 0x23

    if-ne p1, v0, :cond_0

    .line 227
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0xf00

    const/16 v1, 0x870

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 228
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xcc0

    const/16 v2, 0x990

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 229
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xc80

    const/16 v3, 0x960

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 230
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0xa80

    const/16 v4, 0x5e8

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 231
    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x798

    const/16 v5, 0xa20

    invoke-direct {v3, v5, v4}, Landroid/util/Size;-><init>(II)V

    .line 232
    new-instance v4, Landroid/util/Size;

    const/16 v6, 0x794

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 233
    new-instance v5, Landroid/util/Size;

    const/16 v6, 0x780

    const/16 v7, 0x5a0

    invoke-direct {v5, v6, v7}, Landroid/util/Size;-><init>(II)V

    const/4 v6, 0x7

    new-array v6, v6, [Landroid/util/Size;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 p1, 0x1

    aput-object v0, v6, p1

    const/4 p1, 0x2

    aput-object v1, v6, p1

    const/4 p1, 0x3

    aput-object v2, v6, p1

    const/4 p1, 0x4

    aput-object v3, v6, p1

    const/4 p1, 0x5

    aput-object v4, v6, p1

    const/4 p1, 0x6

    aput-object v5, v6, p1

    .line 226
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 236
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 180
    const-string v2, "0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/16 v10, 0x23

    const/16 v11, 0x22

    const/16 v12, 0x438

    const/16 v13, 0x480

    const/16 v14, 0x600

    const/16 v15, 0x780

    const/16 v16, 0x5

    const/16 v4, 0x800

    if-eqz v2, :cond_2

    if-eq v1, v11, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v10, :cond_4

    .line 196
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v4, v14}, Landroid/util/Size;-><init>(II)V

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v13}, Landroid/util/Size;-><init>(II)V

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v15, v12}, Landroid/util/Size;-><init>(II)V

    new-array v3, v9, [Landroid/util/Size;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    aput-object v2, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 186
    :cond_1
    :goto_0
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xc18

    const/16 v2, 0x1020

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    .line 187
    new-instance v1, Landroid/util/Size;

    const/16 v10, 0x912

    invoke-direct {v1, v2, v10}, Landroid/util/Size;-><init>(II)V

    .line 188
    new-instance v2, Landroid/util/Size;

    const/16 v10, 0xc10

    invoke-direct {v2, v10, v10}, Landroid/util/Size;-><init>(II)V

    .line 189
    new-instance v10, Landroid/util/Size;

    const/16 v11, 0x990

    const/16 v17, 0x4

    const/16 v5, 0xcc0

    invoke-direct {v10, v5, v11}, Landroid/util/Size;-><init>(II)V

    .line 190
    new-instance v11, Landroid/util/Size;

    move/from16 v18, v6

    const/16 v6, 0x72c

    invoke-direct {v11, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 191
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v14}, Landroid/util/Size;-><init>(II)V

    .line 192
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v13}, Landroid/util/Size;-><init>(II)V

    .line 193
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v15, v12}, Landroid/util/Size;-><init>(II)V

    const/16 v12, 0x8

    new-array v12, v12, [Landroid/util/Size;

    aput-object v0, v12, v8

    aput-object v1, v12, v7

    aput-object v2, v12, v18

    aput-object v10, v12, v9

    aput-object v11, v12, v17

    aput-object v5, v12, v16

    aput-object v6, v12, v3

    const/4 v0, 0x7

    aput-object v4, v12, v0

    .line 185
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    move/from16 v18, v6

    const/16 v17, 0x4

    .line 198
    const-string v2, "1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_3

    if-eqz p3, :cond_4

    .line 205
    :cond_3
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0xa10

    const/16 v2, 0x78c

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 206
    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xa00

    const/16 v5, 0x5a0

    invoke-direct {v1, v2, v5}, Landroid/util/Size;-><init>(II)V

    .line 207
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v15, v15}, Landroid/util/Size;-><init>(II)V

    .line 208
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v4, v14}, Landroid/util/Size;-><init>(II)V

    .line 209
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v13}, Landroid/util/Size;-><init>(II)V

    .line 210
    new-instance v4, Landroid/util/Size;

    invoke-direct {v4, v15, v12}, Landroid/util/Size;-><init>(II)V

    new-array v3, v3, [Landroid/util/Size;

    aput-object v0, v3, v8

    aput-object v1, v3, v7

    aput-object v2, v3, v18

    aput-object v5, v3, v9

    aput-object v6, v3, v17

    aput-object v4, v3, v16

    .line 204
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 214
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 22

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 129
    const-string v2, "0"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x7

    const/16 v11, 0x23

    const/16 v12, 0x22

    const/16 v13, 0x438

    const/16 v14, 0x480

    const/16 v15, 0x600

    const/16 v16, 0x6

    const/16 v3, 0x72c

    const/16 v17, 0x5

    const/16 v4, 0x780

    const/16 v18, 0x4

    const/16 v5, 0x990

    const/16 v19, 0x3

    const/16 v6, 0x800

    const/16 v20, 0x2

    const/16 v7, 0xcc0

    if-eqz v2, :cond_2

    const/16 v0, 0x912

    const/16 v2, 0x1020

    const/16 v21, 0x1

    const/16 v8, 0xc10

    if-eq v1, v12, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v1, v11, :cond_4

    .line 146
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 147
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 148
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v7, v5}, Landroid/util/Size;-><init>(II)V

    .line 149
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v7, v3}, Landroid/util/Size;-><init>(II)V

    .line 150
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v6, v15}, Landroid/util/Size;-><init>(II)V

    .line 151
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v14}, Landroid/util/Size;-><init>(II)V

    .line 152
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v13}, Landroid/util/Size;-><init>(II)V

    new-array v4, v10, [Landroid/util/Size;

    aput-object v1, v4, v9

    aput-object v0, v4, v21

    aput-object v2, v4, v20

    aput-object v5, v4, v19

    aput-object v3, v4, v18

    aput-object v7, v4, v17

    aput-object v6, v4, v16

    .line 145
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 135
    :cond_1
    :goto_0
    new-instance v1, Landroid/util/Size;

    const/16 v11, 0xc18

    invoke-direct {v1, v2, v11}, Landroid/util/Size;-><init>(II)V

    .line 136
    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v2, v0}, Landroid/util/Size;-><init>(II)V

    .line 137
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 138
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v7, v5}, Landroid/util/Size;-><init>(II)V

    .line 139
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v7, v3}, Landroid/util/Size;-><init>(II)V

    .line 140
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v6, v15}, Landroid/util/Size;-><init>(II)V

    .line 141
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v14}, Landroid/util/Size;-><init>(II)V

    .line 142
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v13}, Landroid/util/Size;-><init>(II)V

    const/16 v4, 0x8

    new-array v4, v4, [Landroid/util/Size;

    aput-object v1, v4, v9

    aput-object v11, v4, v21

    aput-object v0, v4, v20

    aput-object v2, v4, v19

    aput-object v5, v4, v18

    aput-object v3, v4, v17

    aput-object v7, v4, v16

    aput-object v6, v4, v10

    .line 134
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v21, 0x1

    .line 155
    const-string v2, "1"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v11, :cond_3

    if-eqz p3, :cond_4

    .line 162
    :cond_3
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v7, v5}, Landroid/util/Size;-><init>(II)V

    .line 163
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v7, v3}, Landroid/util/Size;-><init>(II)V

    .line 164
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v5, v5}, Landroid/util/Size;-><init>(II)V

    .line 165
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v4, v4}, Landroid/util/Size;-><init>(II)V

    .line 166
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v6, v15}, Landroid/util/Size;-><init>(II)V

    .line 167
    new-instance v7, Landroid/util/Size;

    invoke-direct {v7, v6, v14}, Landroid/util/Size;-><init>(II)V

    .line 168
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v13}, Landroid/util/Size;-><init>(II)V

    new-array v4, v10, [Landroid/util/Size;

    aput-object v0, v4, v9

    aput-object v1, v4, v21

    aput-object v2, v4, v20

    aput-object v3, v4, v19

    aput-object v5, v4, v18

    aput-object v7, v4, v17

    aput-object v6, v4, v16

    .line 161
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 172
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final getSamsungZFold4ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 12

    .line 255
    const-string v0, "1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x23

    if-ne p2, p1, :cond_0

    .line 257
    new-instance p1, Landroid/util/Size;

    const/16 p2, 0x500

    const/16 v0, 0x2d0

    invoke-direct {p1, p2, v0}, Landroid/util/Size;-><init>(II)V

    .line 258
    new-instance p2, Landroid/util/Size;

    const/16 v0, 0x780

    const/16 v1, 0x438

    invoke-direct {p2, v0, v1}, Landroid/util/Size;-><init>(II)V

    .line 259
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x900

    const/16 v4, 0x510

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 260
    new-instance v3, Landroid/util/Size;

    const/16 v4, 0x280

    const/16 v5, 0x168

    invoke-direct {v3, v4, v5}, Landroid/util/Size;-><init>(II)V

    .line 261
    new-instance v4, Landroid/util/Size;

    const/16 v5, 0xb1

    const/16 v6, 0x90

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    .line 262
    new-instance v5, Landroid/util/Size;

    const/16 v6, 0x920

    invoke-direct {v5, v6, v1}, Landroid/util/Size;-><init>(II)V

    .line 263
    new-instance v6, Landroid/util/Size;

    const/16 v7, 0x960

    invoke-direct {v6, v7, v1}, Landroid/util/Size;-><init>(II)V

    .line 264
    new-instance v1, Landroid/util/Size;

    const/16 v7, 0x338

    invoke-direct {v1, v0, v7}, Landroid/util/Size;-><init>(II)V

    .line 265
    new-instance v0, Landroid/util/Size;

    const/16 v7, 0x440

    invoke-direct {v0, v7, v7}, Landroid/util/Size;-><init>(II)V

    .line 266
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x6c0

    invoke-direct {v7, v8, v8}, Landroid/util/Size;-><init>(II)V

    .line 267
    new-instance v8, Landroid/util/Size;

    const/16 v9, 0xab0

    invoke-direct {v8, v9, v9}, Landroid/util/Size;-><init>(II)V

    .line 268
    new-instance v9, Landroid/util/Size;

    const/16 v10, 0x720

    const/16 v11, 0x2c8

    invoke-direct {v9, v10, v11}, Landroid/util/Size;-><init>(II)V

    const/16 v10, 0xc

    new-array v10, v10, [Landroid/util/Size;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 p1, 0x1

    aput-object p2, v10, p1

    const/4 p1, 0x2

    aput-object v2, v10, p1

    const/4 p1, 0x3

    aput-object v3, v10, p1

    const/4 p1, 0x4

    aput-object v4, v10, p1

    const/4 p1, 0x5

    aput-object v5, v10, p1

    const/4 p1, 0x6

    aput-object v6, v10, p1

    const/4 p1, 0x7

    aput-object v1, v10, p1

    const/16 p1, 0x8

    aput-object v0, v10, p1

    const/16 p1, 0x9

    aput-object v7, v10, p1

    const/16 p1, 0xa

    aput-object v8, v10, p1

    const/16 p1, 0xb

    aput-object v9, v10, p1

    .line 256
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 271
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getExcludedSizes(Ljava/lang/String;I)Ljava/util/List;
    .locals 3

    const-string v0, "cameraId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;

    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 61
    :cond_0
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isOnePlus6T$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getOnePlus6TExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 62
    :cond_1
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isHuaweiP20Lite$camera_camera2()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getHuaweiP20LiteExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 63
    :cond_2
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7PrimeApi27Above$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7PrimeApi27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 65
    :cond_3
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungJ7Api27Above$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    invoke-direct {p0, p1, p2, v2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungJ7Api27AboveExcludedSizes(Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 67
    :cond_4
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isRedmiNote9Pro$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getRedmiNote9ProExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 68
    :cond_5
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungA05s$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungA05sExcludedSizes(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 69
    :cond_6
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isNokia7Plus$camera_camera2()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getNokia7PlusExcludedSizes(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 70
    :cond_7
    invoke-virtual {v0}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk$Companion;->isSamsungZFold4$camera_camera2()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;->getSamsungZFold4ExcludedSizes(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 72
    :cond_8
    const-string p1, "ExcludedSupportedSizesQuirk"

    const-string p2, "Cannot retrieve list of supported sizes to exclude on this device."

    invoke-static {p1, p2}, Landroidx/camera/core/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
