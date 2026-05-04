.class Lorg/telegram/ui/Components/ShareAlert$14;
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

    .line 1203
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$14;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1206
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    const/high16 p3, 0x40800000    # 4.0f

    if-eqz p2, :cond_2

    .line 1208
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 1209
    rem-int/lit8 p2, p2, 0x4

    const/4 p4, 0x0

    if-nez p2, :cond_0

    move v0, p4

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 1210
    :cond_1
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    :goto_1
    iput p4, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 1212
    :cond_2
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 1213
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
