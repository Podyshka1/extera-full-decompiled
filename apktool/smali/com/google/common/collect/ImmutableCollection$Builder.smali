.class public abstract Lcom/google/common/collect/ImmutableCollection$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static expandedCapacity(II)I
    .locals 1

    if-ltz p1, :cond_3

    if-gt p1, p0, :cond_0

    return p0

    :cond_0
    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    if-ge p0, p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 408
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    :cond_1
    if-gez p0, :cond_2

    const p0, 0x7fffffff

    :cond_2
    return p0

    .line 401
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot store more than Integer.MAX_VALUE elements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableCollection$Builder;
    .locals 1

    .line 461
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableCollection$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableCollection$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
