.class public final enum Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/adapter/SupportedSurfaceCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CheckingMethod"
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

.field public static final enum WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

.field public static final enum WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

.field public static final enum WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;


# direct methods
.method private static final synthetic $values()[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    sget-object v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2391
    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const-string v1, "WITHOUT_FEATURE_COMBO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 2392
    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const-string v1, "WITH_FEATURE_COMBO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITH_FEATURE_COMBO:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    .line 2393
    new-instance v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    const-string v1, "WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->WITHOUT_FEATURE_COMBO_FIRST_AND_THEN_WITH_IT:Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    invoke-static {}, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->$values()[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->$VALUES:[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2390
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
    .locals 1

    const-class v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object p0
.end method

.method public static values()[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;
    .locals 1

    sget-object v0, Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;->$VALUES:[Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/camera/camera2/adapter/SupportedSurfaceCombination$CheckingMethod;

    return-object v0
.end method
