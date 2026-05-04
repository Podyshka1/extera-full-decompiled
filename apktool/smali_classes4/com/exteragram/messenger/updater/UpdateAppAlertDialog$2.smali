.class Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;-><init>(Landroid/app/Activity;Lorg/telegram/tgnet/TLRPC$TL_help_appUpdate;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;Landroid/content/Context;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 145
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    move-object p1, p0

    .line 146
    iget-object p2, p1, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    invoke-static {p2}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->-$$Nest$mupdateLayout(Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 124
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    iget-object v3, v1, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/NestedScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 126
    iget-object p1, v2, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    iget-object p1, p1, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->linearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 127
    div-int/lit8 p2, v0, 0x5

    mul-int/lit8 p2, p2, 0x2

    sub-int v1, v0, p2

    sub-int v1, p1, v1

    const/high16 v3, 0x42b40000    # 90.0f

    .line 129
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    if-lt v1, v5, :cond_0

    div-int/lit8 v1, v0, 0x2

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v1, v3

    if-ge p1, v1, :cond_1

    :cond_0
    sub-int p2, v0, p1

    :cond_1
    const/4 p1, 0x0

    if-gez p2, :cond_2

    move p2, p1

    .line 135
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    if-eq v1, p2, :cond_3

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, v2, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->ignoreLayout:Z

    .line 137
    invoke-virtual {p0, p1, p2, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    iput-boolean p1, v2, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->ignoreLayout:Z

    :cond_3
    const/high16 p1, 0x40000000    # 2.0f

    .line 140
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, v4, p1}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 160
    iget-object p1, p0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->this$0:Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;

    invoke-static {p1}, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;->-$$Nest$mupdateLayout(Lcom/exteragram/messenger/updater/UpdateAppAlertDialog;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/exteragram/messenger/updater/UpdateAppAlertDialog$2;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method
