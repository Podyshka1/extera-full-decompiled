.class Lorg/telegram/ui/PopupNotificationActivity$2;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PopupNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PopupNotificationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PopupNotificationActivity;Landroid/content/Context;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 2

    .line 300
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/4 p2, 0x0

    .line 301
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 302
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 303
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 304
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p4

    iget-object p5, p1, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p5}, Lorg/telegram/ui/PopupNotificationActivity;->-$$Nest$fgetchatActivityEnterView(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getTop()I

    move-result p5

    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr p5, v0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p1, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {v1}, Lorg/telegram/ui/PopupNotificationActivity;->-$$Nest$fgetchatActivityEnterView(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 287
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 288
    iget-object p1, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p1}, Lorg/telegram/ui/PopupNotificationActivity;->-$$Nest$fgetchatActivityEnterView(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 289
    iget-object p2, p0, Lorg/telegram/ui/PopupNotificationActivity$2;->this$0:Lorg/telegram/ui/PopupNotificationActivity;

    invoke-static {p2}, Lorg/telegram/ui/PopupNotificationActivity;->-$$Nest$fgetchatActivityEnterView(Lorg/telegram/ui/PopupNotificationActivity;)Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    .line 290
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 291
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    .line 293
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
