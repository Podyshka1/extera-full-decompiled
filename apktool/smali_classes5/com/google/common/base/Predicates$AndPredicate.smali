.class final Lcom/google/common/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndPredicate"
.end annotation


# instance fields
.field private final components:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/common/base/Predicates$1;)V
    .locals 0

    .line 415
    invoke-direct {p0, p1}, Lcom/google/common/base/Predicates$AndPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 426
    :goto_0
    iget-object v2, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 427
    iget-object v2, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Predicate;

    invoke-interface {v2, p1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 442
    instance-of v0, p1, Lcom/google/common/base/Predicates$AndPredicate;

    if-eqz v0, :cond_0

    .line 443
    check-cast p1, Lcom/google/common/base/Predicates$AndPredicate;

    .line 444
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    iget-object p1, p1, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 451
    const-string v0, "and"

    iget-object v1, p0, Lcom/google/common/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->access$800(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
