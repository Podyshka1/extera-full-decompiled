.class Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;


# direct methods
.method public static synthetic $r8$lambda$LUTilU3rkOEUjmtXHG-1chqCQuQ(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    .line 90
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell$1;->this$0:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canPerformActions()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public didSelectTab(Lorg/telegram/ui/Components/FilterTabsView$TabView;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTabCounter(I)I
    .locals 2

    .line 87
    sget-boolean v0, Lcom/exteragram/messenger/ExteraConfig;->tabCounter:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell$1;->this$0:Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;

    invoke-static {v0}, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;->-$$Nest$fgetidsWithCounters(Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/exteragram/messenger/preferences/appearance/components/FilterTabsPreviewCell$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p1, v1}, Lj$/util/Map$-EL;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public isTabMenuVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDeletePressed(I)V
    .locals 0

    return-void
.end method

.method public onPageReorder(II)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(F)V
    .locals 0

    return-void
.end method

.method public onPageSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;Z)V
    .locals 0

    return-void
.end method

.method public onSamePageSelected()V
    .locals 0

    return-void
.end method

.method public synthetic onTabSelected(Lorg/telegram/ui/Components/FilterTabsView$Tab;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate$-CC;->$default$onTabSelected(Lorg/telegram/ui/Components/FilterTabsView$FilterTabsViewDelegate;Lorg/telegram/ui/Components/FilterTabsView$Tab;ZZ)V

    return-void
.end method
