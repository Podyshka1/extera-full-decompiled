.class Lorg/telegram/ui/ReportBottomSheet$1;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ReportBottomSheet;-><init>(ZLandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;JZLjava/util/ArrayList;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ReportBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ReportBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$1;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected canScrollForward(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onStartTracking()V
    .locals 2

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ReportBottomSheet$Page;

    .line 144
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgeteditTextCell(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-static {v0}, Lorg/telegram/ui/ReportBottomSheet$Page;->-$$Nest$fgeteditTextCell(Lorg/telegram/ui/ReportBottomSheet$Page;)Lorg/telegram/ui/Cells/EditTextCell;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 0

    .line 131
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTabAnimationUpdate(Z)V

    .line 132
    iget-object p1, p0, Lorg/telegram/ui/ReportBottomSheet$1;->this$0:Lorg/telegram/ui/ReportBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/ReportBottomSheet;->access$000(Lorg/telegram/ui/ReportBottomSheet;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
