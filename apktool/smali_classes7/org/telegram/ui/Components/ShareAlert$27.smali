.class Lorg/telegram/ui/Components/ShareAlert$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Adapters/DialogsSearchAdapter$OnRecentSearchLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZLjava/lang/Integer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .line 1873
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setRecentSearch(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    move v2, v0

    .line 1877
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1878
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 1879
    iget-object v3, v3, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->canWriteToChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1880
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    .line 1885
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {v2, p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;Ljava/util/ArrayList;)V

    .line 1886
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fputrecentSearchObjectsById(Lorg/telegram/ui/Components/ShareAlert;Landroidx/collection/LongSparseArray;)V

    .line 1887
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 1888
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetrecentSearchObjects(Lorg/telegram/ui/Components/ShareAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;

    .line 1889
    iget-object p2, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_2

    .line 1890
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3700(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_2

    .line 1891
    :cond_2
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 1892
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3800(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    .line 1893
    :cond_3
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz p2, :cond_4

    .line 1894
    iget-object p2, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ShareAlert;->access$3900(Lorg/telegram/ui/Components/ShareAlert;)I

    move-result p2

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p1, p1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$RecentSearchObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1897
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$27;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ShareAlert;->-$$Nest$fgetsearchAdapter(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/ShareAlert$ShareSearchAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
