.class Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/utils/TextWatcherImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetlistAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$ListAdapter;->notifyDataSetChanged()V

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$1;->this$0:Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout;)Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$SearchAdapter;->search(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public synthetic beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/utils/TextWatcherImpl$-CC;->$default$beforeTextChanged(Lorg/telegram/messenger/utils/TextWatcherImpl;Ljava/lang/CharSequence;III)V

    return-void
.end method

.method public synthetic onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/utils/TextWatcherImpl$-CC;->$default$onTextChanged(Lorg/telegram/messenger/utils/TextWatcherImpl;Ljava/lang/CharSequence;III)V

    return-void
.end method
