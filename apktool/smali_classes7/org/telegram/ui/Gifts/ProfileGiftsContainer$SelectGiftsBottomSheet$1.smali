.class Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;JILorg/telegram/messenger/Utilities$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

.field final synthetic val$dialogId:J

.field final synthetic val$other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;


# direct methods
.method public static synthetic $r8$lambda$nFmGZp7M7FqHQ9nuuvfvjE1kELs(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->lambda$onItemClick$0(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nydl49Wtm-GjyK8jkb7t2Lqtvhw(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->lambda$onItemClick$1(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;Lorg/telegram/ui/ActionBar/ActionBarMenuItem;J)V
    .locals 0

    .line 2188
    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iput-wide p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$dialogId:J

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method

.method private synthetic lambda$onItemClick$0(Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 2231
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->Gift2FilterSortByValue:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->Gift2FilterSortByDate:I

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->menu_sort_value:I

    goto :goto_1

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->menu_sort_date:I

    :goto_1
    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setTextAndIcon(Ljava/lang/CharSequence;I)V

    .line 2234
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unlimited()Z

    move-result p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2235
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_limited()Z

    move-result p1

    invoke-virtual {p3, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2236
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_upgradable()Z

    move-result p1

    invoke-virtual {p4, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2237
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_unique()Z

    move-result p1

    invoke-virtual {p5, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    if-eqz p6, :cond_3

    .line 2240
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_displayed()Z

    move-result p1

    invoke-virtual {p7, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    .line 2241
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->isInclude_hidden()Z

    move-result p1

    invoke-virtual {p8, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$onItemClick$1(Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 2

    .line 2248
    iget-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p2, Lorg/telegram/ui/Stars/StarsController$GiftsList;->sort_by_date:Z

    .line 2249
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2250
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stars/StarsController$GiftsList;->invalidate(Z)V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 13

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 2192
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlastMenu(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2193
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlastMenu(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->dismiss()V

    .line 2195
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    iget-object v1, p1, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->access$000(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$other:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    invoke-static {v1, v2, v3}, Lorg/telegram/ui/Components/ItemOptions;->makeOptions(Landroid/view/ViewGroup;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Landroid/view/View;)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fputlastMenu(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;Lorg/telegram/ui/Components/ItemOptions;)V

    .line 2198
    iget-wide v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$dialogId:J

    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->access$100(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v4

    cmp-long p1, v2, v4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v10, v0

    goto :goto_0

    .line 2200
    :cond_1
    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$dialogId:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_2

    move v10, v2

    goto :goto_0

    .line 2203
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->access$200(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-wide v3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->val$dialogId:J

    neg-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    const/4 v3, 0x5

    .line 2204
    invoke-static {p1, v3}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    move v10, p1

    .line 2207
    :goto_0
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->add()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v5

    .line 2208
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2209
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v6

    .line 2210
    sget p1, Lorg/telegram/messenger/R$string;->Gift2FilterUnlimited:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2211
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v7

    .line 2212
    sget p1, Lorg/telegram/messenger/R$string;->Gift2FilterLimited:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v8

    .line 2214
    sget p1, Lorg/telegram/messenger/R$string;->Gift2FilterUpgradable:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2215
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v9

    .line 2216
    sget p1, Lorg/telegram/messenger/R$string;->Gift2FilterUnique:I

    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v9, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_3

    .line 2219
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addGap()Lorg/telegram/ui/Components/ItemOptions;

    .line 2220
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object p1

    .line 2221
    sget v3, Lorg/telegram/messenger/R$string;->Gift2FilterDisplayed:I

    invoke-static {v3}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    .line 2222
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->addChecked()Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v3

    .line 2223
    sget v4, Lorg/telegram/messenger/R$string;->Gift2FilterHidden:I

    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setText(Ljava/lang/CharSequence;)V

    move-object v11, p1

    move-object v12, v3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    move-object v11, p1

    move-object v12, v11

    .line 2229
    :goto_1
    new-instance v3, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1$$ExternalSyntheticLambda0;

    move-object v4, p0

    invoke-direct/range {v3 .. v12}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;ZLorg/telegram/ui/ActionBar/ActionBarMenuSubItem;Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)V

    .line 2244
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    if-eqz v5, :cond_4

    .line 2247
    new-instance p1, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, v3}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;Ljava/lang/Runnable;)V

    invoke-virtual {v5, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2253
    :cond_4
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    invoke-static {v6, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 2254
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v7, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 2255
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    const/4 v0, 0x4

    invoke-static {v8, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 2256
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    const/16 v0, 0x8

    invoke-static {v9, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    if-eqz v10, :cond_5

    .line 2258
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    const/16 v0, 0x100

    invoke-static {v11, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 2259
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->-$$Nest$fgetlist(Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;)Lorg/telegram/ui/Stars/StarsController$GiftsList;

    move-result-object p1

    const/16 v0, 0x200

    invoke-static {v12, p1, v3, v0}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->setGiftFilterOptionsClickListeners(Landroid/view/View;Lorg/telegram/ui/Stars/StarsController$GiftsList;Ljava/lang/Runnable;I)V

    .line 2262
    :cond_5
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ItemOptions;->setOnTopOfScrim()Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2263
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDismissWithButtons(Z)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2264
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/ItemOptions;->setDimAlpha(I)Lorg/telegram/ui/Components/ItemOptions;

    move-result-object p1

    .line 2265
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ItemOptions;->show()Lorg/telegram/ui/Components/ItemOptions;

    return-void

    :cond_6
    move-object v4, p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_7

    .line 2267
    iget-object p1, v4, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet$1;->this$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$SelectGiftsBottomSheet;->dismiss()V

    :cond_7
    return-void
.end method
