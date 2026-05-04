.class public Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;
.super Lorg/telegram/ui/Components/UItem$UItemFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/exteragram/messenger/plugins/ui/components/PluginCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/telegram/ui/Components/UItem$UItemFactory;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 413
    new-instance v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;

    invoke-direct {v0}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;-><init>()V

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem$UItemFactory;->setup(Lorg/telegram/ui/Components/UItem$UItemFactory;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 411
    invoke-direct {p0}, Lorg/telegram/ui/Components/UItem$UItemFactory;-><init>()V

    return-void
.end method

.method public static asPlugin(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;)Lorg/telegram/ui/Components/UItem;
    .locals 3

    .line 451
    const-class v0, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;

    invoke-static {v0}, Lorg/telegram/ui/Components/UItem;->ofFactory(Ljava/lang/Class;)Lorg/telegram/ui/Components/UItem;

    move-result-object v0

    .line 452
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/UItem;->id:I

    .line 453
    iput-object p0, v0, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    .line 454
    iput-object p1, v0, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    .line 455
    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->isNotResponding()Z

    move-result p1

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/exteragram/messenger/plugins/Plugin;->hasError()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x4

    :cond_1
    or-int p0, p1, v2

    iput p0, v0, Lorg/telegram/ui/Components/UItem;->intValue:I

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lorg/telegram/ui/Components/UItem;ZLorg/telegram/ui/Components/UniversalAdapter;Lorg/telegram/ui/Components/UniversalRecyclerView;)V
    .locals 0

    .line 423
    instance-of p3, p1, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    if-eqz p3, :cond_0

    check-cast p1, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    .line 424
    iget-object p3, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    check-cast p3, Lcom/exteragram/messenger/plugins/Plugin;

    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object2:Ljava/lang/Object;

    check-cast p2, Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;

    invoke-virtual {p1, p3, p2}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;->set(Lcom/exteragram/messenger/plugins/Plugin;Lcom/exteragram/messenger/plugins/ui/components/PluginCellDelegate;)V

    :cond_0
    return-void
.end method

.method public contentsEquals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 3

    .line 435
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->id:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 436
    :cond_0
    iget v0, p1, Lorg/telegram/ui/Components/UItem;->intValue:I

    iget v1, p2, Lorg/telegram/ui/Components/UItem;->intValue:I

    if-eq v0, v1, :cond_1

    return v2

    .line 438
    :cond_1
    iget-object p1, p1, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p1, Lcom/exteragram/messenger/plugins/Plugin;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/exteragram/messenger/plugins/Plugin;

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 439
    :goto_0
    iget-object p2, p2, Lorg/telegram/ui/Components/UItem;->object:Ljava/lang/Object;

    instance-of v0, p2, Lcom/exteragram/messenger/plugins/Plugin;

    if-eqz v0, :cond_3

    move-object v1, p2

    check-cast v1, Lcom/exteragram/messenger/plugins/Plugin;

    :cond_3
    if-eqz p1, :cond_7

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    if-eq p1, v1, :cond_6

    .line 442
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_7
    :goto_2
    return v2
.end method

.method public bridge synthetic createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;
    .locals 0

    .line 411
    invoke-virtual/range {p0 .. p5}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell$Factory;->createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;Lorg/telegram/ui/Components/RecyclerListView;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lcom/exteragram/messenger/plugins/ui/components/PluginCell;
    .locals 0

    .line 418
    new-instance p2, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;

    invoke-direct {p2, p1}, Lcom/exteragram/messenger/plugins/ui/components/PluginCell;-><init>(Landroid/content/Context;)V

    return-object p2
.end method

.method public equals(Lorg/telegram/ui/Components/UItem;Lorg/telegram/ui/Components/UItem;)Z
    .locals 0

    .line 430
    iget p1, p1, Lorg/telegram/ui/Components/UItem;->id:I

    iget p2, p2, Lorg/telegram/ui/Components/UItem;->id:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isClickable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
