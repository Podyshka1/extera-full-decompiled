.class Lorg/telegram/ui/ChatActivity$50;
.super Lorg/telegram/ui/Components/HashtagHistoryView;
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
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 8941
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/HashtagHistoryView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    return-void
.end method


# virtual methods
.method protected onClick(Ljava/lang/String;)V
    .locals 1

    .line 8944
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ChatActivity;->openHashtagSearch(Ljava/lang/String;)V

    return-void
.end method

.method protected onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 8949
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/HashtagHistoryView;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 8950
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 8951
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$50;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->contentView:Lorg/telegram/ui/ChatActivity$ChatActivityFragmentView;

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_0
    return-void
.end method
