.class Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;
.super Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 1038
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;->this$2:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected getUsernameEditable()Ljava/lang/String;
    .locals 1

    .line 1041
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;->this$2:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernameTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1043
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter$1;->this$2:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->this$1:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;

    iget-object v0, v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernameTextView(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
