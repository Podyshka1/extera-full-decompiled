.class Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;->openModelSelect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

.field final synthetic val$services:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;->this$1:Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView;

    iput-object p3, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;->val$services:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/exteragram/messenger/ai/ui/ResponseAlert$HeaderView$2;->val$services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/high16 p2, 0x43a80000    # 336.0f

    .line 750
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 749
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onMeasure(II)V

    return-void

    .line 753
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->onMeasure(II)V

    return-void
.end method
