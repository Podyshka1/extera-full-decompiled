.class Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;
.super Lcom/google/common/collect/ForwardingMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullFilteringHeadersMap"
.end annotation


# instance fields
.field private final headers:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$I7XgKgZNhZQeoxBA3IERa70tPcA(Ljava/lang/String;)Z
    .locals 0

    .line 876
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$TAiAjrah6b1khuI1Ns_F5kZ9ayY(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 881
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 854
    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMap;-><init>()V

    .line 855
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 865
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 896
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->standardContainsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->delegate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map;
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 881
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 901
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->standardEquals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 850
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 871
    :cond_0
    invoke-super {p0, p1}, Lcom/google/common/collect/ForwardingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 906
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->standardHashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 891
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 876
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/upstream/DefaultHttpDataSource$NullFilteringHeadersMap$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->filter(Ljava/util/Set;Lcom/google/common/base/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 886
    invoke-super {p0}, Lcom/google/common/collect/ForwardingMap;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/google/common/collect/ForwardingMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
