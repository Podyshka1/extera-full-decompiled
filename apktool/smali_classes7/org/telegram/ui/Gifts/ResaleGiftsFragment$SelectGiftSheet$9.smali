.class Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;
.super Lorg/telegram/ui/Components/UniversalAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->createAdapter(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 2139
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lorg/telegram/ui/Components/UniversalAdapter;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;IILorg/telegram/messenger/Utilities$Callback2;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    if-nez p2, :cond_0

    .line 2144
    new-instance v0, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->access$400(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v7

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2145
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    :cond_0
    const/16 v0, 0x2a

    if-ne p2, v0, :cond_1

    .line 2147
    new-instance v1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet$9;->this$0:Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;->access$500(Lorg/telegram/ui/Gifts/ResaleGiftsFragment$SelectGiftSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v9

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct/range {v1 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIIZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2148
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 2150
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/UniversalAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method
