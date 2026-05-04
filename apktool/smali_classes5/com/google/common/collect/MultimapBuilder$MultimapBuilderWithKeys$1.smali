.class Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;
.super Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->arrayListValues(I)Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

.field final synthetic val$expectedValuesPerKey:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;I)V
    .locals 0

    .line 297
    iput p2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    iput-object p1, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    invoke-direct {p0}, Lcom/google/common/collect/MultimapBuilder$ListMultimapBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ListMultimap;
    .locals 3

    .line 300
    iget-object v0, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->this$0:Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    .line 301
    invoke-virtual {v0}, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->createMap()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;

    iget v2, p0, Lcom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys$1;->val$expectedValuesPerKey:I

    invoke-direct {v1, v2}, Lcom/google/common/collect/MultimapBuilder$ArrayListSupplier;-><init>(I)V

    .line 300
    invoke-static {v0, v1}, Lcom/google/common/collect/Multimaps;->newListMultimap(Ljava/util/Map;Lcom/google/common/base/Supplier;)Lcom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method
