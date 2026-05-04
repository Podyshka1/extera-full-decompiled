.class Lcom/google/common/collect/Sets$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$1;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final itr1:Ljava/util/Iterator;

.field final itr2:Ljava/util/Iterator;

.field final synthetic this$0:Lcom/google/common/collect/Sets$1;

.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$1;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 840
    iput-object p2, p0, Lcom/google/common/collect/Sets$1$1;->val$set1:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/common/collect/Sets$1$1;->val$set2:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->this$0:Lcom/google/common/collect/Sets$1;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 841
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    .line 842
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected computeNext()Ljava/lang/Object;
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->itr1:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/google/common/collect/Sets$1$1;->itr2:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/google/common/collect/Sets$1$1;->val$set1:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 855
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
