.class abstract Lcom/google/common/collect/Platform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static copy([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p0, p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static newArray([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 1

    .line 100
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 101
    :goto_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static newHashMapWithExpectedSize(I)Ljava/util/Map;
    .locals 0

    .line 36
    invoke-static {p0}, Lcom/google/common/collect/CompactHashMap;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;

    move-result-object p0

    return-object p0
.end method
