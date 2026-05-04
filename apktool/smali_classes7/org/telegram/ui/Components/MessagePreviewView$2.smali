.class Lorg/telegram/ui/Components/MessagePreviewView$2;
.super Lorg/telegram/ui/Components/ViewPagerFixed;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MessagePreviewView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessagePreviewParams;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ILorg/telegram/ui/Components/MessagePreviewView$ResourcesDelegate;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/MessagePreviewView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MessagePreviewView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1794
    iput-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$2;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ViewPagerFixed;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onScrollEnd()V
    .locals 2

    .line 1809
    iget-object v0, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v1, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v1, :cond_0

    .line 1810
    check-cast v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object v0, v0, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->stopScrolling()V

    :cond_0
    return-void
.end method

.method public onTabAnimationUpdate(Z)V
    .locals 1

    .line 1797
    iget-object p1, p0, Lorg/telegram/ui/Components/MessagePreviewView$2;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    iget-object v0, p1, Lorg/telegram/ui/Components/MessagePreviewView;->tabsView:Lorg/telegram/ui/Components/MessagePreviewView$TabsView;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView;->viewPager:Lorg/telegram/ui/Components/ViewPagerFixed;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->getPositionAnimated()F

    move-result p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/MessagePreviewView$TabsView;->setSelectedTab(F)V

    .line 1799
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v0, :cond_0

    .line 1800
    check-cast p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    .line 1802
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ViewPagerFixed;->viewPages:[Landroid/view/View;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    instance-of v0, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    if-eqz v0, :cond_1

    .line 1803
    check-cast p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;

    iget-object p1, p1, Lorg/telegram/ui/Components/MessagePreviewView$Page;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ChatListTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->onParentScrolled()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1816
    iget-object v0, p0, Lorg/telegram/ui/Components/MessagePreviewView$2;->this$0:Lorg/telegram/ui/Components/MessagePreviewView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MessagePreviewView;->isTouchedHandle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1819
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/ViewPagerFixed;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
