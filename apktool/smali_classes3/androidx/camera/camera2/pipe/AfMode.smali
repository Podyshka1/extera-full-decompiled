.class public final Landroidx/camera/camera2/pipe/AfMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/AfMode$Companion;
    }
.end annotation


# static fields
.field private static final AUTO:I

.field private static final CONTINUOUS_PICTURE:I

.field private static final CONTINUOUS_VIDEO:I

.field public static final Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

.field private static final EDOF:I

.field private static final MACRO:I

.field private static final OFF:I

.field private static final values:Ljava/util/List;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Landroidx/camera/camera2/pipe/AfMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/AfMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/AfMode;->Companion:Landroidx/camera/camera2/pipe/AfMode$Companion;

    const/4 v0, 0x0

    .line 40
    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/camera/camera2/pipe/AfMode;->OFF:I

    const/4 v2, 0x1

    .line 41
    invoke-static {v2}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/camera/camera2/pipe/AfMode;->AUTO:I

    const/4 v4, 0x2

    .line 42
    invoke-static {v4}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/camera/camera2/pipe/AfMode;->MACRO:I

    const/4 v6, 0x3

    .line 44
    invoke-static {v6}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v7

    sput v7, Landroidx/camera/camera2/pipe/AfMode;->CONTINUOUS_VIDEO:I

    const/4 v8, 0x4

    .line 46
    invoke-static {v8}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v9

    sput v9, Landroidx/camera/camera2/pipe/AfMode;->CONTINUOUS_PICTURE:I

    const/4 v10, 0x5

    .line 47
    invoke-static {v10}, Landroidx/camera/camera2/pipe/AfMode;->constructor-impl(I)I

    move-result v11

    sput v11, Landroidx/camera/camera2/pipe/AfMode;->EDOF:I

    .line 49
    invoke-static {v1}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v1

    invoke-static {v3}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v3

    invoke-static {v5}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v5

    invoke-static {v7}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v7

    invoke-static {v9}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v9

    invoke-static {v11}, Landroidx/camera/camera2/pipe/AfMode;->box-impl(I)Landroidx/camera/camera2/pipe/AfMode;

    move-result-object v11

    const/4 v12, 0x6

    new-array v12, v12, [Landroidx/camera/camera2/pipe/AfMode;

    aput-object v1, v12, v0

    aput-object v3, v12, v2

    aput-object v5, v12, v4

    aput-object v7, v12, v6

    aput-object v9, v12, v8

    aput-object v11, v12, v10

    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/AfMode;->values:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/AfMode;->value:I

    return-void
.end method

.method public static final synthetic access$getAUTO$cp()I
    .locals 1

    .line 27
    sget v0, Landroidx/camera/camera2/pipe/AfMode;->AUTO:I

    return v0
.end method

.method public static final synthetic access$getValues$cp()Ljava/util/List;
    .locals 1

    .line 27
    sget-object v0, Landroidx/camera/camera2/pipe/AfMode;->values:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/AfMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/AfMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/AfMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/AfMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/AfMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

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

.method public static final isContinuous-impl(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

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

    const-string v1, "AfMode(value="

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

    iget v0, p0, Landroidx/camera/camera2/pipe/AfMode;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/AfMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AfMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AfMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/AfMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/AfMode;->value:I

    return v0
.end method
