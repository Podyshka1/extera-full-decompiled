.class public abstract Lorg/telegram/ui/Components/UItem$UItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/UItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UItemFactory"
.end annotation


# instance fields
.field private cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 900
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactoryViewType()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfputfactoryViewType(I)V

    iput v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    return-void
.end method

.method public static setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V
    .locals 3

    .line 886
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactoryInstances()Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfputfactoryInstances(Ljava/util/HashMap;)V

    .line 887
    :cond_0
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactories()Landroid/util/LongSparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfputfactories(Landroid/util/LongSparseArray;)V

    .line 888
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 889
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactoryInstances()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 890
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactoryInstances()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-static {}, Lorg/telegram/ui/Components/UItem;->-$$Nest$sfgetfactories()Landroid/util/LongSparseArray;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->viewType:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public attachedView(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;Lorg/telegram/ui/Components/UItem;)V
    .locals 0

    return-void
.end method

.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 947
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->itemContentEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/telegram/ui/Components/RecyclerListView;",
            "II",
            "Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 943
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/UItem;->itemEquals(Lorg/telegram/ui/Components/UItem;)Z

    move-result p1

    return p1
.end method

.method protected getCached()Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/view/View;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public precache(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 8

    if-nez p1, :cond_0

    goto :goto_1

    .line 909
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x0

    .line 910
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, p5

    if-ge v0, v1, :cond_2

    .line 911
    iget-object v1, p0, Lorg/telegram/ui/Components/UItem$UItemFactory;->cache:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/UItem$UItemFactory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public precache(Lorg/telegram/ui/ActionBar/BaseFragment;I)V
    .locals 6

    .line 904
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v2

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UItem$UItemFactory;->precache(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method
