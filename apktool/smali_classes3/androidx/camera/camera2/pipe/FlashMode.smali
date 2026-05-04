.class public final Landroidx/camera/camera2/pipe/FlashMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/camera2/pipe/FlashMode$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/camera/camera2/pipe/FlashMode$Companion;

.field private static final OFF:I

.field private static final SINGLE:I

.field private static final TORCH:I

.field private static final values:Ljava/util/List;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/camera/camera2/pipe/FlashMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/camera/camera2/pipe/FlashMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/camera/camera2/pipe/FlashMode;->Companion:Landroidx/camera/camera2/pipe/FlashMode$Companion;

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Landroidx/camera/camera2/pipe/FlashMode;->constructor-impl(I)I

    move-result v1

    sput v1, Landroidx/camera/camera2/pipe/FlashMode;->OFF:I

    const/4 v2, 0x1

    .line 139
    invoke-static {v2}, Landroidx/camera/camera2/pipe/FlashMode;->constructor-impl(I)I

    move-result v3

    sput v3, Landroidx/camera/camera2/pipe/FlashMode;->SINGLE:I

    const/4 v4, 0x2

    .line 140
    invoke-static {v4}, Landroidx/camera/camera2/pipe/FlashMode;->constructor-impl(I)I

    move-result v5

    sput v5, Landroidx/camera/camera2/pipe/FlashMode;->TORCH:I

    .line 142
    invoke-static {v1}, Landroidx/camera/camera2/pipe/FlashMode;->box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v1

    invoke-static {v3}, Landroidx/camera/camera2/pipe/FlashMode;->box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v3

    invoke-static {v5}, Landroidx/camera/camera2/pipe/FlashMode;->box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroidx/camera/camera2/pipe/FlashMode;

    aput-object v1, v6, v0

    aput-object v3, v6, v2

    aput-object v5, v6, v4

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/camera/camera2/pipe/FlashMode;->values:Ljava/util/List;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    return-void
.end method

.method public static final synthetic access$getOFF$cp()I
    .locals 1

    .line 134
    sget v0, Landroidx/camera/camera2/pipe/FlashMode;->OFF:I

    return v0
.end method

.method public static final synthetic access$getTORCH$cp()I
    .locals 1

    .line 134
    sget v0, Landroidx/camera/camera2/pipe/FlashMode;->TORCH:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/camera/camera2/pipe/FlashMode;
    .locals 1

    new-instance v0, Landroidx/camera/camera2/pipe/FlashMode;

    invoke-direct {v0, p0}, Landroidx/camera/camera2/pipe/FlashMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/camera/camera2/pipe/FlashMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/camera/camera2/pipe/FlashMode;

    invoke-virtual {p1}, Landroidx/camera/camera2/pipe/FlashMode;->unbox-impl()I

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

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlashMode(value="

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

    iget v0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    invoke-static {v0, p1}, Landroidx/camera/camera2/pipe/FlashMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/FlashMode;->hashCode-impl(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    invoke-static {v0}, Landroidx/camera/camera2/pipe/FlashMode;->toString-impl(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    iget v0, p0, Landroidx/camera/camera2/pipe/FlashMode;->value:I

    return v0
.end method
