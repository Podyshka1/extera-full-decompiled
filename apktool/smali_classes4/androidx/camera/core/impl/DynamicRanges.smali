.class public final Landroidx/camera/core/impl/DynamicRanges;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/camera/core/impl/DynamicRanges;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/DynamicRanges;

    invoke-direct {v0}, Landroidx/camera/core/impl/DynamicRanges;-><init>()V

    sput-object v0, Landroidx/camera/core/impl/DynamicRanges;->INSTANCE:Landroidx/camera/core/impl/DynamicRanges;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final canMatchBitDepth(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z
    .locals 2

    .line 97
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    .line 98
    const-string v1, "Fully specified range is not actually fully specified."

    .line 96
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p1

    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->getBitDepth()I

    move-result p2

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final canMatchEncoding(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z
    .locals 2

    .line 112
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    .line 113
    const-string v1, "Fully specified range is not actually fully specified."

    .line 111
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 119
    :cond_0
    invoke-virtual {p2}, Landroidx/camera/core/DynamicRange;->getEncoding()I

    move-result p2

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eq p2, v0, :cond_1

    return v0

    :cond_1
    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static final canResolve(Landroidx/camera/core/DynamicRange;Ljava/util/Set;)Z
    .locals 3

    const-string v0, "dynamicRangeToTest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fullySpecifiedDynamicRanges"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Landroidx/camera/core/DynamicRange;->isFullySpecified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 295
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/camera/core/DynamicRange;

    .line 41
    sget-object v2, Landroidx/camera/core/impl/DynamicRanges;->INSTANCE:Landroidx/camera/core/impl/DynamicRanges;

    invoke-direct {v2, p0, v1}, Landroidx/camera/core/impl/DynamicRanges;->canResolveUnderSpecifiedTo(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private final canResolveUnderSpecifiedTo(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/DynamicRanges;->canMatchBitDepth(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0, p1, p2}, Landroidx/camera/core/impl/DynamicRanges;->canMatchEncoding(Landroidx/camera/core/DynamicRange;Landroidx/camera/core/DynamicRange;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
