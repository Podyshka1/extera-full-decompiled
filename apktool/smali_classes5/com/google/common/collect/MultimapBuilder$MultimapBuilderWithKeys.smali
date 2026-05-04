.class public abstract Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MultimapBuilderWithKeys"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arrayListValues()Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1

    const/4 v0, 0x2

    .line 286
    invoke-virtual {p0, v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public arrayListValues(I)Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
    .locals 1

    .line 296
    const-string v0, "expectedValuesPerKey"

    invoke-static {p1, v0}, Lcom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 297
    new-instance v0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;-><init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V

    return-object v0
.end method

.method abstract createMap()Ljava/util/Map;
.end method
