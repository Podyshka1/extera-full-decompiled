.class Lorg/telegram/ui/PeerColorActivity$4;
.super Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PeerColorActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastBtnColor:I

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p1, 0x0

    .line 1534
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$4;->lastBtnColor:I

    return-void
.end method


# virtual methods
.method protected onUpdateColor()V
    .locals 2

    .line 1527
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PeerColorActivity;->updateLightStatusBar()V

    .line 1528
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$4;->updateActionBarButtonsColor()V

    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgettabsView(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/FilledTabsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1530
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgettabsView(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/FilledTabsView;

    move-result-object v0

    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->getTabsViewBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/FilledTabsView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public updateActionBarButtonsColor()V
    .locals 4

    .line 1536
    invoke-virtual {p0}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->getActionBarButtonColor()I

    move-result v0

    .line 1537
    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->lastBtnColor:I

    if-eq v1, v0, :cond_1

    .line 1538
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetbackButton(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1539
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->lastBtnColor:I

    .line 1540
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetbackButton(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1542
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetdayNightItem(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1543
    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$4;->lastBtnColor:I

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$4;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetdayNightItem(Lorg/telegram/ui/PeerColorActivity;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method
