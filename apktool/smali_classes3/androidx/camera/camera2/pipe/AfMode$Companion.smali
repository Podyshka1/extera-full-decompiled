.class public final Landroidx/camera/camera2/pipe/AfMode$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/pipe/AfMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/camera/camera2/pipe/AfMode$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromIntOrNull-MKXwA8g(I)Landroidx/camera/camera2/pipe/AfMode;
    .locals 3

    .line 52
    invoke-virtual {p0}, Landroidx/camera/camera2/pipe/AfMode$Companion;->getValues()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 295
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroidx/camera/camera2/pipe/AfMode;

    invoke-virtual {v2}, Landroidx/camera/camera2/pipe/AfMode;->unbox-impl()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 296
    :goto_0
    check-cast v1, Landroidx/camera/camera2/pipe/AfMode;

    return-object v1
.end method

.method public final getAUTO-vHZNRtE()I
    .locals 1

    .line 41
    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getAUTO$cp()I

    move-result v0

    return v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1

    .line 48
    invoke-static {}, Landroidx/camera/camera2/pipe/AfMode;->access$getValues$cp()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
