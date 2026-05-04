.class Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)V
    .locals 0

    .line 7806
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    .line 7809
    new-array v2, v1, [Z

    .line 7810
    new-instance v3, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v4, v4, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    .line 7812
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 7813
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/high16 v5, 0x41a80000    # 21.0f

    .line 7814
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 7816
    new-instance v5, Landroid/widget/ImageView;

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7817
    sget v6, Lorg/telegram/messenger/R$drawable;->smiles_info:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, -0x2

    const/4 v9, -0x2

    const/16 v10, 0x31

    const/4 v11, 0x0

    const/16 v12, 0xf

    .line 7818
    invoke-static/range {v8 .. v14}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7820
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v6, v6, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7821
    sget v6, Lorg/telegram/messenger/R$string;->EmojiSuggestions:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v6, 0x41700000    # 15.0f

    .line 7822
    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7823
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlue2:I

    invoke-static {v8, v9}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7824
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    const/4 v9, 0x3

    const/4 v10, 0x5

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 7825
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->bold()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/16 v15, 0x18

    .line 7826
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7828
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7829
    sget v8, Lorg/telegram/messenger/R$string;->EmojiSuggestionsInfo:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7830
    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7831
    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v8, v11}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7832
    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_1

    move v8, v10

    goto :goto_1

    :cond_1
    move v8, v9

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x33

    const/4 v14, 0x0

    const/16 v15, 0xb

    .line 7833
    invoke-static/range {v11 .. v17}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v4, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7835
    new-instance v5, Landroid/widget/TextView;

    iget-object v8, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v8, v8, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 7836
    sget v8, Lorg/telegram/messenger/R$string;->EmojiSuggestionsUrl:I

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchAlias(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->-$$Nest$fgetlastSearchAlias(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    :cond_2
    iget-object v11, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v11, v11, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-static {v11}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$fgetlastSearchKeyboardLanguage(Lorg/telegram/ui/Components/EmojiView;)[Ljava/lang/String;

    move-result-object v11

    :goto_2
    new-array v12, v1, [Ljava/lang/Object;

    aput-object v11, v12, v7

    const-string v7, "EmojiSuggestionsUrl"

    invoke-static {v7, v8, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7837
    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7838
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;->this$1:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->this$0:Lorg/telegram/ui/Components/EmojiView;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {v1, v6}, Lorg/telegram/ui/Components/EmojiView;->-$$Nest$mgetThemedColor(Lorg/telegram/ui/Components/EmojiView;I)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7839
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v1, :cond_3

    move v9, v10

    :cond_3
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x33

    const/4 v13, 0x0

    const/16 v14, 0x12

    .line 7840
    invoke-static/range {v10 .. v16}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7841
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;

    invoke-direct {v1, v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2$1;-><init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$2;[ZLorg/telegram/ui/ActionBar/BottomSheet$Builder;)V

    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7879
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCustomView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    .line 7880
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void
.end method
