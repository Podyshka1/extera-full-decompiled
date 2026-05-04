.class Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatUsersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchAdapter"
.end annotation


# instance fields
.field private contactsStartRow:I

.field private globalStartRow:I

.field private groupStartRow:I

.field private mContext:Landroid/content/Context;

.field private searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

.field private searchInProgress:Z

.field private searchResult:Ljava/util/ArrayList;

.field private searchResultMap:Landroidx/collection/LongSparseArray;

.field private searchResultNames:Ljava/util/ArrayList;

.field private searchRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lorg/telegram/ui/ChatUsersActivity;

.field private totalCount:I


# direct methods
.method public static synthetic $r8$lambda$euMukv-kHz9qYTe2kmRRRwA9NSo(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$updateSearchResults$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gtJls5e-j_uov0BzJI_77Ou0yhQ(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hXuFp5I56qwqm3rJD0y9slLlGDM(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$processSearch$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lCqxkv8W8KqcDKGHQiIuN1gsIsc(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tx4t7uAWUVHHjLHCt3Jqg6UYjEI(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$searchUsers$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wktNpBAxQ77u-DzQ3SxTyXZno88(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/telegram/ui/ChatUsersActivity;Landroid/content/Context;)V
    .locals 0

    .line 2735
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 2723
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2724
    new-instance p1, Landroidx/collection/LongSparseArray;

    invoke-direct {p1}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    .line 2725
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 2728
    iput p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    .line 2736
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    .line 2737
    new-instance p1, Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;-><init>(Z)V

    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    .line 2738
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->setDelegate(Lorg/telegram/ui/Adapters/SearchAdapterHelper$SearchAdapterHelperDelegate;)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .locals 2

    .line 2739
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2740
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v0

    .line 2741
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2742
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 2743
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1, v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mshowItemsAnimated(Lorg/telegram/ui/ChatUsersActivity;I)V

    .line 2745
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    if-nez v0, :cond_1

    .line 2746
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2747
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$5(Lorg/telegram/ui/Cells/ManageChatUserCell;Z)Z
    .locals 2

    .line 3030
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 3031
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v1, :cond_0

    .line 3032
    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 3033
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {v1, v0, p2, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mcreateMenuForParticipant(Lorg/telegram/ui/ChatUsersActivity;Lorg/telegram/tgnet/TLObject;ZLandroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic lambda$processSearch$2(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2783
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 2784
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 2785
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroidx/collection/LongSparseArray;

    invoke-direct {v2}, Landroidx/collection/LongSparseArray;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    .line 2788
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2789
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v4, 0x0

    :cond_2
    const/4 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    move v8, v7

    goto :goto_0

    :cond_3
    move v8, v5

    :goto_0
    add-int/2addr v8, v7

    .line 2792
    new-array v9, v8, [Ljava/lang/String;

    .line 2793
    aput-object v3, v9, v5

    if-eqz v4, :cond_4

    .line 2795
    aput-object v4, v9, v7

    .line 2797
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2798
    new-instance v4, Landroidx/collection/LongSparseArray;

    invoke-direct {v4}, Landroidx/collection/LongSparseArray;-><init>()V

    .line 2799
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2800
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2802
    const-string v13, "@"

    const-string v14, " "

    if-eqz v1, :cond_11

    .line 2803
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v15

    :goto_1
    if-ge v5, v15, :cond_11

    .line 2805
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lorg/telegram/tgnet/TLObject;

    .line 2806
    instance-of v6, v12, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v6, :cond_5

    .line 2807
    move-object v6, v12

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    move/from16 v17, v8

    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    goto :goto_2

    :cond_5
    move/from16 v17, v8

    .line 2808
    instance-of v6, v12, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v6, :cond_6

    .line 2809
    move-object v6, v12

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v6}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    :goto_2
    const-wide/16 v18, 0x0

    cmp-long v6, v7, v18

    if-lez v6, :cond_8

    .line 2818
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 2819
    iget-wide v7, v6, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v18

    cmp-long v1, v7, v18

    if-nez v1, :cond_7

    :cond_6
    move-object/from16 v22, v4

    move/from16 v18, v5

    move-object/from16 v19, v9

    move/from16 v20, v15

    move/from16 v9, v17

    goto/16 :goto_9

    .line 2822
    :cond_7
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2823
    invoke-static {v6}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v7

    .line 2824
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2825
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    :goto_3
    move/from16 v18, v5

    goto :goto_4

    .line 2827
    :cond_8
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    neg-long v6, v7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2828
    iget-object v6, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 2829
    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v7

    .line 2830
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    move-object v1, v6

    const/4 v6, 0x0

    goto :goto_3

    .line 2834
    :goto_4
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2835
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/4 v5, 0x0

    :cond_9
    move-object/from16 v19, v9

    move/from16 v20, v15

    move/from16 v9, v17

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_5
    if-ge v15, v9, :cond_10

    move/from16 v21, v15

    .line 2840
    aget-object v15, v19, v21

    .line 2841
    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v22, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v5, :cond_a

    invoke-virtual {v5, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_6

    :cond_a
    if-eqz v7, :cond_b

    .line 2843
    invoke-virtual {v7, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    goto :goto_7

    :cond_b
    move/from16 v4, v17

    goto :goto_7

    :cond_c
    move-object/from16 v22, v4

    :cond_d
    :goto_6
    const/4 v4, 0x1

    :goto_7
    if-eqz v4, :cond_f

    const/4 v1, 0x1

    if-ne v4, v1, :cond_e

    .line 2849
    invoke-static {v8, v6, v15}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2851
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2853
    :goto_8
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    move-object/from16 v17, v1

    add-int/lit8 v15, v21, 0x1

    move/from16 v17, v4

    move-object/from16 v4, v22

    goto/16 :goto_5

    :cond_10
    move-object/from16 v22, v4

    :goto_9
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v1, p2

    move v8, v9

    move-object/from16 v9, v19

    move/from16 v15, v20

    move-object/from16 v4, v22

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v22, v4

    move-object/from16 v19, v9

    move v9, v8

    if-eqz v2, :cond_1a

    const/4 v1, 0x0

    .line 2861
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1a

    .line 2862
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 2863
    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    iget-wide v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    .line 2864
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v7, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_13

    :cond_12
    move-object/from16 v12, v22

    const/4 v15, 0x1

    goto/16 :goto_f

    .line 2868
    :cond_13
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2869
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2870
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    const/4 v6, 0x0

    :cond_14
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v9, :cond_12

    .line 2876
    aget-object v12, v19, v8

    .line 2877
    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_16

    if-eqz v6, :cond_15

    invoke-virtual {v6, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_16

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_15

    goto :goto_c

    .line 2879
    :cond_15
    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_17

    invoke-virtual {v15, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_17

    const/4 v7, 0x2

    goto :goto_d

    :cond_16
    :goto_c
    const/4 v7, 0x1

    :cond_17
    :goto_d
    if-eqz v7, :cond_19

    const/4 v15, 0x1

    if-ne v7, v15, :cond_18

    .line 2885
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6, v12}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_e

    .line 2887
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-static {v5, v12, v6}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2889
    :goto_e
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2890
    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    move-object/from16 v7, v22

    invoke-virtual {v7, v5, v6, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v12, v7

    goto :goto_f

    :cond_19
    move-object/from16 v12, v22

    const/4 v15, 0x1

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :goto_f
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v22, v12

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v12, v22

    .line 2896
    invoke-direct {v0, v3, v12, v10, v11}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$processSearch$3(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2775
    iput-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2777
    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetinfo(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 2778
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v3}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatUsersActivity;->access$100(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/messenger/ContactsController;

    move-result-object v5

    iget-object v5, v5, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    const/4 v5, 0x0

    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 2899
    :cond_2
    iput-boolean v5, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    move-object/from16 v7, p1

    :goto_2
    move-object/from16 v20, v1

    goto :goto_4

    .line 2782
    :cond_3
    :goto_3
    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda4;

    move-object/from16 v7, p1

    invoke-direct {v1, v0, v7, v2, v3}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_2

    .line 2901
    :goto_4
    iget-object v6, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v1

    if-eqz v1, :cond_4

    move v8, v4

    goto :goto_5

    :cond_4
    move v8, v5

    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v1

    :goto_6
    move-wide v13, v1

    goto :goto_7

    :cond_5
    const-wide/16 v1, 0x0

    goto :goto_6

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v16

    const/16 v17, 0x1

    const-wide/16 v18, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v6 .. v20}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZIIJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$searchUsers$1(Ljava/lang/String;)V
    .locals 0

    .line 2769
    invoke-direct {p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateSearchResults$4(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    .line 2907
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2910
    iput-boolean v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    .line 2911
    iput-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    .line 2912
    iput-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    .line 2913
    iput-object p3, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    .line 2914
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 2915
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2916
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object p1

    .line 2917
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2918
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2920
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p1

    .line 2921
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2922
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p2

    if-le p2, p1, :cond_2

    .line 2923
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2, p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$mshowItemsAnimated(Lorg/telegram/ui/ChatUsersActivity;I)V

    .line 2925
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->isSearchInProgress()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2926
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItemCount()I

    move-result p1

    if-nez p1, :cond_3

    .line 2927
    iget-object p1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private processSearch(Ljava/lang/String;)V
    .locals 1

    .line 2774
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSearchResults(Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .line 2906
    new-instance v0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/util/ArrayList;Landroidx/collection/LongSparseArray;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLObject;
    .locals 2

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_1

    if-nez p1, :cond_0

    return-object v1

    .line 2992
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_1
    sub-int/2addr p1, v0

    .line 2998
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    if-nez p1, :cond_3

    return-object v1

    .line 3004
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_4
    sub-int/2addr p1, v0

    .line 3010
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_7

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_7

    if-nez p1, :cond_6

    return-object v1

    .line 3016
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLObject;

    return-object p1

    :cond_7
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .line 2940
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 3188
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

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

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 2935
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 5

    const/4 v0, 0x0

    .line 2945
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    .line 2946
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2948
    iput v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    .line 2949
    iget v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_0

    .line 2951
    :cond_0
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    .line 2953
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2955
    iget v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    add-int/2addr v1, v3

    add-int/2addr v4, v1

    .line 2956
    iput v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_1

    .line 2958
    :cond_1
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    .line 2960
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 2962
    iget v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    add-int/2addr v1, v3

    add-int/2addr v2, v1

    .line 2963
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->totalCount:I

    goto :goto_2

    .line 2965
    :cond_2
    iput v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    .line 2967
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsearching(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsearchListViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 2968
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setAnimateEmptyView(ZI)V

    .line 2969
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetsearchListViewAdapter(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2970
    iget-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v1}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setFastScrollVisible(Z)V

    .line 2971
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetlistView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 2973
    :cond_3
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 3051
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_0

    goto/16 :goto_8

    .line 3156
    :cond_0
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/GraySectionCell;

    .line 3157
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->groupStartRow:I

    if-ne p2, v0, :cond_4

    .line 3158
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result p2

    if-nez p2, :cond_1

    .line 3159
    sget p2, Lorg/telegram/messenger/R$string;->ChannelBlockedUsers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3160
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 3161
    sget p2, Lorg/telegram/messenger/R$string;->ChannelRestrictedUsers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3163
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetisChannel(Lorg/telegram/ui/ChatUsersActivity;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 3164
    sget p2, Lorg/telegram/messenger/R$string;->ChannelSubscribers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3166
    :cond_3
    sget p2, Lorg/telegram/messenger/R$string;->ChannelMembers:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3169
    :cond_4
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->globalStartRow:I

    if-ne p2, v0, :cond_5

    .line 3170
    sget p2, Lorg/telegram/messenger/R$string;->GlobalSearch:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3171
    :cond_5
    iget v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->contactsStartRow:I

    if-ne p2, v0, :cond_15

    .line 3172
    sget p2, Lorg/telegram/messenger/R$string;->Contacts:I

    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/GraySectionCell;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 3053
    :cond_6
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->getItem(I)Lorg/telegram/tgnet/TLObject;

    move-result-object v0

    .line 3056
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$User;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    :cond_7
    :goto_0
    move-object v2, v3

    goto :goto_1

    .line 3058
    :cond_8
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    if-eqz v2, :cond_a

    .line 3059
    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_9

    .line 3061
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3063
    invoke-static {v0}, Lorg/telegram/messenger/UserObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3067
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3069
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 3073
    :cond_a
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    if-eqz v2, :cond_15

    .line 3074
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    goto :goto_0

    .line 3082
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGroupSearch()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_c

    add-int/2addr v4, v1

    if-le v4, p2, :cond_b

    .line 3087
    iget-object v4, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundChannel()Ljava/lang/String;

    move-result-object v4

    move v6, v1

    goto :goto_2

    :cond_b
    sub-int/2addr p2, v4

    :cond_c
    move-object v4, v3

    move v6, v5

    .line 3093
    :goto_2
    const-string v7, "@"

    if-nez v6, :cond_f

    .line 3094
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_f

    add-int/2addr v8, v1

    if-le v8, p2, :cond_e

    .line 3098
    iget-object v6, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    if-eqz v6, :cond_d

    .line 3099
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 3100
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    move-object v8, v6

    move-object v6, v3

    move-object v3, v8

    :cond_d
    move v8, v1

    goto :goto_3

    :cond_e
    sub-int/2addr p2, v8

    :cond_f
    move v8, v6

    move-object v6, v3

    :goto_3
    const/16 v9, 0x21

    const/4 v10, -0x1

    if-nez v8, :cond_13

    if-eqz v2, :cond_13

    .line 3111
    iget-object v8, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getGlobalSearch()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_13

    add-int/2addr v8, v1

    if-le v8, p2, :cond_13

    .line 3114
    iget-object v3, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->getLastFoundUsername()Ljava/lang/String;

    move-result-object v3

    .line 3115
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 3116
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3120
    :cond_10
    :try_start_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3121
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3122
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3123
    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_12

    .line 3124
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v7, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_11
    add-int/lit8 v7, v7, 0x1

    .line 3130
    :goto_4
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v11}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v11

    invoke-direct {v8, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/2addr v3, v7

    invoke-virtual {v1, v8, v7, v3, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_6

    :cond_12
    :goto_5
    move-object v3, v1

    goto :goto_7

    .line 3135
    :goto_6
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v3, v2

    :cond_13
    :goto_7
    if-eqz v4, :cond_14

    if-eqz v2, :cond_14

    .line 3142
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3143
    invoke-static {v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v10, :cond_14

    .line 3145
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v7, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText4:I

    invoke-static {v7}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v7

    invoke-direct {v2, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v6, v2, v1, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3149
    :cond_14
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    .line 3150
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3151
    invoke-virtual {p1, v0, v6, v3, v5}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setData(Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_15
    :goto_8
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    if-eqz p2, :cond_0

    .line 3042
    new-instance p1, Lorg/telegram/ui/Cells/GraySectionCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->access$000(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-direct {p1, p2, v1, v0}, Lorg/telegram/ui/Cells/GraySectionCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 p2, 0x0

    .line 3043
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 3028
    :cond_0
    new-instance p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetselectType(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p1, p2, v1, v1, v0}, Lorg/telegram/ui/Cells/ManageChatUserCell;-><init>(Landroid/content/Context;IIZ)V

    .line 3029
    new-instance p2, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Cells/ManageChatUserCell;->setDelegate(Lorg/telegram/ui/Cells/ManageChatUserCell$ManageChatUserCellDelegate;)V

    .line 3046
    :goto_1
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3181
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    if-eqz v0, :cond_0

    .line 3182
    check-cast p1, Lorg/telegram/ui/Cells/ManageChatUserCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/ManageChatUserCell;->recycle()V

    :cond_0
    return-void
.end method

.method public removeUserId(J)V
    .locals 1

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->removeUserId(J)V

    .line 2978
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2980
    iget-object p2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2982
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public searchUsers(Ljava/lang/String;)V
    .locals 14

    .line 2755
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2756
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 2757
    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    .line 2759
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2760
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultMap:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    .line 2761
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchResultNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2762
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->mergeResults(Ljava/util/ArrayList;)V

    .line 2763
    iget-object v2, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchAdapterHelper:Lorg/telegram/ui/Adapters/SearchAdapterHelper;

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetcurrentChat(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetchatId(Lorg/telegram/ui/ChatUsersActivity;)J

    move-result-wide v5

    :goto_1
    move-wide v9, v5

    goto :goto_2

    :cond_2
    const-wide/16 v5, 0x0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgettype(Lorg/telegram/ui/ChatUsersActivity;)I

    move-result v12

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v13}, Lorg/telegram/ui/Adapters/SearchAdapterHelper;->queryServerSearch(Ljava/lang/String;ZZZZZJZII)V

    .line 2764
    invoke-virtual {p0}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->notifyDataSetChanged()V

    .line 2766
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2767
    iput-boolean v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchInProgress:Z

    .line 2768
    iget-object v0, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->this$0:Lorg/telegram/ui/ChatUsersActivity;

    invoke-static {v0}, Lorg/telegram/ui/ChatUsersActivity;->-$$Nest$fgetemptyView(Lorg/telegram/ui/ChatUsersActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    .line 2769
    sget-object v0, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/telegram/ui/ChatUsersActivity$SearchAdapter;->searchRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method
