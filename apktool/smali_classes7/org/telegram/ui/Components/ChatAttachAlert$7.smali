.class Lorg/telegram/ui/Components/ChatAttachAlert$7;
.super Lorg/telegram/ui/ActionBar/ActionBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;ZZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2141
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 2

    .line 2144
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 2145
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_4

    .line 2147
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$7500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 2148
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_4

    .line 2149
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 2150
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;->shouldHideBottomButtons()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2152
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    const/high16 v1, 0x42300000    # 44.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2154
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetframeLayout2(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 2155
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->-$$Nest$fgetcurrentAttachLayout(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$AttachAlertLayout;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 2157
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_4

    .line 2158
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$7;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object p1, p1, Lorg/telegram/ui/Components/ChatAttachAlert;->buttonsRecyclerViewWrapper:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    return-void
.end method
