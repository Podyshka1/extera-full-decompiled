.class Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatEditTypeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsernamesListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;,
        Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_HEADER:I

.field private final VIEW_TYPE_HELP:I

.field private final VIEW_TYPE_USERNAME:I

.field private adapter:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

.field private backgroundPaint:Landroid/graphics/Paint;

.field private itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private needReorder:Z

.field final synthetic this$0:Lorg/telegram/ui/ChatEditTypeActivity;


# direct methods
.method public static synthetic $r8$lambda$oQEsyq3f16mseGL6oDuSzZA7-1Y(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method static bridge synthetic -$$Nest$fgetadapter(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->adapter:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputneedReorder(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->needReorder:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msendReorder(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->sendReorder()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatEditTypeActivity;Landroid/content/Context;)V
    .locals 3

    .line 740
    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    .line 741
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 732
    iput v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->VIEW_TYPE_HEADER:I

    const/4 v1, 0x1

    .line 733
    iput v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->VIEW_TYPE_USERNAME:I

    const/4 v2, 0x2

    .line 734
    iput v2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->VIEW_TYPE_HELP:I

    .line 952
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->needReorder:Z

    .line 1098
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->backgroundPaint:Landroid/graphics/Paint;

    .line 743
    new-instance v0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;-><init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;Lorg/telegram/ui/ChatEditTypeActivity-IA;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->adapter:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 744
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 745
    new-instance p2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$1;-><init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;Lorg/telegram/ui/ChatEditTypeActivity;)V

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 817
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    new-instance p2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$TouchHelperCallback;-><init>(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)V

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object p1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 818
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 731
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 731
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 731
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 731
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 731
    iget-object p0, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private sendReorder()V
    .locals 5

    .line 954
    iget-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->needReorder:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->needReorder:Z

    .line 958
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderUsernames;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderUsernames;-><init>()V

    .line 959
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputChannel;-><init>()V

    .line 960
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:J

    .line 961
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputChannel;->access_hash:J

    .line 962
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderUsernames;->channel:Lorg/telegram/tgnet/TLRPC$InputChannel;

    .line 963
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v0

    .line 964
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgeteditableUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 965
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgeteditableUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_1

    .line 966
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgeteditableUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 968
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 969
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v3, :cond_3

    .line 970
    iget-object v3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 972
    :cond_4
    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_channels_reorderUsernames;->order:Ljava/util/ArrayList;

    .line 973
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 976
    invoke-direct {p0}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->updateChat()V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateChat()V
    .locals 3

    .line 980
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 981
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgeteditableUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 982
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->usernames:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 983
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatEditTypeActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1101
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 1106
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1107
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 1111
    :cond_0
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    if-gt v5, v0, :cond_1

    .line 1113
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1114
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, v2, :cond_3

    .line 1119
    iget-object v0, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->backgroundPaint:Landroid/graphics/Paint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    iget-object v4, p0, Lorg/telegram/ui/Components/RecyclerListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v1

    .line 1120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    int-to-float v8, v2

    iget-object v9, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_3
    move-object v4, p1

    .line 1123
    :goto_2
    invoke-super {p0, v4}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    const p2, 0x98967f

    const/high16 v0, -0x80000000

    .line 895
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->onMeasure(II)V

    return-void
.end method

.method public toggleUsername(IZZ)V
    .locals 5

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_b

    .line 839
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto/16 :goto_6

    .line 842
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_username;

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 848
    :cond_1
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, p2, :cond_7

    .line 850
    iput-boolean p2, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz p2, :cond_4

    move p2, v3

    .line 852
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    .line 853
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v1, v1, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v2

    :goto_1
    if-ltz p2, :cond_7

    add-int/lit8 p2, p2, -0x1

    .line 859
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_2
    add-int/lit8 v2, p2, 0x1

    goto :goto_4

    :cond_4
    move v1, v2

    move p2, v3

    .line 863
    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p2, v4, :cond_6

    .line 864
    iget-object v4, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_username;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_username;->active:Z

    if-eqz v4, :cond_5

    move v1, p2

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-ltz v1, :cond_7

    .line 869
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 874
    :cond_7
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge v3, p2, :cond_a

    .line 875
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 876
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_9

    if-eqz p3, :cond_8

    .line 878
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    .line 880
    :cond_8
    instance-of p3, p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    if-eqz p3, :cond_a

    .line 881
    check-cast p2, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;

    iget-object p3, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {p3}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetloadingUsernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object p3

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_username;->username:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->setLoading(Z)V

    .line 882
    invoke-virtual {p2}, Lorg/telegram/ui/ChangeUsernameActivity$UsernameCell;->update()V

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    if-ltz v2, :cond_b

    if-eq p1, v2, :cond_b

    .line 889
    iget-object p2, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->adapter:Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;

    invoke-virtual {p2, p1, v2}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView$Adapter;->moveElement(II)V

    :cond_b
    :goto_6
    return-void
.end method

.method public toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V

    return-void
.end method

.method public toggleUsername(Lorg/telegram/tgnet/TLRPC$TL_username;ZZ)V
    .locals 2

    const/4 v0, 0x0

    .line 826
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 827
    iget-object v1, p0, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->this$0:Lorg/telegram/ui/ChatEditTypeActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatEditTypeActivity;->-$$Nest$fgetusernames(Lorg/telegram/ui/ChatEditTypeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 828
    invoke-virtual {p0, v0, p2, p3}, Lorg/telegram/ui/ChatEditTypeActivity$UsernamesListView;->toggleUsername(IZZ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
