.class final Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/ImmutableSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeySet"
.end annotation


# instance fields
.field private final transient list:Lcom/google/common/collect/ImmutableList;

.field private final transient map:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    .line 523
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 524
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    .line 525
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public asList()Lcom/google/common/collect/ImmutableList;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->list:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1

    .line 535
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method isPartialView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 519
    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/ImmutableMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
