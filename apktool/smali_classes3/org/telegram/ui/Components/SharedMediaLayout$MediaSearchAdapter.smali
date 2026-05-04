.class public Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSearchAdapter"
.end annotation


# instance fields
.field private currentType:I

.field protected globalSearch:Ljava/util/ArrayList;

.field private lastReqId:I

.field private mContext:Landroid/content/Context;

.field private reqId:I

.field private searchResult:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field private searchesInProgress:I

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;


# direct methods
.method public static synthetic $r8$lambda$0We15Y120cB8gSLTv8R6d0ad-2w(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CaLPcbF0S4QYGA3xopg6PBDJ6WE(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$queryServerSearch$0(ILjava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZbC77wJ1UWmMyYNXltc7hnCESJw(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$queryServerSearch$1(IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lOxDFCh2oTnbvUlgbsvtvk2nytU(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$search$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uHHXJDlo_Q9esUeG9C7QJubTBAs(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetsearchResult(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;I)V
    .locals 0

    .line 8575
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 8567
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 8569
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 8570
    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 8576
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    .line 8577
    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    return-void
.end method

.method private synthetic lambda$queryServerSearch$0(ILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 7

    .line 8634
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    if-eqz v0, :cond_6

    .line 8635
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_5

    .line 8636
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p1

    .line 8637
    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    .line 8638
    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 8639
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p2

    .line 8640
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    .line 8641
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_1
    move v2, v1

    .line 8644
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 8645
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v3, v4, :cond_3

    .line 8646
    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-nez v3, :cond_2

    if-nez p2, :cond_2

    .line 8647
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    sget v4, Lorg/telegram/messenger/R$string;->NoResultFoundFor:I

    new-array v5, v0, [Ljava/lang/Object;

    aput-object p3, v5, v1

    const-string v6, "NoResultFoundFor"

    invoke-static {v6, v4, v5}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8648
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 8649
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 8651
    iget-object v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$manimateItemsEnter(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8655
    :cond_4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8658
    :cond_5
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    :cond_6
    return-void
.end method

.method private synthetic lambda$queryServerSearch$1(IILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 8622
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p5, :cond_1

    .line 8624
    check-cast p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;

    const/4 p5, 0x0

    move v1, p5

    .line 8625
    :goto_0
    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8626
    iget-object v2, p4, Lorg/telegram/tgnet/TLRPC$messages_Messages;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_0

    .line 8627
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    if-le v3, p1, :cond_0

    goto :goto_1

    .line 8630
    :cond_0
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, p5, v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8633
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2, v0, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;ILjava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$search$2(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 11

    .line 8706
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 8707
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 8708
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void

    .line 8711
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8712
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    add-int/2addr v3, v2

    .line 8715
    new-array v4, v3, [Ljava/lang/String;

    .line 8716
    aput-object p1, v4, v1

    if-eqz v0, :cond_4

    .line 8718
    aput-object v0, v4, v2

    .line 8721
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 8723
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_e

    .line 8724
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    move v5, v1

    :goto_2
    if-ge v5, v3, :cond_d

    .line 8726
    aget-object v6, v4, v5

    .line 8727
    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocumentName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 8728
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_7

    .line 8731
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 8732
    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 8733
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 8736
    :cond_6
    iget v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_c

    .line 8738
    iget v7, v2, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v7, :cond_7

    .line 8739
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    goto :goto_3

    .line 8741
    :cond_7
    iget-object v7, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getMedia(Lorg/telegram/tgnet/TLRPC$Message;)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v7

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    :goto_3
    move v8, v1

    .line 8744
    :goto_4
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 8745
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 8746
    instance-of v10, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v10, :cond_9

    .line 8747
    iget-object v7, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->performer:Ljava/lang/String;

    if-eqz v7, :cond_8

    .line 8748
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_5

    :cond_8
    move v7, v1

    :goto_5
    if-nez v7, :cond_b

    .line 8750
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->title:Ljava/lang/String;

    if-eqz v8, :cond_b

    .line 8751
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    move v7, v1

    :cond_b
    :goto_6
    if-eqz v7, :cond_c

    .line 8757
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 8764
    :cond_e
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$search$3(Ljava/lang/String;)V
    .locals 11

    .line 8696
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-eq v1, v8, :cond_0

    if-ne v1, v7, :cond_2

    .line 8697
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v1, v1, v2

    iget-object v1, v1, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 8698
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v9

    invoke-virtual {v9}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v9

    cmp-long v5, v5, v9

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getSavedDialogId()J

    move-result-wide v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    goto :goto_1

    :cond_1
    const-wide/16 v5, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJJ)V

    goto :goto_2

    .line 8699
    :cond_2
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 8700
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v3

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgettopicId(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->queryServerSearch(Ljava/lang/String;IJJ)V

    .line 8702
    :cond_3
    :goto_2
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-eq v1, v8, :cond_5

    if-ne v1, v7, :cond_4

    goto :goto_3

    :cond_4
    return-void

    .line 8703
    :cond_5
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsharedMediaData(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;

    move-result-object v2

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/telegram/ui/Components/SharedMediaLayout$SharedMediaData;->messages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8704
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    add-int/2addr v2, v8

    iput v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 8705
    sget-object v2, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;)V
    .locals 7

    .line 8773
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetsearching(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8776
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 8777
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v0

    .line 8778
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 8779
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result p1

    .line 8780
    iget v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    .line 8781
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$mswitchToCurrentSelectedMode(Lorg/telegram/ui/Components/SharedMediaLayout;Z)V

    :cond_2
    move v2, v3

    .line 8784
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_5

    .line 8785
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    iget v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v4, v5, :cond_4

    .line 8786
    iget v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-nez v4, :cond_3

    if-nez p1, :cond_3

    .line 8787
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->title:Lorg/telegram/ui/Components/spoilers/SpoilersTextView;

    const-string v5, "NoResult"

    sget v6, Lorg/telegram/messenger/R$string;->NoResult:I

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8788
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/ui/Components/StickerEmptyView;->button:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 8789
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 8791
    iget-object v4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetlistView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$manimateItemsEnter(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8796
    :cond_5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;)V
    .locals 1

    .line 8772
    new-instance v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/messenger/MessageObject;
    .locals 2

    .line 8828
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 8829
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1

    .line 8831
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 8808
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8809
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/16 p1, 0x18

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 8803
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 8867
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 8868
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 8869
    :cond_0
    check-cast p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 8870
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 8871
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setDocument(Lorg/telegram/messenger/MessageObject;Z)V

    .line 8872
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_4

    .line 8873
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_3

    move v1, v2

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    .line 8875
    :cond_4
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setChecked(ZZ)V

    return-void

    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    .line 8878
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-nez v0, :cond_6

    goto/16 :goto_6

    .line 8879
    :cond_6
    check-cast p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 8880
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 8881
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_7

    move p2, v2

    goto :goto_2

    :cond_7
    move p2, v1

    :goto_2
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setLink(Lorg/telegram/messenger/MessageObject;Z)V

    .line 8882
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_a

    .line 8883
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_9

    move v1, v2

    :cond_9
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    return-void

    .line 8885
    :cond_a
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setChecked(ZZ)V

    return-void

    :cond_b
    const/4 v3, 0x4

    if-ne v0, v3, :cond_11

    .line 8888
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-nez v0, :cond_c

    goto :goto_6

    .line 8889
    :cond_c
    check-cast p1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 8890
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItem(I)Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    .line 8891
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-eq p2, v3, :cond_d

    move p2, v2

    goto :goto_4

    :cond_d
    move p2, v1

    :goto_4
    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setMessageObject(Lorg/telegram/messenger/MessageObject;Z)V

    .line 8892
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-boolean v3, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->isActionModeShowed:Z

    if-eqz v3, :cond_10

    .line 8893
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetselectedFiles(Lorg/telegram/ui/Components/SharedMediaLayout;)[Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    iget-object v5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/SharedMediaLayout;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_5

    :cond_e
    move v3, v2

    :goto_5
    aget-object p2, p2, v3

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_f

    move v1, v2

    :cond_f
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    return-void

    .line 8895
    :cond_10
    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetscrolling(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, v1, p2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setChecked(ZZ)V

    :cond_11
    :goto_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 8838
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 8839
    new-instance p1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/SharedDocumentCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 8841
    new-instance p1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p0, p2, v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    goto :goto_0

    .line 8858
    :cond_1
    new-instance p1, Lorg/telegram/ui/Cells/SharedLinkCell;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetresourcesProvider(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Cells/SharedLinkCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 8859
    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p2, Lorg/telegram/ui/Components/SharedMediaLayout;->sharedLinkCellDelegate:Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/SharedLinkCell;->setDelegate(Lorg/telegram/ui/Cells/SharedLinkCell$SharedLinkCellDelegate;)V

    .line 8861
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8862
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public queryServerSearch(Ljava/lang/String;IJJ)V
    .locals 7

    .line 8581
    invoke-static {p3, p4}, Lorg/telegram/messenger/DialogObject;->isEncryptedDialog(J)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 8584
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 8585
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    invoke-virtual {v0, v3, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8586
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 8587
    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    :cond_1
    if-eqz p1, :cond_9

    .line 8589
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 8595
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_search;-><init>()V

    const/16 v1, 0x32

    .line 8596
    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->limit:I

    .line 8597
    iput p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->offset_id:I

    .line 8598
    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    const/4 v3, 0x4

    if-ne v1, v2, :cond_3

    .line 8599
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 8601
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterUrl;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    .line 8603
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMessagesFilterMusic;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->filter:Lorg/telegram/tgnet/TLRPC$MessagesFilter;

    .line 8605
    :cond_5
    :goto_0
    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->q:Ljava/lang/String;

    .line 8606
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    const-wide/16 v4, 0x0

    cmp-long v1, p5, v4

    const/4 v4, 0x2

    if-eqz v1, :cond_7

    .line 8608
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long p3, p3, v5

    if-nez p3, :cond_6

    .line 8609
    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/2addr p3, v3

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    .line 8610
    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p5, p6}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p3

    iput-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->saved_peer_id:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 8612
    :cond_6
    iget p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    or-int/2addr p3, v4

    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->flags:I

    long-to-int p3, p5

    .line 8613
    iput p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->top_msg_id:I

    .line 8616
    :cond_7
    :goto_1
    iget-object p3, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_search;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez p3, :cond_8

    :goto_2
    return-void

    .line 8619
    :cond_8
    iget p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    add-int/2addr p3, v2

    iput p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    .line 8620
    iget p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    add-int/2addr p4, v2

    iput p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    .line 8621
    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance p5, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {p5, p0, p2, p3, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;IILjava/lang/String;)V

    invoke-virtual {p4, v0, p5, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 8662
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    iget-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p3}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/telegram/tgnet/ConnectionsManager;->bindRequestToGuid(II)V

    return-void

    .line 8590
    :cond_9
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8591
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->lastReqId:I

    .line 8592
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public search(Ljava/lang/String;Z)V
    .locals 4

    .line 8666
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 8667
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 8668
    iput-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 8671
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8672
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8673
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8674
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8677
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 8678
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    if-eqz p1, :cond_4

    .line 8679
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8680
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->globalSearch:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 8681
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    if-eqz p1, :cond_4

    .line 8682
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetprofileActivity(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    invoke-virtual {p1, p2, v2}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 8683
    iput v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->reqId:I

    .line 8684
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchesInProgress:I

    :cond_4
    return-void

    .line 8688
    :cond_5
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_7

    .line 8689
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    iget v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->selectedType:I

    iget v3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->currentType:I

    if-ne v0, v3, :cond_6

    .line 8690
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->-$$Nest$fgetmediaPages(Lorg/telegram/ui/Components/SharedMediaLayout;)[Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->-$$Nest$fgetemptyView(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8695
    :cond_7
    new-instance p2, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$MediaSearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p2, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
