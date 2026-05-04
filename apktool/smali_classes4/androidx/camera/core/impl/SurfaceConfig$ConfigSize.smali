.class public final enum Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/SurfaceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigSize"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum MAXIMUM_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum MAXIMUM_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

.field public static final enum X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;


# instance fields
.field private final id:I

.field private final relatedFixedSize:Landroid/util/Size;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 3

    const/16 v0, 0xf

    new-array v0, v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .line 264
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v2, "VGA"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 267
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x400

    const/16 v3, 0x300

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v2, "X_VGA"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v3, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->X_VGA:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 279
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v2, "S720P_16_9"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v3, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S720P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 285
    new-instance v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v5, "PREVIEW"

    const/4 v6, 0x3

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->PREVIEW:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 297
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0x5a0

    const/16 v3, 0x438

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v4, "S1080P_4_3"

    const/4 v5, 0x4

    invoke-direct {v0, v4, v5, v5, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 309
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v4, 0x780

    invoke-direct {v1, v4, v3}, Landroid/util/Size;-><init>(II)V

    const-string v3, "S1080P_16_9"

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v5, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1080P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 321
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v4, v2}, Landroid/util/Size;-><init>(II)V

    const-string v3, "S1440P_4_3"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v4, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 333
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v3, 0xa00

    invoke-direct {v1, v3, v2}, Landroid/util/Size;-><init>(II)V

    const-string v2, "S1440P_16_9"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v3, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->S1440P_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 345
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    new-instance v1, Landroid/util/Size;

    const/16 v2, 0xf00

    const/16 v3, 0x870

    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    const-string v2, "UHD"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v3, v1}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->UHD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 351
    new-instance v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const-string v5, "RECORD"

    const/16 v6, 0x9

    const/16 v7, 0x9

    invoke-direct/range {v4 .. v10}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v4, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->RECORD:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 358
    new-instance v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v6, "MAXIMUM"

    const/16 v7, 0xa

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v11}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v5, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 365
    new-instance v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v7, "MAXIMUM_4_3"

    const/16 v8, 0xb

    const/16 v9, 0xb

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v12}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_4_3:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 372
    new-instance v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v8, "MAXIMUM_16_9"

    const/16 v9, 0xc

    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-direct/range {v7 .. v13}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v7, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->MAXIMUM_16_9:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 379
    new-instance v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v1, "ULTRA_MAXIMUM"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->ULTRA_MAXIMUM:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    .line 382
    new-instance v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v2, "NOT_SUPPORT"

    const/16 v3, 0xe

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->NOT_SUPPORT:Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static {}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroid/util/Size;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->id:I

    iput-object p4, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->relatedFixedSize:Landroid/util/Size;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/util/Size;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 262
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;-><init>(Ljava/lang/String;IILandroid/util/Size;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    const-class v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object p0
.end method

.method public static values()[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;
    .locals 1

    sget-object v0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->$VALUES:[Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 262
    iget v0, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->id:I

    return v0
.end method

.method public final getRelatedFixedSize()Landroid/util/Size;
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/camera/core/impl/SurfaceConfig$ConfigSize;->relatedFixedSize:Landroid/util/Size;

    return-object v0
.end method
