.class Lorg/telegram/ui/ChannelAdminLogActivity$16;
.super Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelAdminLogActivity;->createMenu(Landroid/view/View;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelAdminLogActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelAdminLogActivity;Landroid/content/Context;)V
    .locals 0

    .line 1785
    iput-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$16;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1788
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/ChannelAdminLogActivity$16;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcloseMenu(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    .line 1791
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1796
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 1798
    iget-object p1, p0, Lorg/telegram/ui/ChannelAdminLogActivity$16;->this$0:Lorg/telegram/ui/ChannelAdminLogActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChannelAdminLogActivity;->-$$Nest$mcloseMenu(Lorg/telegram/ui/ChannelAdminLogActivity;)V

    :cond_0
    return v0
.end method
