.class Lorg/telegram/ui/ChatActivity$55;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createTopPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0

    .line 9802
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 9

    .line 9808
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 9810
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$misSideMenued(Lorg/telegram/ui/ChatActivity;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x428e0000    # 71.0f

    .line 9811
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    .line 9812
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 9814
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/high16 v3, 0x41f80000    # 31.0f

    .line 9815
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v3, 0x1

    .line 9817
    iput-boolean v3, p0, Lorg/telegram/ui/ChatActivity$55;->ignoreLayout:Z

    .line 9818
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, 0x42400000    # 48.0f

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 9819
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 9820
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9821
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 9822
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v7, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    add-int v6, v1, v0

    .line 9823
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 9824
    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_1

    .line 9826
    :cond_2
    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    invoke-virtual {v6, v7, v2, v8, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9827
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 9830
    :cond_3
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 9831
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 9832
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 9833
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetreportSpamButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 9834
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v5, 0x41300000    # 11.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-virtual {v0, v5, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    .line 9836
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$55;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetaddToContactsButton(Lorg/telegram/ui/ChatActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-virtual {v0, v4, v2, v5, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 9838
    :goto_2
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 9840
    :cond_5
    iput-boolean v2, p0, Lorg/telegram/ui/ChatActivity$55;->ignoreLayout:Z

    .line 9841
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 9847
    iget-boolean v0, p0, Lorg/telegram/ui/ChatActivity$55;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 9850
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
