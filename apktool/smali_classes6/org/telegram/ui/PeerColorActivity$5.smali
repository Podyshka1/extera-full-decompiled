.class Lorg/telegram/ui/PeerColorActivity$5;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
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
.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PeerColorActivity;Landroid/content/Context;)V
    .locals 0

    .line 1552
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTabAnimationUpdate(Z)V
    .locals 2

    .line 1555
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgettabsView(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/FilledTabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetviewPager(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilledTabsView;->setSelected(F)V

    .line 1556
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {p1}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetcolorBar(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$5;->this$0:Lorg/telegram/ui/PeerColorActivity;

    invoke-static {v0}, Lorg/telegram/ui/PeerColorActivity;->-$$Nest$fgetviewPager(Lorg/telegram/ui/PeerColorActivity;)Lorg/telegram/ui/Components/ViewPagerFixed;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/telegram/ui/PeerColorActivity$ColoredActionBar;->setProgressToGradient(F)V

    return-void
.end method
