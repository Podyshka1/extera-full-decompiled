.class Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;
.super Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LiteModeSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LiteModeSettingsActivity;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/LiteModeSettingsActivity;Lorg/telegram/ui/LiteModeSettingsActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    if-ltz p1, :cond_1

    .line 414
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p1, p1, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 427
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    if-ltz p2, :cond_8

    .line 375
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_3

    .line 379
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v0}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    .line 380
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 383
    iget-object p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 385
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    .line 386
    invoke-virtual {p1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;->update()V

    return-void

    :cond_2
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_4

    .line 389
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 390
    iget-object p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0xc

    .line 391
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    goto :goto_0

    .line 393
    :cond_3
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 395
    :goto_0
    iget-object p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 396
    iget-object p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    .line 397
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_4
    const/4 v5, 0x3

    if-eq v1, v5, :cond_6

    const/4 v5, 0x4

    if-ne v1, v5, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, 0x5

    if-ne v1, p2, :cond_8

    .line 403
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 404
    iget p2, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->type:I

    if-ne p2, v2, :cond_8

    .line 405
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object p2

    .line 406
    const-string v1, "view_animations"

    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 407
    iget-object v0, v0, Lorg/telegram/ui/LiteModeSettingsActivity$Item;->text:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p2, v4}, Lorg/telegram/ui/Cells/TextCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    return-void

    :cond_6
    :goto_1
    add-int/2addr p2, v2

    .line 399
    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_7

    iget-object v1, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-static {v1}, Lorg/telegram/ui/LiteModeSettingsActivity;->-$$Nest$fgetitems(Lorg/telegram/ui/LiteModeSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/LiteModeSettingsActivity$Item;

    iget p2, p2, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils$Item;->viewType:I

    if-eq p2, v3, :cond_7

    goto :goto_2

    :cond_7
    move v2, v4

    .line 400
    :goto_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    .line 401
    invoke-virtual {p1, v0, v2}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;->set(Lorg/telegram/ui/LiteModeSettingsActivity$Item;Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 6

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_0

    .line 344
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 346
    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$PowerSaverSlider;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 349
    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter$1;

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter$1;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_5

    const/4 p1, 0x4

    if-ne p2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x5

    if-ne p2, p1, :cond_4

    .line 368
    new-instance v0, Lorg/telegram/ui/Cells/TextCell;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;IZZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    move-object p1, v0

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    .line 366
    :cond_5
    :goto_0
    new-instance p1, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;

    iget-object p2, p0, Lorg/telegram/ui/LiteModeSettingsActivity$Adapter;->this$0:Lorg/telegram/ui/LiteModeSettingsActivity;

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/LiteModeSettingsActivity$SwitchCell;-><init>(Lorg/telegram/ui/LiteModeSettingsActivity;Landroid/content/Context;)V

    .line 370
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
