.class public final Landroidx/camera/camera2/pipe/AeMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/AeMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

.field private static final OFF:I

.field private static final ON:I

.field private static final ON_ALWAYS_FLASH:I

.field private static final ON_AUTO_FLASH:I

.field private static final ON_AUTO_FLASH_REDEYE:I

.field private static final ON_EXTERNAL_FLASH:I

.field private static final ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY:I

.field private static final values:Ljava/util/List;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Landroidx/camera/camera2/pipe/AeMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/AeMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/AeMode;->Companion:Landroidx/camera/camera2/pipe/AeMode$Companion;

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/camera/camera2/pipe/AeMode;->OFF:I

    const/4 v2, 0x1

    .line 66
    invoke-static {v2}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/camera/camera2/pipe/AeMode;->ON:I

    const/4 v4, 0x3

    .line 67
    invoke-static {v4}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/camera/camera2/pipe/AeMode;->ON_ALWAYS_FLASH:I

    const/4 v6, 0x2

    .line 68
    invoke-static {v6}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v7

    sput v7, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH:I

    const/4 v8, 0x4

    .line 70
    invoke-static {v8}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v9

    sput v9, Landroidx/camera/camera2/pipe/AeMode;->ON_AUTO_FLASH_REDEYE:I

    const/4 v10, 0x5

    .line 72
    invoke-static {v10}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v11

    sput v11, Landroidx/camera/camera2/pipe/AeMode;->ON_EXTERNAL_FLASH:I

    const/4 v12, 0x6

    .line 74
    invoke-static {v12}, Landroidx/camera/camera2/pipe/AeMode;->constructor-impl(I)I

    move-result v13

    sput v13, Landroidx/camera/camera2/pipe/AeMode;->ON_LOW_LIGHT_BOOST_BRIGHTNESS_PRIORITY:I

    .line 78
    invoke-static {v1}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v1

    .line 79
    invoke-static {v3}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v3

    .line 80
    invoke-static {v7}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v7

    .line 81
    invoke-static {v5}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v5

    .line 82
    invoke-static {v9}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v9

    .line 83
    invoke-static {v11}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v11

    .line 84
    invoke-static {v13}, Landroidx/camera/camera2/pipe/AeMode;->box-impl(I)Landroidx/camera/camera2/pipe/AeMode;

    move-result-object v13

    const/4 v14, 0x7

    new-array v14, v14, [Landroidx/camera/camera2/pipe/AeMode;

    aput-object v1, v14, v0

    aput-object v3, v14, v2

    aput-object v7, v14, v6

    aput-object v5, v14, v4

    aput-object v9, v14, v8

    aput-object v11, v14, v10

    aput-object v13, v14, v12

    .line 77
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    return-void
.end method

.method public static final synthetic access$getOFF$cp()I
    .locals 1

    .line 57
    sget v0, Landroidx/camera/camera2/pipe/AeMode;->OFF:I

    return v0
.end method

.method public static final synthetic access$getON$cp()I
    .locals 1

    .line 57
    sget v0, Landroidx/camera/camera2/pipe/AeMode;->ON:I

    return v0
.end method

.method public static final synthetic access$getValues$cp()Ljava/util/List;
    .locals 1

    .line 57
    sget-object v0, Landroidx/camera/camera2/pipe/AeMode;->values:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/AeMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/AeMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/AeMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/AeMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/AeMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AeMode;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    return p0
.end method

.method public static final isOn-impl(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AeMode(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/AeMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AeMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AeMode;->value:I

    return v0
.end method
