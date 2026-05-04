.class Lorg/telegram/ui/GroupCreateActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 727
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetsearchField(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-eqz p1, :cond_1

    .line 728
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetadapter(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->-$$Nest$fgetsearching(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 729
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputsearching(Lorg/telegram/ui/GroupCreateActivity;Z)V

    .line 730
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fputsearchWas(Lorg/telegram/ui/GroupCreateActivity;Z)V

    .line 731
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetadapter(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->setSearching(Z)V

    .line 732
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 733
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 735
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetadapter(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetsearchField(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/FragmentSearchField;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Components/FragmentSearchField;->editText:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->searchDialogs(Ljava/lang/String;)V

    .line 736
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    return-void

    .line 738
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$5;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/GroupCreateActivity;->-$$Nest$mcloseSearch(Lorg/telegram/ui/GroupCreateActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
