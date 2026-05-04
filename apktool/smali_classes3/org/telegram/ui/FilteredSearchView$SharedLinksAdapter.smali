.class Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/FilteredSearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedLinksAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

.field final synthetic this$0:Lorg/telegram/ui/FilteredSearchView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/FilteredSearchView;Landroid/content/Context;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SectionsAdapter;-><init>()V

    .line 1201
    new-instance p1, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$1;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;)V

    iput-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    .line 1239
    iput-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 3

    .line 1265
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_1

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemViewType(II)I
    .locals 1

    .line 1355
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x2

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

    .line 1371
    aput p1, p3, p1

    const/4 p2, 0x1

    .line 1372
    aput p1, p3, p2

    return-void
.end method

.method public getSectionCount()I
    .locals 3

    .line 1254
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1257
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v0}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1260
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v2, v2, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {v2}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetendReached(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1274
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1275
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_graySection:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const v1, -0xd000001

    and-int/2addr v0, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1278
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    return-object p2

    .line 1281
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1282
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1283
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1284
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 1285
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1286
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
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(IILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 6

    .line 1317
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v0, v0, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1319
    iget-object v1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object v1, v1, Lorg/telegram/ui/FilteredSearchView;->sectionArrays:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1320
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 1330
    :cond_1
    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p3, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 1331
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 1332
    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    .line 1333
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    iget-object p2, p2, Lorg/telegram/ui/FilteredSearchView;->sections:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v3

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->this$0:Lorg/telegram/ui/FilteredSearchView;

    invoke-static {p1}, Lorg/telegram/ui/FilteredSearchView;->-$$Nest$fgetisLoading(Lorg/telegram/ui/FilteredSearchView;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    invoke-virtual {p3, v1, v2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 1334
    invoke-virtual {p3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$2;

    invoke-direct {p2, p0, p3, v1, v4}, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter$2;-><init>(Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;Lorg/telegram/ui/Cells/SharedLinkCell;Lorg/telegram/messenger/MessageObject;Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void

    .line 1322
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 1323
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    int-to-long v0, p1

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->formatSectionDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    .line 1305
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    .line 1306
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 1307
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    goto :goto_0

    .line 1300
    :cond_0
    new-instance p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object v0, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;I)V

    .line 1301
    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    goto :goto_0

    .line 1297
    :cond_1
    new-instance p2, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p1, p0, Lorg/telegram/ui/FilteredSearchView$SharedLinksAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;)V

    .line 1311
    :goto_0
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1312
    new-instance p1, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
