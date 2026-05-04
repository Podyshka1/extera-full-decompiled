.class Lorg/telegram/ui/PollCreateActivity$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PollCreateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PollCreateActivity;


# direct methods
.method public static synthetic $r8$lambda$dN-eJEm63DShYxRjXrpacmFzg-4(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 2037
    check-cast p1, Lorg/telegram/ui/Components/EditTextBoldCursor;

    const/16 v0, 0x43

    if-ne p2, v0, :cond_0

    .line 2038
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-nez p1, :cond_0

    .line 2039
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/PollEditTextCell;->callOnDelete()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$yKPkJ8UNwtQGOLndgh2Wqe3bi1M(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/PollCreateActivity;Landroid/content/Context;)V
    .locals 0

    .line 1526
    iput-object p1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 1527
    iput-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0(Lorg/telegram/ui/Cells/PollEditTextCell;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p2, 0x5

    if-ne p3, p2, :cond_3

    .line 2012
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    .line 2014
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 p4, -0x1

    if-eq p2, p4, :cond_2

    .line 2016
    iget-object p4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p4

    sub-int p4, p2, p4

    .line 2017
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2018
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$maddNewField(Lorg/telegram/ui/PollCreateActivity;)V

    goto :goto_0

    .line 2020
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int/2addr v0, p3

    if-ne p4, v0, :cond_1

    .line 2021
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 2023
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2024
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p2, p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    if-eqz p2, :cond_2

    .line 2025
    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 2026
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1532
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetrowCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2054
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_9

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsettingsHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 2056
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionSectionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 2058
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerSectionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsolutionInfoRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 2060
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetaddAnswerRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 2062
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 2064
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsolutionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_5

    const/4 p1, 0x7

    return p1

    .line 2066
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowAddingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x5

    return p1

    :cond_7
    :goto_0
    const/4 p1, 0x6

    return p1

    :cond_8
    :goto_1
    const/4 p1, 0x2

    return p1

    :cond_9
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 1676
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 1677
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowAddingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1680
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v3

    add-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    .line 1681
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int/2addr p1, v0

    .line 1682
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetoldAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-lt p1, v0, :cond_1

    return v1

    :cond_1
    return v2

    .line 1684
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetaddAnswerRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1

    .line 1678
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 1537
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v2, 0x6

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p2, 0x3

    if-eq v0, p2, :cond_0

    goto/16 :goto_6

    .line 1576
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCell;

    .line 1577
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/Cells/TextCell;->setColors(II)V

    .line 1578
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$drawable;->poll_add_circle:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 1579
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->poll_add_plus:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1580
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_switchTrackChecked:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1581
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_checkboxCheck:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1582
    new-instance v1, Lorg/telegram/ui/Components/CombinedDrawable;

    invoke-direct {v1, p2, v0}, Lorg/telegram/ui/Components/CombinedDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1583
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$string;->TodoNewTask:I

    goto :goto_0

    :cond_1
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOption:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1, v5}, Lorg/telegram/ui/Cells/TextCell;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Z)V

    return-void

    .line 1554
    :cond_2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .line 1555
    invoke-virtual {p1, v5}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1556
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v2, Lorg/telegram/messenger/R$drawable;->greydivider_bottom:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGrayShadow:I

    invoke-static {v0, v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getThemedDrawableByKey(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1557
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsolutionInfoRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 1558
    sget p2, Lorg/telegram/messenger/R$string;->AddAnExplanationInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1559
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsettingsSectionRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_5

    .line 1560
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p2

    if-eqz p2, :cond_4

    const/16 p2, 0xc

    .line 1561
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setFixedSize(I)V

    .line 1562
    invoke-virtual {p1, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1564
    :cond_4
    sget p2, Lorg/telegram/messenger/R$string;->QuizInfo:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1566
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    if-gtz p2, :cond_7

    .line 1567
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget p2, Lorg/telegram/messenger/R$string;->TodoAddTaskInfoMax:I

    goto :goto_1

    :cond_6
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfoMax:I

    :goto_1
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1568
    :cond_7
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1569
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int/2addr p2, v0

    const-string v0, "TodoNewTaskInfo"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->formatPluralStringComma(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1571
    :cond_8
    sget p2, Lorg/telegram/messenger/R$string;->AddAnOptionInfo:I

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmaxAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    sub-int/2addr v0, v2

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Option"

    invoke-static {v3, v0, v2}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "AddAnOptionInfo"

    invoke-static {v0, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1587
    :cond_9
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 1588
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(Z)V

    .line 1589
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextCheckCell;->getCheckBox()Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v2

    if-nez v2, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_a
    const v2, 0x3f19999a    # 0.6f

    :goto_2
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/Switch;->setAlpha(F)V

    .line 1590
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowAddingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 1591
    sget p2, Lorg/telegram/messenger/R$string;->TodoAllowAddingTasks:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1592
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    return-void

    .line 1593
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowMarkingRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_c

    .line 1594
    sget p2, Lorg/telegram/messenger/R$string;->TodoAllowMarkingDone:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetallowMarking(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1595
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    return-void

    .line 1596
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanonymousRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_f

    .line 1597
    sget p2, Lorg/telegram/messenger/R$string;->PollAnonymous:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanonymousPoll(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    if-eq v2, v3, :cond_e

    :cond_d
    move v5, v1

    :cond_e
    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1598
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    return-void

    .line 1599
    :cond_f
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmultipleRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_11

    .line 1600
    sget p2, Lorg/telegram/messenger/R$string;->PollMultiple:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetmultipleChoise(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    if-eq v2, v3, :cond_10

    move v5, v1

    :cond_10
    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1601
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    return-void

    .line 1602
    :cond_11
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1603
    sget p2, Lorg/telegram/messenger/R$string;->PollQuiz:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizPoll(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    invoke-virtual {p1, p2, v0, v5}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/CharSequence;ZZ)V

    .line 1604
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p2

    if-nez p2, :cond_12

    goto :goto_3

    :cond_12
    move v1, v5

    :goto_3
    invoke-virtual {p1, v1, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setEnabled(ZLjava/util/ArrayList;)V

    return-void

    .line 1539
    :cond_13
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/HeaderCell;

    .line 1540
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_16

    .line 1541
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p2

    if-eqz p2, :cond_15

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetediting(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object p2

    if-eqz p2, :cond_14

    sget p2, Lorg/telegram/messenger/R$string;->TodoEditTitle:I

    goto :goto_4

    :cond_14
    sget p2, Lorg/telegram/messenger/R$string;->TodoTitle:I

    goto :goto_4

    :cond_15
    sget p2, Lorg/telegram/messenger/R$string;->PollQuestion:I

    :goto_4
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1542
    :cond_16
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_19

    .line 1543
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquizOnly(Lorg/telegram/ui/PollCreateActivity;)I

    move-result p2

    if-ne p2, v1, :cond_17

    .line 1544
    sget p2, Lorg/telegram/messenger/R$string;->QuizAnswers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1546
    :cond_17
    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result p2

    if-eqz p2, :cond_18

    sget p2, Lorg/telegram/messenger/R$string;->TodoItemsTitle:I

    goto :goto_5

    :cond_18
    sget p2, Lorg/telegram/messenger/R$string;->AnswerOptions:I

    :goto_5
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 1548
    :cond_19
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsettingsHeaderRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne p2, v0, :cond_1a

    .line 1549
    sget p2, Lorg/telegram/messenger/R$string;->Settings:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/HeaderCell;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 10

    if-eqz p2, :cond_6

    const/4 p1, 0x1

    if-eq p2, p1, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x7

    if-eq p2, v0, :cond_0

    .line 1863
    new-instance v1, Lorg/telegram/ui/PollCreateActivity$ListAdapter$5;

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetisPremium(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    iget-object p2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    new-instance v6, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PollCreateActivity;)V

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$5;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    move-object v3, v2

    .line 1962
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1963
    new-instance p2, Lorg/telegram/ui/PollCreateActivity$ListAdapter$6;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$6;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v1, p2}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    .line 2007
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->setShowNextButton(Z)V

    .line 2008
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 2009
    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result p2

    or-int/lit8 p2, p2, 0x5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2010
    new-instance p2, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2036
    new-instance p2, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {p2, v1}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto/16 :goto_1

    :cond_0
    move-object v3, p0

    .line 1797
    new-instance v2, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;

    iget-object v4, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetisPremium(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$3;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    .line 1819
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1820
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1821
    new-instance p1, Lorg/telegram/ui/PollCreateActivity$ListAdapter$4;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$4;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    :goto_0
    move-object v1, v2

    goto/16 :goto_1

    :cond_1
    move-object v3, p0

    .line 1793
    new-instance v1, Lorg/telegram/ui/Cells/TextCheckCell;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 1794
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    .line 1706
    new-instance v2, Lorg/telegram/ui/PollCreateActivity$ListAdapter$1;

    iget-object v4, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetisPremium(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$1;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Landroid/content/Context;ZILandroid/view/View$OnClickListener;)V

    .line 1749
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/PollEditTextCell;->createErrorTextView()V

    .line 1750
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1751
    new-instance p1, Lorg/telegram/ui/PollCreateActivity$ListAdapter$2;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/PollCreateActivity$ListAdapter$2;-><init>(Lorg/telegram/ui/PollCreateActivity$ListAdapter;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->addTextWatcher(Landroid/text/TextWatcher;)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    .line 1702
    new-instance v1, Lorg/telegram/ui/Cells/TextCell;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TextCell;-><init>(Landroid/content/Context;)V

    .line 1703
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_4
    move-object v3, p0

    .line 1699
    new-instance v1, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    move-object v3, p0

    .line 1696
    new-instance v1, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object p1, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    move-object v3, p0

    .line 1692
    new-instance v4, Lorg/telegram/ui/Cells/HeaderCell;

    iget-object v5, v3, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->mContext:Landroid/content/Context;

    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueHeader:I

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/16 v7, 0x15

    invoke-direct/range {v4 .. v9}, Lorg/telegram/ui/Cells/HeaderCell;-><init>(Landroid/content/Context;IIIZ)V

    .line 1693
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v1, v4

    .line 2048
    :goto_1
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2049
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 12

    const/4 v0, 0x1

    .line 1615
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1612
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x4

    const v4, 0x3f19999a    # 0.6f

    .line 1613
    const-string v5, ""

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ne v2, v3, :cond_3

    .line 1614
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1615
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1616
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionString(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetquestionString(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lorg/telegram/messenger/R$string;->TodoTitlePlaceholder:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$string;->QuestionHint:I

    :goto_0
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1, v8}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1617
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1618
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1619
    iget-object v1, v2, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1620
    iget-object v0, v2, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    move v4, v6

    :cond_2
    invoke-static {v1, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1621
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$msetTextLeft(Lorg/telegram/ui/PollCreateActivity;Landroid/view/View;I)V

    return-void

    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_d

    .line 1623
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v2

    .line 1624
    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1625
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1626
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v1

    sub-int v1, v2, v1

    .line 1627
    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetonlyAdding(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v5}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetoldAnswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v5

    if-lt v1, v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v8

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v0

    .line 1628
    :goto_2
    iget-object v9, v3, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    invoke-virtual {v9, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 1629
    iget-object v9, v3, Lorg/telegram/ui/Cells/PollEditTextCell;->textView:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v10, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {v10, v11}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v10

    if-eqz v5, :cond_6

    move v4, v6

    :cond_6
    invoke-static {v10, v4}, Lorg/telegram/ui/ActionBar/Theme;->multAlpha(IF)I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/telegram/ui/Components/EditTextEffects;->setTextColor(I)V

    .line 1630
    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswers(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v1, v4, v1

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgettodo(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, Lorg/telegram/messenger/R$string;->TodoTaskPlaceholder:I

    goto :goto_3

    :cond_7
    sget v4, Lorg/telegram/messenger/R$string;->OptionHint:I

    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4, v0}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1631
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1632
    iget-object v0, v3, Lorg/telegram/ui/Cells/PollEditTextCell;->deleteImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    if-eqz v5, :cond_8

    move v1, v8

    goto :goto_4

    :cond_8
    const/16 v1, 0x8

    .line 1633
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1635
    :cond_9
    iget-object v0, v3, Lorg/telegram/ui/Cells/PollEditTextCell;->moveImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    const v6, 0x3ee66666    # 0.45f

    .line 1636
    :goto_5
    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1638
    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetfirstRequestField(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetrequestFieldFocusAtPosition(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 1639
    invoke-virtual {v3}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    .line 1640
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1641
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    .line 1642
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0, v8}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fputfirstRequestField(Lorg/telegram/ui/PollCreateActivity;Z)V

    .line 1643
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fputrequestFieldFocusAtPosition(Lorg/telegram/ui/PollCreateActivity;I)V

    .line 1645
    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1, v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$msetTextLeft(Lorg/telegram/ui/PollCreateActivity;Landroid/view/View;I)V

    return-void

    :cond_d
    const/4 v0, 0x7

    if-ne v2, v0, :cond_f

    .line 1647
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1648
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1649
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsolutionString(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsolutionString(Lorg/telegram/ui/PollCreateActivity;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_e
    sget v1, Lorg/telegram/messenger/R$string;->AddAnExplanation:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v8}, Lorg/telegram/ui/Cells/PollEditTextCell;->setTextAndHint(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 1650
    invoke-virtual {v0, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$msetTextLeft(Lorg/telegram/ui/PollCreateActivity;Landroid/view/View;I)V

    :cond_f
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 1657
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 1658
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/PollEditTextCell;

    .line 1659
    invoke-virtual {p1}, Lorg/telegram/ui/Cells/PollEditTextCell;->getTextView()Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    .line 1660
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1661
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetisPremium(Lorg/telegram/ui/PollCreateActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1662
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1663
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetsuggestEmojiPanel(Lorg/telegram/ui/PollCreateActivity;)Lorg/telegram/ui/Components/SuggestEmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SuggestEmojiView;->forceClose()V

    .line 1665
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$mhideEmojiPopup(Lorg/telegram/ui/PollCreateActivity;Z)V

    .line 1667
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fputcurrentCell(Lorg/telegram/ui/PollCreateActivity;Lorg/telegram/ui/Cells/PollEditTextCell;)V

    .line 1668
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 1669
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public swapElements(II)V
    .locals 5

    .line 2074
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v0

    sub-int v0, p1, v0

    .line 2075
    iget-object v1, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v1}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerStartRow(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v1

    sub-int v1, p2, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 2076
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersCount(Lorg/telegram/ui/PollCreateActivity;)I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 2079
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswers(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, v0

    .line 2080
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswers(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswers(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 2081
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswers(Lorg/telegram/ui/PollCreateActivity;)[Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v2, v3, v1

    .line 2082
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerIds(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2083
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerIds(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v2

    aget v2, v2, v0

    .line 2084
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerIds(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerIds(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v4

    aget v4, v4, v1

    aput v4, v3, v0

    .line 2085
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswerIds(Lorg/telegram/ui/PollCreateActivity;)[I

    move-result-object v3

    aput v2, v3, v1

    .line 2087
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v2}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v2

    aget-boolean v2, v2, v0

    .line 2088
    iget-object v3, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v3}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v4}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    aput-boolean v4, v3, v0

    .line 2089
    iget-object v0, p0, Lorg/telegram/ui/PollCreateActivity$ListAdapter;->this$0:Lorg/telegram/ui/PollCreateActivity;

    invoke-static {v0}, Lorg/telegram/ui/PollCreateActivity;->-$$Nest$fgetanswersChecks(Lorg/telegram/ui/PollCreateActivity;)[Z

    move-result-object v0

    aput-boolean v2, v0, v1

    .line 2090
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_2
    :goto_0
    return-void
.end method
