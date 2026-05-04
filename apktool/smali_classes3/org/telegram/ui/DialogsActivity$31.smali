.class Lorg/telegram/ui/DialogsActivity$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/Bulletin$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .locals 0

    .line 7332
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic allowLayoutChanges()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$allowLayoutChanges(Lorg/telegram/ui/Components/Bulletin$Delegate;)Z

    move-result v0

    return v0
.end method

.method public bottomOffsetAnimated()Z
    .locals 1

    .line 7367
    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic clipWithGradient(I)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$clipWithGradient(Lorg/telegram/ui/Components/Bulletin$Delegate;I)Z

    move-result p1

    return p1
.end method

.method public getBottomOffset(I)I
    .locals 1

    .line 7362
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mcalculateListViewPaddingBottom(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {}, Lcom/exteragram/messenger/ExteraConfig$BottomNavigationBar;->floating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetCurrentUndoViewOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr p1, v0

    return p1
.end method

.method public getTopOffset(I)I
    .locals 3

    .line 7352
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$10600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$10700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 7353
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetfilterTabsView(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr p1, v1

    .line 7354
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgettopPanelLayout(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/DialogsActivityTopPanelLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    add-int/2addr p1, v1

    .line 7355
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, v1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCell:Lorg/telegram/ui/Stories/DialogStoriesCell;

    if-eqz v2, :cond_3

    iget-boolean v1, v1, Lorg/telegram/ui/DialogsActivity;->dialogStoriesCellVisible:Z

    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getCollapsedProgress()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x42a20000    # 81.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :cond_3
    add-int/2addr p1, v0

    const/high16 v0, 0x42400000    # 48.0f

    .line 7356
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method public onBottomOffsetChange(F)V
    .locals 2

    .line 7335
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7338
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetnavigationBarHeight(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mgetCurrentBottomTabsOffset(Lorg/telegram/ui/DialogsActivity;)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fputadditionalFloatingTranslation(Lorg/telegram/ui/DialogsActivity;F)V

    .line 7339
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$mupdateFloatingButtonOffset(Lorg/telegram/ui/DialogsActivity;)V

    return-void
.end method

.method public synthetic onHide(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/telegram/ui/Components/Bulletin$Delegate$-CC;->$default$onHide(Lorg/telegram/ui/Components/Bulletin$Delegate;Lorg/telegram/ui/Components/Bulletin;)V

    return-void
.end method

.method public onShow(Lorg/telegram/ui/Components/Bulletin;)V
    .locals 2

    .line 7344
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 7345
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$31;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->-$$Nest$fgetundoView(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object p1

    aget-object p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/UndoView;->hide(ZI)V

    :cond_0
    return-void
.end method
