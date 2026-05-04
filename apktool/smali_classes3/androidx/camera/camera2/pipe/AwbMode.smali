.class public final Landroidx/camera/camera2/pipe/AwbMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/AwbMode$Companion;
    }
.end annotation


# static fields
.field private static final AUTO:I

.field private static final CLOUDY_DAYLIGHT:I

.field public static final Companion:Landroidx/camera/camera2/pipe/AwbMode$Companion;

.field private static final DAYLIGHT:I

.field private static final FLUORESCENT:I

.field private static final INCANDESCENT:I

.field private static final OFF:I

.field private static final SHADE:I

.field private static final TWILIGHT:I

.field private static final values:Ljava/util/List;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroidx/camera/camera2/pipe/AwbMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/AwbMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/AwbMode;->Companion:Landroidx/camera/camera2/pipe/AwbMode$Companion;

    const/4 v0, 0x0

    .line 115
    invoke-static {v0}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/camera/camera2/pipe/AwbMode;->OFF:I

    const/4 v2, 0x1

    .line 116
    invoke-static {v2}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/camera/camera2/pipe/AwbMode;->AUTO:I

    const/4 v4, 0x6

    .line 118
    invoke-static {v4}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/camera/camera2/pipe/AwbMode;->CLOUDY_DAYLIGHT:I

    const/4 v6, 0x5

    .line 119
    invoke-static {v6}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v7

    sput v7, Landroidx/camera/camera2/pipe/AwbMode;->DAYLIGHT:I

    const/4 v8, 0x2

    .line 120
    invoke-static {v8}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v9

    sput v9, Landroidx/camera/camera2/pipe/AwbMode;->INCANDESCENT:I

    const/4 v10, 0x3

    .line 121
    invoke-static {v10}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v11

    sput v11, Landroidx/camera/camera2/pipe/AwbMode;->FLUORESCENT:I

    const/16 v12, 0x8

    .line 122
    invoke-static {v12}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v13

    sput v13, Landroidx/camera/camera2/pipe/AwbMode;->SHADE:I

    const/4 v14, 0x7

    .line 123
    invoke-static {v14}, Landroidx/camera/camera2/pipe/AwbMode;->constructor-impl(I)I

    move-result v15

    sput v15, Landroidx/camera/camera2/pipe/AwbMode;->TWILIGHT:I

    .line 126
    invoke-static {v1}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v1

    invoke-static {v3}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v3

    invoke-static {v5}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v5

    invoke-static {v7}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v7

    invoke-static {v9}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v9

    invoke-static {v11}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v11

    invoke-static {v13}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v13

    invoke-static {v15}, Landroidx/camera/camera2/pipe/AwbMode;->box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;

    move-result-object v15

    new-array v12, v12, [Landroidx/camera/camera2/pipe/AwbMode;

    aput-object v1, v12, v0

    aput-object v3, v12, v2

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x4

    aput-object v9, v12, v0

    aput-object v11, v12, v6

    aput-object v13, v12, v4

    aput-object v15, v12, v14

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/AwbMode;->values:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    return-void
.end method

.method public static final synthetic access$getValues$cp()Ljava/util/List;
    .locals 1

    .line 107
    sget-object v0, Landroidx/camera/camera2/pipe/AwbMode;->values:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/AwbMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/AwbMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/AwbMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/AwbMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/AwbMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AwbMode;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

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

    const-string v1, "AwbMode(value="

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

    iget v0, p0, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/AwbMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AwbMode;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AwbMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AwbMode;->value:I

    return v0
.end method
