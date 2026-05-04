.class Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedLinksAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;)V
    .locals 0

    .line 7775
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 7776
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 4

    .line 7802
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_0

    return v2

    .line 7805
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 7806
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v1, v3, v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    return v0

    :cond_2
    return v2
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 2

    .line 7894
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_0

    const/4 p1, 0x5

    return p1

    .line 7897
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x4

    return p1

    :cond_2
    const/4 p1, 0x6

    return p1
.end method

.method public getLetter(I)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPositionForScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;F[I)V
    .locals 0

    const/4 p1, 0x0

    .line 7914
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 7915
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 5

    .line 7794
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez v0, :cond_0

    return v2

    .line 7797
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v3

    aget-object v1, v3, v1

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->endReached:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2

    :cond_1
    move v2, v4

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 7814
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {p2, v0, v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 7818
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p2

    .line 7819
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7820
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 7821
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7822
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 7823
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 7824
    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;II)Z
    .locals 2

    .line 7786
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    const/4 v0, 0x3

    aget-object p1, p1, v0

    iget-object p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v0

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 7860
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    .line 7861
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7862
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    aget-object v2, v2, v1

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 7863
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_8

    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 7875
    :cond_1
    iget-object v2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v2, :cond_9

    if-ltz p2, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_2

    goto/16 :goto_3

    .line 7878
    :cond_2
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 7879
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    .line 7880
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p2

    aget-object p2, p2, v1

    iget-object p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v4

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object p1

    aget-object p1, p1, v1

    iget-boolean p1, p1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->loading:Z

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v4

    :goto_1
    invoke-virtual {p3, v2, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 7881
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean p2, p1, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz p2, :cond_7

    .line 7882
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long p2, v0, v5

    if-nez p2, :cond_5

    move p2, v3

    goto :goto_2

    :cond_5
    move p2, v4

    :goto_2
    aget-object p1, p1, p2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_6

    move v3, v4

    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p3, v3, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    return-void

    .line 7884
    :cond_7
    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p1

    xor-int/2addr p1, v4

    invoke-virtual {p3, v3, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    return-void

    .line 7865
    :cond_8
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 7866
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p3, p2, Lorg/telegram/ui/Cells/GraySectionCell;

    if-eqz p3, :cond_9

    .line 7867
    check-cast p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    .line 7847
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-direct {p2, v0, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v0, 0x1

    .line 7848
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 7849
    invoke-virtual {p2, v2}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    .line 7850
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    goto :goto_0

    .line 7842
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v1

    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v3

    invoke-static {p2, v0, v1, v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->createEmptyStubView(Landroid/content/Context;IJLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Landroid/view/View;

    move-result-object p2

    .line 7843
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7844
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1

    .line 7838
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p2, v0, v2, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7839
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_0

    .line 7834
    :cond_2
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$SharedLinksAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-direct {p2, v0, v2, v1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 7854
    :goto_0
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, p1, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7855
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
