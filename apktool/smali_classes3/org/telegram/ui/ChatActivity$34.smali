.class Lorg/telegram/ui/ChatActivity$34;
.super Lorg/telegram/ui/Components/RecyclerListView;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 7670
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 7673
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onAttachedToWindow()V

    .line 7674
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7675
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->attach()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 7681
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    .line 7682
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7683
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$34;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->-$$Nest$fgetmessagesSearchAdapter(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Adapters/MessagesSearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MessagesSearchAdapter;->detach()V

    :cond_0
    return-void
.end method
