.class Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/LanguageSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private search:Z

.field final synthetic this$0:Lorg/telegram/ui/LanguageSelectActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/LanguageSelectActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 571
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 572
    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 573
    iput-boolean p3, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 584
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 610
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    add-int/2addr v1, v0

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method public getItemViewType(I)I
    .locals 5

    .line 795
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, p1, -0x1

    const/4 v2, 0x3

    if-nez p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, p1, -0x2

    if-nez v0, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    add-int/lit8 v0, p1, -0x3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, p1, -0x4

    if-nez v0, :cond_4

    return v2

    .line 845
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v3, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v2}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    if-eq v3, v0, :cond_6

    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v3, v0, :cond_7

    :cond_6
    return v4

    .line 848
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    sub-int/2addr p1, v3

    invoke-static {v0, p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fputlanguagesStartsPosition(Lorg/telegram/ui/LanguageSelectActivity;I)V

    return v1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 578
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

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
    .locals 10

    .line 661
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 772
    :pswitch_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 773
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->updateRTL()V

    .line 774
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetinfoPosition1(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v0

    const/16 v1, 0x10

    if-ne p2, v0, :cond_0

    .line 775
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessagesInfo1:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0xb

    .line 776
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 777
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    return-void

    .line 779
    :cond_0
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setTopPadding(I)V

    .line 780
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setBottomPadding(I)V

    return-void

    .line 748
    :pswitch_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 749
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->updateRTL()V

    return-void

    .line 709
    :pswitch_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 710
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSettingsCell;->updateRTL()V

    .line 744
    sget p2, Lorg/telegram/messenger/R$string;->Preferences:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/CharSequence;Z)V

    return-void

    .line 785
    :pswitch_3
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-nez p2, :cond_2

    .line 786
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->isTranslationsManualEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->isTranslationsAutoEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->TranslateMessages:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget p2, Lorg/telegram/messenger/R$string;->Language:I

    goto :goto_0

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 760
    :pswitch_4
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 761
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->updateRTL()V

    .line 762
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetmanualTranslationPosition(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 763
    sget p2, Lorg/telegram/messenger/R$string;->ShowTranslateButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$mgetContextValue(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 764
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    return-void

    .line 765
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetautoTranslationPosition(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v0

    if-ne p2, v0, :cond_7

    .line 766
    sget p2, Lorg/telegram/messenger/R$string;->ShowTranslateChatButton:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$mgetChatValue(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$mgetContextValue(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$mgetChatValue(Lorg/telegram/ui/LanguageSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    :cond_5
    :goto_2
    invoke-virtual {p1, p2, v0, v3}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 767
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_6

    sget v2, Lorg/telegram/messenger/R$drawable;->permission_locked:I

    :cond_6
    invoke-virtual {p1, v2}, Lorg/telegram/ui/Cells/TextCheckCell;->setCheckBoxIcon(I)V

    :cond_7
    :goto_3
    return-void

    .line 698
    :pswitch_5
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_8

    add-int/lit8 p2, p2, -0x1

    .line 700
    :cond_8
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    if-eq p2, v1, :cond_a

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    goto :goto_4

    .line 704
    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 702
    :cond_a
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v0, Lorg/telegram/messenger/R$drawable;->greydivider:I

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {p2, v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 663
    :pswitch_6
    iget-boolean v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    if-nez v0, :cond_b

    .line 664
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetlanguagesStartsPosition(Lorg/telegram/ui/LanguageSelectActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 666
    :cond_b
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v4, p1

    check-cast v4, Lorg/telegram/ui/Cells/TextRadioCell;

    .line 667
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/TextRadioCell;->updateRTL()V

    .line 670
    iget-boolean p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->search:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    if-ltz p2, :cond_c

    .line 671
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_c

    .line 672
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 674
    :cond_c
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsearchResult(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne p2, p1, :cond_d

    :goto_5
    move p1, v3

    goto/16 :goto_6

    :cond_d
    move p1, v2

    goto/16 :goto_6

    .line 675
    :cond_e
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    if-ltz p2, :cond_f

    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_f

    .line 676
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 677
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne p2, p1, :cond_d

    goto :goto_5

    .line 679
    :cond_f
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    .line 680
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetunofficialLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/2addr p1, v3

    sub-int/2addr p2, p1

    :cond_10
    if-ltz p2, :cond_11

    .line 682
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p2, p1, :cond_11

    .line 683
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;

    .line 685
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    invoke-static {p1}, Lorg/telegram/ui/LanguageSelectActivity;->-$$Nest$fgetsortedLanguages(Lorg/telegram/ui/LanguageSelectActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    if-ne p2, p1, :cond_d

    goto :goto_5

    :goto_6
    if-eqz v0, :cond_13

    .line 688
    invoke-virtual {v0}, Lorg/telegram/messenger/LocaleController$LocaleInfo;->isLocal()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 689
    iget-object p2, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    sget v5, Lorg/telegram/messenger/R$string;->LanguageCustom:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    aput-object v5, v1, v3

    const-string p2, "%1$s (%2$s)"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v8, 0x0

    xor-int/lit8 v9, p1, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/TextRadioCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    goto :goto_7

    .line 691
    :cond_12
    iget-object v5, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->name:Ljava/lang/String;

    iget-object v6, v0, Lorg/telegram/messenger/LocaleController$LocaleInfo;->nameEnglish:Ljava/lang/String;

    const/4 v8, 0x0

    xor-int/lit8 v9, p1, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/ui/Cells/TextRadioCell;->setTextAndValueAndCheck(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 694
    :cond_13
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/LocaleController;->getCurrentLocaleInfo()Lorg/telegram/messenger/LocaleController$LocaleInfo;

    move-result-object p1

    if-ne v0, p1, :cond_14

    move v2, v3

    :cond_14
    invoke-virtual {v4, v2}, Lorg/telegram/ui/Cells/TextRadioCell;->setChecked(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    if-eqz p2, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/4 p1, 0x5

    if-eq p2, p1, :cond_1

    const/4 p1, 0x6

    if-eq p2, p1, :cond_0

    .line 645
    new-instance p1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 640
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 632
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/TextSettingsCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 636
    :cond_2
    new-instance p1, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 627
    :cond_3
    new-instance p1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 623
    :cond_4
    new-instance p1, Lorg/telegram/ui/Cells/TextRadioCell;

    iget-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Cells/TextRadioCell;-><init>(Landroid/content/Context;)V

    .line 649
    :goto_0
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 654
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextRadioCell;

    if-eqz v0, :cond_0

    .line 655
    check-cast p1, Lorg/telegram/ui/Cells/TextRadioCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextRadioCell;->updateRTL()V

    :cond_0
    return-void
.end method
