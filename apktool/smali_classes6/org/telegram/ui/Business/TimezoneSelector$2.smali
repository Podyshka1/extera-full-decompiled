.class Lorg/telegram/ui/Business/TimezoneSelector$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Business/TimezoneSelector;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Business/TimezoneSelector;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Business/TimezoneSelector;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fputsearching(Lorg/telegram/ui/Business/TimezoneSelector;Z)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fputquery(Lorg/telegram/ui/Business/TimezoneSelector;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fputsearching(Lorg/telegram/ui/Business/TimezoneSelector;Z)V

    .line 68
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {v0}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fputquery(Lorg/telegram/ui/Business/TimezoneSelector;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {p1}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Components/UniversalRecyclerView;->adapter:Lorg/telegram/ui/Components/UniversalAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/UniversalAdapter;->update(Z)V

    .line 84
    iget-object p1, p0, Lorg/telegram/ui/Business/TimezoneSelector$2;->this$0:Lorg/telegram/ui/Business/TimezoneSelector;

    invoke-static {p1}, Lorg/telegram/ui/Business/TimezoneSelector;->-$$Nest$fgetlistView(Lorg/telegram/ui/Business/TimezoneSelector;)Lorg/telegram/ui/Components/UniversalRecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
