.class Lorg/telegram/ui/ChatActivity$38;
.super Lorg/telegram/ui/Components/ChatSearchTabs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V
    .locals 0

    .line 7883
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/ChatSearchTabs;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    return-void
.end method


# virtual methods
.method protected onShownUpdate(Z)V
    .locals 3

    .line 7886
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$5400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ChatSearchTabs;->setBackgroundColor(I)V

    .line 7887
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7888
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgettagSelector(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/ReactionsContainerLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetcontentPanTranslation(Lorg/telegram/ui/ChatActivity;)F

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatSearchTabs;->getCurrentHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    if-eqz p1, :cond_1

    .line 7891
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fputinvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;Z)V

    .line 7892
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$mupdateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    return-void

    .line 7894
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$38;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->-$$Nest$minvalidateChatListViewTopPadding(Lorg/telegram/ui/ChatActivity;)V

    return-void
.end method
