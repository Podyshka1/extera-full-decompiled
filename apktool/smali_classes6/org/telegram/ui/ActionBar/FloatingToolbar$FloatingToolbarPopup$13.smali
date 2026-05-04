.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->createOverflowPanel()Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Landroid/content/Context;I)V
    .locals 0

    .line 1150
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1154
    iget-object p3, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {p3}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelViewHelper(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;

    move-result-object p3

    invoke-interface {p0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MenuItem;

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$13;->this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;->-$$Nest$fgetmOverflowPanelSize(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p3, p1, v0, p2}, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanelViewHelper;->getView(Landroid/view/MenuItem;ILandroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
