.class Lcom/google/common/collect/AbstractMapBasedMultimap$1;
.super Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractMapBasedMultimap;->valueIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V
    .locals 0

    .line 1213
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap$1;->this$0:Lcom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p2
.end method
