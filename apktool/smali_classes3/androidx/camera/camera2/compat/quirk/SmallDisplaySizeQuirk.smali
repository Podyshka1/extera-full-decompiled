.class public final Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;
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
        Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;

.field private static final MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->Companion:Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk$Companion;

    .line 42
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x438

    const/16 v2, 0x924

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    const-string v3, "REDMI NOTE 8"

    invoke-static {v3, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 43
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v1, v2}, Landroid/util/Size;-><init>(II)V

    const-string v4, "REDMI NOTE 7"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 44
    new-instance v4, Landroid/util/Size;

    const/16 v5, 0x618

    const/16 v6, 0x2d0

    invoke-direct {v4, v6, v5}, Landroid/util/Size;-><init>(II)V

    const-string v5, "SM-A207M"

    invoke-static {v5, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    .line 45
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v1, v2}, Landroid/util/Size;-><init>(II)V

    const-string v7, "REDMI NOTE 7S"

    invoke-static {v7, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 46
    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x640

    invoke-direct {v7, v6, v8}, Landroid/util/Size;-><init>(II)V

    const-string v9, "SM-A127F"

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 47
    new-instance v9, Landroid/util/Size;

    const/16 v10, 0x960

    invoke-direct {v9, v1, v10}, Landroid/util/Size;-><init>(II)V

    const-string v11, "SM-A536E"

    invoke-static {v11, v9}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    .line 48
    new-instance v11, Landroid/util/Size;

    invoke-direct {v11, v6, v8}, Landroid/util/Size;-><init>(II)V

    const-string v12, "220233L2I"

    invoke-static {v12, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    .line 49
    new-instance v12, Landroid/util/Size;

    invoke-direct {v12, v6, v8}, Landroid/util/Size;-><init>(II)V

    const-string v13, "V2149"

    invoke-static {v13, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v12

    .line 50
    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v1, v2}, Landroid/util/Size;-><init>(II)V

    const-string v2, "VIVO 1920"

    invoke-static {v2, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 51
    new-instance v13, Landroid/util/Size;

    invoke-direct {v13, v1, v10}, Landroid/util/Size;-><init>(II)V

    const-string v14, "CPH2223"

    invoke-static {v14, v13}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v13

    .line 52
    new-instance v14, Landroid/util/Size;

    invoke-direct {v14, v6, v8}, Landroid/util/Size;-><init>(II)V

    const-string v15, "V2029"

    invoke-static {v15, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v14

    .line 53
    new-instance v15, Landroid/util/Size;

    const/16 v10, 0x5f0

    invoke-direct {v15, v6, v10}, Landroid/util/Size;-><init>(II)V

    const-string v1, "CPH1901"

    invoke-static {v1, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 54
    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v6, v10}, Landroid/util/Size;-><init>(II)V

    const-string v10, "REDMI Y3"

    invoke-static {v10, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    .line 55
    new-instance v15, Landroid/util/Size;

    invoke-direct {v15, v6, v8}, Landroid/util/Size;-><init>(II)V

    const-string v8, "SM-A045M"

    invoke-static {v8, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    .line 56
    new-instance v15, Landroid/util/Size;

    const/16 v6, 0x968

    move-object/from16 v19, v0

    const/16 v0, 0x438

    invoke-direct {v15, v0, v6}, Landroid/util/Size;-><init>(II)V

    const-string v0, "SM-A146U"

    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 57
    new-instance v15, Landroid/util/Size;

    const/16 v6, 0x2d0

    move-object/from16 v21, v0

    const/16 v0, 0x5f0

    invoke-direct {v15, v6, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "CPH1909"

    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 58
    new-instance v15, Landroid/util/Size;

    move-object/from16 v22, v0

    const/16 v0, 0x5f0

    invoke-direct {v15, v6, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "NOKIA 4.2"

    invoke-static {v0, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 59
    new-instance v6, Landroid/util/Size;

    const/16 v15, 0x5a0

    move-object/from16 v23, v0

    const/16 v0, 0xb90

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "SM-G960U1"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 60
    new-instance v6, Landroid/util/Size;

    const/16 v15, 0x438

    move-object/from16 v20, v0

    const/16 v0, 0x968

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "SM-A137F"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 61
    new-instance v6, Landroid/util/Size;

    const/16 v15, 0x2d0

    move-object/from16 v17, v0

    const/16 v0, 0x5f0

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "VIVO 1816"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 62
    new-instance v6, Landroid/util/Size;

    move-object/from16 v18, v0

    const/16 v0, 0x64c

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "INFINIX X6817"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 63
    new-instance v6, Landroid/util/Size;

    move-object/from16 v24, v0

    const/16 v0, 0x640

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "SM-A037F"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 64
    new-instance v6, Landroid/util/Size;

    move-object/from16 v25, v0

    const/16 v0, 0x640

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "NOKIA 2.4"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 65
    new-instance v6, Landroid/util/Size;

    move-object/from16 v26, v0

    const/16 v0, 0x640

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "SM-A125M"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 66
    new-instance v6, Landroid/util/Size;

    const/16 v15, 0x438

    move-object/from16 v16, v0

    const/16 v0, 0x960

    invoke-direct {v6, v15, v0}, Landroid/util/Size;-><init>(II)V

    const-string v0, "INFINIX X670"

    invoke-static {v0, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/16 v6, 0x19

    new-array v6, v6, [Lkotlin/Pair;

    const/4 v15, 0x0

    aput-object v19, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v5, v6, v3

    const/4 v3, 0x4

    aput-object v7, v6, v3

    const/4 v3, 0x5

    aput-object v9, v6, v3

    const/4 v3, 0x6

    aput-object v11, v6, v3

    const/4 v3, 0x7

    aput-object v12, v6, v3

    const/16 v3, 0x8

    aput-object v2, v6, v3

    const/16 v2, 0x9

    aput-object v13, v6, v2

    const/16 v2, 0xa

    aput-object v14, v6, v2

    const/16 v2, 0xb

    aput-object v1, v6, v2

    const/16 v1, 0xc

    aput-object v10, v6, v1

    const/16 v1, 0xd

    aput-object v8, v6, v1

    const/16 v1, 0xe

    aput-object v21, v6, v1

    const/16 v1, 0xf

    aput-object v22, v6, v1

    const/16 v1, 0x10

    aput-object v23, v6, v1

    const/16 v1, 0x11

    aput-object v20, v6, v1

    const/16 v1, 0x12

    aput-object v17, v6, v1

    const/16 v1, 0x13

    aput-object v18, v6, v1

    const/16 v1, 0x14

    aput-object v24, v6, v1

    const/16 v1, 0x15

    aput-object v25, v6, v1

    const/16 v1, 0x16

    aput-object v26, v6, v1

    const/16 v1, 0x17

    aput-object v16, v6, v1

    const/16 v1, 0x18

    aput-object v0, v6, v1

    .line 41
    invoke-static {v6}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMODEL_TO_DISPLAY_SIZE_MAP$cp()Ljava/util/Map;
    .locals 1

    .line 34
    sget-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final getDisplaySize()Landroid/util/Size;
    .locals 3

    .line 37
    sget-object v0, Landroidx/camera/camera2/compat/quirk/SmallDisplaySizeQuirk;->MODEL_TO_DISPLAY_SIZE_MAP:Ljava/util/Map;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "MODEL"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/util/Size;

    return-object v0
.end method
