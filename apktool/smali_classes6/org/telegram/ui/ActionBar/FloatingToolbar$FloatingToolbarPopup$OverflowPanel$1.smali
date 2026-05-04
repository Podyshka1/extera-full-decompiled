.class Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;-><init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

.field final synthetic val$this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel$1;->this$2:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup$OverflowPanel$1;->val$this$1:Lorg/telegram/ui/ActionBar/FloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int v4, p1, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
