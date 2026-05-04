.class abstract Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/CachedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseAdapter"
.end annotation


# instance fields
.field itemInners:Ljava/util/ArrayList;

.field final synthetic this$0:Lorg/telegram/ui/CachedMediaLayout;

.field final type:I


# direct methods
.method protected constructor <init>(Lorg/telegram/ui/CachedMediaLayout;I)V
    .locals 0

    .line 497
    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->this$0:Lorg/telegram/ui/CachedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    .line 495
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    .line 498
    iput p2, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->type:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 503
    iget-object v0, p0, Lorg/telegram/ui/CachedMediaLayout$BaseAdapter;->itemInners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/CachedMediaLayout$ItemInner;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1
.end method

.method abstract update()V
.end method
