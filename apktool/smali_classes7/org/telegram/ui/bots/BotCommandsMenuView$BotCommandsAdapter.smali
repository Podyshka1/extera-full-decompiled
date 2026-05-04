.class public Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/bots/BotCommandsMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BotCommandsAdapter"
.end annotation


# instance fields
.field newResult:Ljava/util/ArrayList;

.field newResultHelp:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 254
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 277
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    .line 278
    iget-object v0, p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;->command:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;->commandStr:Ljava/lang/String;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 270
    new-instance p2, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandView;-><init>(Landroid/content/Context;)V

    .line 271
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setBotInfo(Landroidx/collection/LongSparseArray;)V
    .locals 8

    .line 289
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 291
    :goto_0
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 292
    invoke-virtual {p1, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;

    move v3, v0

    .line 293
    :goto_1
    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 294
    iget-object v4, v2, Lorg/telegram/tgnet/tl/TL_bots$BotInfo;->commands:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;

    if-eqz v4, :cond_0

    .line 295
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 296
    iget-object v5, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResult:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->command:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v5, p0, Lorg/telegram/ui/bots/BotCommandsMenuView$BotCommandsAdapter;->newResultHelp:Ljava/util/ArrayList;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_botCommand;->description:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
