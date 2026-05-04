.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar;Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;Lorg/telegram/ui/ActionBar/FloatingToolbar;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    iput-object p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;->val$this$0:Lorg/telegram/ui/ActionBar/FloatingToolbar;

    invoke-direct {p0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$3;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmIsOverflowOpen(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 396
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
