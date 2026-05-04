.class Lorg/telegram/ui/Components/ShareAlert$19;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


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

    .line 1300
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$19;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1303
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const/high16 p3, 0x40800000    # 4.0f

    if-eqz p2, :cond_3

    .line 1305
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p4

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p4, v0, :cond_0

    .line 1306
    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    return-void

    .line 1308
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 1309
    rem-int/lit8 p2, p2, 0x4

    if-nez p2, :cond_1

    move p4, v1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    :goto_0
    iput p4, p1, Landroid/graphics/Rect;->left:I

    const/4 p4, 0x3

    if-ne p2, p4, :cond_2

    goto :goto_1

    .line 1310
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    :goto_1
    iput v1, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 1313
    :cond_3
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1314
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
