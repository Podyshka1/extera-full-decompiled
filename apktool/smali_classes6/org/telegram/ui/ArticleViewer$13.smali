.class Lorg/telegram/ui/ArticleViewer$13;
.super Lorg/telegram/ui/web/WebActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ArticleViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 3859
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/web/WebActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getInstantViewLoader()Lorg/telegram/ui/web/WebInstantView$Loader;
    .locals 2

    .line 3914
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$PageLayout;->loadInstant()Lorg/telegram/ui/web/WebInstantView$Loader;

    move-result-object v0

    return-object v0
.end method

.method protected onAddressColorsChanged(II)V
    .locals 1

    .line 3882
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3883
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/web/AddressBarList;->setColors(II)V

    :cond_0
    return-void
.end method

.method protected onAddressingProgress(F)V
    .locals 1

    .line 3889
    invoke-super {p0, p1}, Lorg/telegram/ui/web/WebActionBar;->onAddressingProgress(F)V

    .line 3890
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3891
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/web/AddressBarList;->setOpenProgress(F)V

    .line 3893
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz p1, :cond_1

    .line 3894
    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    :cond_1
    return-void
.end method

.method protected onColorsUpdated()V
    .locals 1

    .line 3871
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->sheet:Lorg/telegram/ui/ArticleViewer$Sheet;

    if-eqz v0, :cond_0

    .line 3872
    invoke-virtual {v0}, Lorg/telegram/ui/ArticleViewer$Sheet;->checkNavColor()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 3900
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/web/WebActionBar;->onMeasure(II)V

    .line 3901
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method protected onScrolledProgress(F)V
    .locals 2

    .line 3877
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pages:[Lorg/telegram/ui/ArticleViewer$PageLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ArticleViewer$PageLayout;->addProgress(F)V

    return-void
.end method

.method protected onSearchUpdated(Ljava/lang/String;)V
    .locals 1

    .line 3867
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$mprocessSearch(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;)V

    return-void
.end method

.method public showAddress(ZZ)V
    .locals 0

    .line 3906
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/web/WebActionBar;->showAddress(ZZ)V

    .line 3907
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3908
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$13;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->-$$Nest$fgetaddressBarList(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/web/AddressBarList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/web/AddressBarList;->setOpened(Z)V

    :cond_0
    return-void
.end method
