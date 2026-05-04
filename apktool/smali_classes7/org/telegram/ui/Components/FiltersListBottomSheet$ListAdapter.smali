.class Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/FiltersListBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/FiltersListBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 389
    iput-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessagesController$DialogFilter;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetdialogFilters(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetdialogFilters(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetdialogFilters(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 428
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetdialogFilters(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 430
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogIcon:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 431
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetdialogFilters(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/MessagesController$DialogFilter;

    .line 432
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 434
    iget v0, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->flags:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v3, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 435
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    goto :goto_0

    .line 436
    :cond_0
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1

    .line 437
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_markunread:I

    goto :goto_0

    .line 438
    :cond_1
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    if-ne v1, v2, :cond_2

    .line 439
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_channel:I

    goto :goto_0

    .line 440
    :cond_2
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    if-ne v1, v2, :cond_3

    .line 441
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    goto :goto_0

    .line 442
    :cond_3
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v1, v0

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    if-ne v1, v2, :cond_4

    .line 443
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_contacts:I

    goto :goto_0

    .line 444
    :cond_4
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    and-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    if-ne v0, v1, :cond_5

    .line 445
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_bots:I

    goto :goto_0

    .line 447
    :cond_5
    sget v0, Lorg/telegram/messenger/R$drawable;->msg_folders:I

    .line 449
    :goto_0
    iget-object v1, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->name:Ljava/lang/String;

    .line 450
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 451
    iget-object v2, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->entities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lorg/telegram/messenger/MessageObject;->replaceAnimatedEmoji(Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/graphics/Paint$FontMetricsInt;)Landroid/text/Spannable;

    move-result-object v1

    .line 452
    new-instance v2, Lorg/telegram/ui/Components/FolderDrawable;

    iget-object v4, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p2, Lorg/telegram/messenger/MessagesController$DialogFilter;->color:I

    invoke-direct {v2, v4, v0, v5}, Lorg/telegram/ui/Components/FolderDrawable;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, v1, v3, v2, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Z)V

    .line 453
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getTextView()Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2000(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedEmojiSpan$TextViewEmojis;->setEmojiColor(I)V

    const/4 v0, 0x1

    move v1, v3

    .line 455
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 456
    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->-$$Nest$fgetselectedDialogs(Lorg/telegram/ui/Components/FiltersListBottomSheet;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 457
    iget-object v2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->this$0:Lorg/telegram/ui/Components/FiltersListBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/FiltersListBottomSheet;->access$2100(Lorg/telegram/ui/Components/FiltersListBottomSheet;)I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {p2, v2, v4, v5}, Lorg/telegram/messenger/MessagesController$DialogFilter;->includesDialog(Lorg/telegram/messenger/AccountInstance;J)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 461
    :cond_7
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setChecked(Z)V

    return-void

    .line 463
    :cond_8
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->getImageView()Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 464
    iget-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 465
    iget-object v0, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 466
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 467
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 468
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 469
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextColor(I)V

    .line 470
    sget p2, Lorg/telegram/messenger/R$string;->CreateNewFilter:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 420
    new-instance p1, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/FiltersListBottomSheet$ListAdapter;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetCell;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 421
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 423
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
