.class Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AudioPlayerAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private listViewIsVisible:Z

.field private searchResult:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;


# direct methods
.method public static synthetic $r8$lambda$8iIJsfr6oxSiLGX5QX3n-YwIkaA(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$search$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUmdHrrcdaAOX5z7AInOmI4VqJQ(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$notifyDataSetChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$KHmH0AcE3o-zKXd9ZmOLmMk5gjA(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$notifyDataSetChanged$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VBc2oUX0wg5M_77EV9_EWFP2Kes(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Lorg/telegram/ui/Cells/AudioPlayerCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/AudioPlayerCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dMi8f9MSOEmYv0zCpetRc6q4Dm4(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$processSearch$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eL9Fz-hKTBxOrDov6DHOL1S_RK4(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$updateSearchResults$8(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l4f3mTvRwRopYK3ewwjxIOLVLbM(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$processSearch$6(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mk-oTzQ0tK9-c1SZV-kknqfe1HI(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$onBindViewHolder$4(Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydS_3fxXJmhtavxKJTn9-hLm_mA(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->lambda$notifyDataSetChanged$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/AudioPlayerAlert;Landroid/content/Context;)V
    .locals 0

    .line 2327
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2324
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2328
    iput-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2353
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3200(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2360
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3100(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$notifyDataSetChanged$2()V
    .locals 2

    .line 2363
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$3(Lorg/telegram/ui/Cells/AudioPlayerCell;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2436
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_0

    .line 2437
    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetitemTouchHelper(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->startDrag(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$4(Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;Landroid/view/View;)V
    .locals 0

    .line 2445
    iget-object p3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p3, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mshowOptions(Lorg/telegram/ui/Components/AudioPlayerAlert;Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method private synthetic lambda$processSearch$6(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12

    .line 2476
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2477
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2478
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    .line 2481
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2482
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    move v4, v3

    goto :goto_0

    :cond_3
    move v4, v2

    :goto_0
    add-int/2addr v4, v3

    .line 2485
    new-array v5, v4, [Ljava/lang/String;

    .line 2486
    aput-object v0, v5, v2

    if-eqz v1, :cond_4

    .line 2488
    aput-object v1, v5, v3

    .line 2491
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 2493
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 2494
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_d

    .line 2495
    aget-object v7, v5, v6

    .line 2496
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 2497
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_7

    .line 2500
    :cond_5
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 2501
    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2502
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2506
    :cond_6
    iget v8, v3, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v8, :cond_7

    .line 2507
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    .line 2509
    :cond_7
    iget-object v8, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_3
    move v9, v2

    .line 2512
    :goto_4
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_a

    .line 2513
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2514
    instance-of v11, v10, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v11, :cond_9

    .line 2515
    iget-object v8, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 2516
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_5

    :cond_8
    move v8, v2

    :goto_5
    if-nez v8, :cond_b

    .line 2518
    iget-object v9, v10, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 2519
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    goto :goto_6

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    move v8, v2

    :cond_b
    :goto_6
    if-eqz v8, :cond_c

    .line 2525
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_d
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 2531
    :cond_e
    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processSearch$7(Ljava/lang/String;)V
    .locals 3

    .line 2474
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2475
    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, p1, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$search$5(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2466
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2467
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$8(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3

    .line 2538
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2541
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fputsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;Z)V

    .line 2542
    iput-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2543
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    .line 2544
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlayoutManager(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPosition(I)V

    .line 2545
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetemptySubtitleTextView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/TextView;

    move-result-object p1

    sget v2, Lorg/telegram/messenger/R$string;->NoAudioFoundPlayerInfo:I

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "NoAudioFoundPlayerInfo"

    invoke-static {p2, v2, v1}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    .line 2473
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .line 2537
    new-instance v0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 2380
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 2383
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 2450
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 6

    .line 2345
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 2346
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->listViewIsVisible:Z

    if-eq v0, v3, :cond_3

    .line 2347
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->listViewIsVisible:Z

    const-wide/16 v3, 0x1a4

    if-eqz v0, :cond_2

    .line 2349
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2350
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 2351
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v5, 0x0

    .line 2352
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;)V

    .line 2353
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2354
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 2355
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2356
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 2358
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    .line 2359
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v5, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;)V

    .line 2360
    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2361
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    .line 2362
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v3, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;)V

    .line 2363
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2364
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2367
    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 2368
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2600(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2369
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const/high16 v3, 0x436c0000    # 236.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 2371
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2700(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2372
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2374
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplayerLayout(Lorg/telegram/ui/Components/AudioPlayerAlert;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_player_background:I

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2800(Lorg/telegram/ui/Components/AudioPlayerAlert;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2375
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$mupdateEmptyView(Lorg/telegram/ui/Components/AudioPlayerAlert;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 2413
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetpadWithItem(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 2415
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-void

    :cond_0
    add-int/lit8 p2, p2, -0x1

    .line 2420
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/AudioPlayerCell;

    .line 2424
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsearchWas(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 2425
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    add-int/2addr p2, v2

    .line 2426
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    :goto_0
    move v1, v2

    :cond_2
    move v4, v1

    move-object v1, p1

    goto :goto_2

    .line 2427
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetsavedMusicList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/messenger/MessagesController$SavedMusicList;

    move-result-object p1

    if-eqz p1, :cond_4

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->playOrderReversed:Z

    if-eqz p1, :cond_5

    .line 2428
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    add-int/2addr p2, v2

    .line 2429
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_2

    goto :goto_0

    .line 2431
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    .line 2432
    iget-object v3, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_2

    goto :goto_0

    .line 2434
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    .line 2435
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, v0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Lorg/telegram/ui/Cells/AudioPlayerCell;)V

    move-object v5, p1

    goto :goto_3

    :cond_6
    move-object v5, p2

    .line 2444
    :goto_3
    sget p1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$3000(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2445
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result v2

    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$misMyList(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetnoforwards(Lorg/telegram/ui/Components/AudioPlayerAlert;)Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    if-gtz p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, v0, v1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Lorg/telegram/ui/Cells/AudioPlayerCell;Lorg/telegram/messenger/MessageObject;)V

    :cond_8
    :goto_4
    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Cells/AudioPlayerCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;ZLandroid/view/View$OnClickListener;ZLandroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 2395
    new-instance p1, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Landroid/content/Context;)V

    .line 2404
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 2406
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/AudioPlayerCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->currentPlaylistIsGlobalSearch()Z

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/AudioPlayerAlert;->access$2900(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/AudioPlayerCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 2407
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public search(Ljava/lang/String;)V
    .locals 4

    .line 2457
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 2458
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2459
    iput-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchRunnable:Ljava/lang/Runnable;

    :cond_0
    if-nez p1, :cond_1

    .line 2462
    iget-object p1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2463
    invoke-virtual {p0}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->notifyDataSetChanged()V

    return-void

    .line 2465
    :cond_1
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setup()V
    .locals 3

    .line 2333
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetplaylist(Lorg/telegram/ui/Components/AudioPlayerAlert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->listViewIsVisible:Z

    if-eqz v2, :cond_1

    .line 2335
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void

    .line 2338
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lorg/telegram/ui/Components/AudioPlayerAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/AudioPlayerAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/AudioPlayerAlert;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/AudioPlayerAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    return-void
.end method
