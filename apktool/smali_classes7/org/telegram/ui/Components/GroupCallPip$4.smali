.class Lorg/telegram/ui/Components/GroupCallPip$4;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/GroupCallPip;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/GroupCallPip;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/GroupCallPip;Landroid/content/Context;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lorg/telegram/ui/Components/GroupCallPip$4;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 351
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    .line 352
    iget-object p2, p1, Lorg/telegram/ui/Components/GroupCallPip$4;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object p3, p2, Lorg/telegram/ui/Components/GroupCallPip;->windowRemoveTooltipView:Landroid/widget/FrameLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/GroupCallPip;->location:[I

    invoke-virtual {p3, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 353
    iget-object p2, p1, Lorg/telegram/ui/Components/GroupCallPip$4;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object p3, p2, Lorg/telegram/ui/Components/GroupCallPip;->location:[I

    const/4 p4, 0x0

    aget p4, p3, p4

    iput p4, p2, Lorg/telegram/ui/Components/GroupCallPip;->windowLeft:I

    const/4 p4, 0x1

    .line 354
    aget p3, p3, p4

    const/high16 p4, 0x41c80000    # 25.0f

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    sub-int/2addr p3, p4

    iput p3, p2, Lorg/telegram/ui/Components/GroupCallPip;->windowTop:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 359
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/Components/GroupCallPip$4;->this$0:Lorg/telegram/ui/Components/GroupCallPip;

    iget-object v0, v0, Lorg/telegram/ui/Components/GroupCallPip;->windowRemoveTooltipOverlayView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
